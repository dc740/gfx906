"""Route SeedVR2 DiT attention through the gfx906 tiled HIP kernel.

Installs a ``container_function`` on ``optimized_attention`` — the seam
``comfy/ldm/modules/attention.py`` reserves for containerized q/k/v. Eligible
calls (gfx906, fp16/bf16 on CUDA, head_dim<=64 mult-of-8 or ==128, no mask/GQA)
run the tiled kernel, which never materializes the SxS score matrix that the
MATH SDPA backend allocates (dozens of GB for 4K SeedVR2 window runs).
Everything else falls through to the stock callable, so unsupported shapes and
other models keep their original path. The kernel .so loads lazily on the
first eligible call; off gfx906 nothing is installed.

Optionally (SEEDVR2_GFX906_VAE=1) the same kernel also backs the SeedVR2 VAE
mid-block self-attention (single head, head_dim=channels=512, S=h*w per
frame): ``vae_attention()`` is wrapped so that when it would select the stock
``normal_attention`` (slice_attention) path, eligible fp16/bf16 calls run the
kernel instead, which streams K/V tiles and never allocates the S*S score
matrix slice_attention risks on untiled 4K frames.
"""

import logging
import os

import torch

from . import gfx906_attn


logger = logging.getLogger("SeedVR2-LongVideo")
_LOG_SHAPES = os.environ.get("SEEDVR2_GFX906_LOG_SHAPES") == "1"
_seen_shapes = set()

_stock_attention = None  # wrapped optimized_attention, used for fallback
_stock_normal_attention = None  # diffusionmodules.model.normal_attention
_VAE_HOOK = os.environ.get("SEEDVR2_GFX906_VAE") == "1"


def _eligible(qt, kt, vt, heads, mask, kwargs):
    if mask is not None or kwargs.get("enable_gqa"):
        return False
    if qt.dtype not in (torch.float16, torch.bfloat16) or not qt.is_cuda:
        return False
    if qt.ndim != 4 or kt.shape != vt.shape:
        return False
    if qt.shape[0] != kt.shape[0] or qt.shape[1] != kt.shape[1] or \
            qt.shape[3] != kt.shape[3] or qt.shape[1] != heads:
        return False
    d = qt.shape[3]
    return d in (128, 512) or (d <= 64 and d % 8 == 0)


def _container_attn(q, k, v, heads, mask=None, attn_precision=None,
                    skip_reshape=False, skip_output_reshape=False, **kwargs):
    qt, kt, vt = q.peek(), k.peek(), v.peek()
    mod = None
    if skip_reshape and _eligible(qt, kt, vt, heads, mask, kwargs):
        mod = gfx906_attn.load_attention()
    if mod is None:
        return _stock_attention(
            q.take(), k.take(), v.take(), heads, mask=mask,
            attn_precision=attn_precision, skip_reshape=skip_reshape,
            skip_output_reshape=skip_output_reshape, **kwargs)
    if _LOG_SHAPES and tuple(qt.shape) not in _seen_shapes:
        _seen_shapes.add(tuple(qt.shape))
        logger.info("gfx906 attention: %s %s", tuple(qt.shape), qt.dtype)
    qt, kt, vt = q.take(), k.take(), v.take()
    scale = kwargs.get("scale")
    if scale is None:
        scale = qt.shape[-1] ** -0.5  # sdpa default
    out_dtype = qt.dtype
    if out_dtype != torch.float16:
        qt, kt, vt = qt.half(), kt.half(), vt.half()
    out = mod.attn(qt, kt, vt, scale)
    if out_dtype != torch.float16:
        out = out.to(out_dtype)
    if skip_output_reshape:
        return out
    b = out.shape[0]
    return out.transpose(1, 2).reshape(b, -1, heads * out.shape[-1])


def _vae_attn(q, k, v):
    """Drop-in for ``normal_attention`` ([b, c, h, w] -> same shape).

    Eligible calls (CUDA fp16/bf16, c == 512) go through the gfx906 kernel as
    one [b, 1, h*w, c] fp16 attention; anything else uses the stock function.
    """
    mod = None
    if (q.is_cuda and q.dtype in (torch.float16, torch.bfloat16)
            and q.dim() == 4 and q.shape == k.shape == v.shape
            and q.shape[1] == 512):
        mod = gfx906_attn.load_attention()
    if mod is None:
        return _stock_normal_attention(q, k, v)
    b, c, h, w = q.shape
    out_dtype = q.dtype
    qt, kt, vt = q, k, v
    if out_dtype != torch.float16:
        qt, kt, vt = qt.half(), kt.half(), vt.half()
    # [b, c, h, w] -> [b, 1, h*w, c]
    qt = qt.reshape(b, c, h * w).transpose(1, 2).unsqueeze(1)
    kt = kt.reshape(b, c, h * w).transpose(1, 2).unsqueeze(1)
    vt = vt.reshape(b, c, h * w).transpose(1, 2).unsqueeze(1)
    try:
        out = mod.attn(qt, kt, vt, c ** -0.5)
    except Exception:  # noqa: BLE001 - never take down VAE decode
        logger.warning("gfx906 VAE attention failed; using slice attention")
        return _stock_normal_attention(q, k, v)
    return out.squeeze(1).transpose(1, 2).reshape(b, c, h, w)


def _install_vae_hook():
    """Wrap ``vae_attention()`` so its slice path is routed to the kernel."""
    global _stock_normal_attention
    try:
        from comfy.ldm.modules.diffusionmodules import model as _model
    except Exception as exc:  # noqa: BLE001 - comfy not on sys.path
        logger.warning("gfx906 VAE attention hook skipped: %s", exc)
        return
    if _stock_normal_attention is not None:
        return
    _stock_normal_attention = _model.normal_attention
    orig_factory = _model.vae_attention

    def factory():
        fn = orig_factory()
        if fn is not _stock_normal_attention:
            return fn  # xformers/pytorch path selected - leave it alone
        return _vae_attn

    _model.vae_attention = factory
    logger.info("gfx906 tiled attention installed (VAE mid-block, D=512)")


def install():
    """Hook ``optimized_attention.container_function`` once. No-op off gfx906."""
    if not gfx906_attn.is_gfx906():
        return
    global _stock_attention
    try:
        from comfy.ldm.modules import attention as _attn
    except Exception as exc:  # noqa: BLE001 - comfy not on sys.path (e.g. tests)
        logger.warning("gfx906 attention hook skipped: %s", exc)
        return
    opt = _attn.optimized_attention
    if _stock_attention is opt:
        return
    if not hasattr(opt, "container_function"):
        return
    if opt.container_function is not None:
        logger.warning("optimized_attention.container_function already set; "
                       "gfx906 attention hook not installed")
        return
    _stock_attention = opt
    opt.container_function = _container_attn
    logger.info("gfx906 tiled attention installed (SeedVR2 DiT)")
    if _VAE_HOOK:
        _install_vae_hook()
