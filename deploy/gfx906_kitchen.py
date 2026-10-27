"""gfx906 fp16 conv3d backend for comfy_kitchen's registry.

comfy_kitchen's HIP manifest covers RDNA2/3/4 only, and its prebuilt _C.so has
no gfx906 code object, so on MI50 every op - including fp16_conv3d, the
channels_last_3d implicit-GEMM conv the SeedVR2 VAE decoder lives in - falls
through to eager NCDHW torch convs. This module registers a "gfx906" backend
that serves fp16_conv3d/fp16_conv3d_out from a VALU implicit-GEMM kernel
(hip_conv/conv3d_kernel.hip, v_dot2_f32_f16 fp32 accumulation over NDHWC).

Same build pattern as gfx906_attn: the kernel object ships prebuilt as
hip_conv/conv3d_kernel.<arch>.o, rebuilt with hipcc when the .hip is newer,
then linked into a torch extension via cpp_extension.load. install() is a
no-op off gfx906 (set GFX906_KITCHEN_FORCE=1 to test elsewhere) and is safe to
call before/without comfy_kitchen installed.
"""

import logging
import shutil
import subprocess
import sys
import os
from pathlib import Path

import torch

logger = logging.getLogger("gfx906_kitchen")

_HIP_DIR = Path(__file__).resolve().parent / "hip_conv"
_HIP_SRC = _HIP_DIR / "conv3d_kernel.hip"
_BUILD_FAILED = _HIP_DIR / ".build_failed"
_PREBUILT = _HIP_DIR / ".prebuilt"

_module = None
_attempted = False

_CL = torch.channels_last_3d


def _arch() -> str | None:
    """Target gfx arch, e.g. "gfx906". Env override exists for cross-builds."""
    override = os.environ.get("GFX906_KITCHEN_ARCH")
    if override:
        return override
    if not torch.cuda.is_available() or not getattr(torch.version, "hip", None):
        return None
    try:
        return torch.cuda.get_device_properties(
            torch.cuda.current_device()).gcnArchName.split(":")[0]
    except Exception:
        return None


def is_gfx906() -> bool:
    return _arch() == "gfx906"


def _kernel_obj(arch: str) -> Path:
    return _HIP_DIR / f"conv3d_kernel.{arch}.o"


def _build_kernel_obj(arch: str) -> bool:
    obj = _kernel_obj(arch)
    if obj.is_file():
        if not _HIP_SRC.is_file() or obj.stat().st_mtime >= _HIP_SRC.stat().st_mtime:
            return True
        obj.unlink()  # stale object vs source - rebuild
    if _BUILD_FAILED.is_file():
        return False
    hipcc = shutil.which("hipcc") or "/opt/rocm/bin/hipcc"
    result = subprocess.run(
        [hipcc, f"--offload-arch={arch}", "-O3", "-fPIC",
         "-c", "conv3d_kernel.hip", "-o", obj.name],
        cwd=_HIP_DIR, capture_output=True, text=True)
    if result.returncode == 0 and obj.is_file():
        _PREBUILT.write_text(result.stderr)
        return True
    _BUILD_FAILED.write_text(result.stderr[-4000:])
    logger.warning("gfx906 conv3d kernel build failed: %s", result.stderr[-500:])
    return False


def load():
    """The compiled extension (``conv3d(x, w, bias, res, out, dims, xs, os, rs)``) or None."""
    global _module, _attempted
    if _attempted:
        return _module
    _attempted = True
    try:
        arch = _arch()
        if arch is None or not _build_kernel_obj(arch):
            return None
        from torch.utils import cpp_extension
        _module = cpp_extension.load(
            name="gfx906_kitchen_conv3d",
            sources=[str(_HIP_DIR / "conv3d.cpp")],
            extra_ldflags=[str(_kernel_obj(arch))],
            # no with_cuda: same link-the-.o pattern as gfx906_attn (HIP symbols
            # resolve from the runtime torch already loaded), and it keeps
            # torch from adding "-isystem <ROCM_HOME>/include", which is
            # /usr/include on Debian/Ubuntu ROCm packages and breaks gcc's
            # #include_next chain.
            verbose=False,
        )
        logger.info("gfx906 conv3d kernel loaded (%s)", arch)
    except Exception as exc:  # noqa: BLE001 - fall back to torch conv
        logger.warning("gfx906 conv3d kernel unavailable: %s", exc)
        _module = None
    return _module


# ---------------------------------------------------------------------------
# Layout helpers - same view forms comfy_kitchen's hip backend accepts
# ---------------------------------------------------------------------------

def _ndhwc_strides(t: torch.Tensor):
    """(sn, sd, sh, sw) element strides of an NDHWC-indexable view, or None.

    Requires channel-innermost (stride(1)==1), inner dims' strides multiples of
    8 so every 16-byte group load stays aligned.
    """
    st = t.stride()
    if t.dim() != 5 or st[1] != 1:
        return None
    if min(st[2], st[3], st[4]) <= 0 or st[0] < 0:
        return None
    strides = (st[0], st[2], st[3], st[4])
    if any(s % 8 for s in strides):
        return None
    return strides


def _packed_strides(shape) -> tuple:
    """(sn, sd, sh, sw) for a packed channels_last_3d tensor [N, C, D, H, W]."""
    _, c, d, h, w = shape
    return (d * h * w * c, h * w * c, w * c, c)


def _out_strides(t: torch.Tensor):
    """Like _ndhwc_strides but for the [N, K, Z, P, Q] output: K innermost."""
    st = t.stride()
    if t.dim() != 5 or st[1] != 1:
        return None
    if min(st[2], st[3], st[4]) <= 0 or st[0] < 0:
        return None
    strides = (st[0], st[2], st[3], st[4])
    if any(s % 8 for s in strides):
        return None
    return strides


def _tensors_overlap(a: torch.Tensor, b: torch.Tensor) -> bool:
    try:
        from comfy_kitchen._rope_utils import _tensors_overlap as _ov
        return _ov(a, b)
    except Exception:
        if a.untyped_storage().data_ptr() != b.untyped_storage().data_ptr():
            return False
        ar = (a.storage_offset(), a.storage_offset() + a.numel())
        br = (b.storage_offset(), b.storage_offset() + b.numel())
        return ar[0] < br[1] and br[0] < ar[1]


# ---------------------------------------------------------------------------
# Backend implementation
# ---------------------------------------------------------------------------

def _conv3d_into(x, weight, bias, residual, stride, out=None):
    """The kernel's result tensor, or None when the call is not ours to serve."""
    ext = load()
    if ext is None:
        return None
    n, c, d, h, w = x.shape
    k, cw, t, r, s = weight.shape
    sd, sh, sw = (int(v) for v in stride)
    if min(sd, sh, sw) < 1:
        return None
    z, p, q = (d - t) // sd + 1, (h - r) // sh + 1, (w - s) // sw + 1
    M = n * z * p * q
    supported = (
        x.dtype == torch.float16 and weight.dtype == torch.float16
        and weight.device == x.device and cw == c and c % 8 == 0
        and k % 8 == 0 and d >= t and h >= r and w >= s
        and z > 0 and p > 0 and q > 0 and M < 2**31
        and (bias is None or (bias.dtype == torch.float16 and bias.shape == (k,)))
        and (residual is None or (residual.dtype == torch.float16
                                  and residual.shape == (n, k, z, p, q)))
    )
    if not supported:
        return None
    xs = _ndhwc_strides(x)
    if xs is None:
        if not x.is_contiguous(memory_format=_CL):
            x = x.contiguous(memory_format=_CL)
        xs = _packed_strides(x.shape)
    weight = weight.contiguous(memory_format=_CL)
    if weight.data_ptr() % 16 or x.data_ptr() % 16:
        return None
    bias = None if bias is None else bias.to(device=x.device).contiguous()

    if out is None:
        out = torch.empty((n, k, z, p, q), dtype=torch.float16,
                          device=x.device, memory_format=_CL)
        ostr = _packed_strides(out.shape)
    else:
        if (out.shape != (n, k, z, p, q) or out.dtype != torch.float16
                or out.device != x.device):
            raise ValueError(
                "fp16_conv3d: out must be an fp16 [N, K, Z, P, Q] tensor on x's device")
        ostr = _out_strides(out)
        if ostr is None or out.data_ptr() % 16:
            return None
        # writes race reads when the buffers overlap; residual==out is safe
        # (same-index elementwise epilogue)
        if n > 1 and ostr[0] == 0:
            return None
        if any(t is not None and _tensors_overlap(out, t)
               for t in (x, weight, bias)):
            return None
        if (residual is not None and residual is not out
                and _tensors_overlap(out, residual)):
            return None

    if residual is None:
        rstr = (0, 0, 0, 0)
    else:
        if residual.shape != out.shape or residual.dtype != torch.float16 \
                or residual.device != x.device:
            return None
        rstr = _out_strides(residual)
        if rstr is None or residual.data_ptr() % 16:
            residual = residual.contiguous(memory_format=_CL)
            rstr = _packed_strides(residual.shape)

    ext.conv3d(
        x, weight, bias, residual, out,
        [n, d, h, w, c, k, t, r, s, sd, sh, sw, z, p, q],
        list(xs), list(ostr), list(rstr))
    return out


def fp16_conv3d(x, weight, bias, residual, stride):
    """fp16_conv3d backend entry; torch's conv when the kernel declines."""
    out = _conv3d_into(x, weight, bias, residual, stride)
    if out is not None:
        return out
    bias = None if bias is None else bias.to(device=x.device)
    residual = None if residual is None else residual.to(device=x.device)
    out = torch.nn.functional.conv3d(x, weight, bias, stride=stride).contiguous(
        memory_format=_CL)
    return out if residual is None else out + residual


def fp16_conv3d_out(x, weight, bias, residual, stride, out):
    """fp16_conv3d into ``out``; computed then copied when out is not indexable."""
    if _conv3d_into(x, weight, bias, residual, stride, out=out) is not None:
        return
    out.copy_(fp16_conv3d(x, weight, bias, residual, stride))


# ---------------------------------------------------------------------------
# Registration
# ---------------------------------------------------------------------------

def _capabilities():
    from comfy_kitchen.constraints import (
        ExactDims,
        FunctionConstraints,
        ParamConstraint,
        with_out_param,
    )
    dev = frozenset({"cuda", "hip"})
    fp16 = ParamConstraint(dtypes=frozenset({torch.float16}),
                           shape_rules=(ExactDims(5),))
    opt_fp16 = ParamConstraint(
        dtypes=frozenset({torch.float16, type(None)}))
    conv = FunctionConstraints(
        params={"x": fp16, "weight": fp16, "bias": opt_fp16,
                "residual": opt_fp16},
        default_devices=dev,
    )
    return {"fp16_conv3d": conv, "fp16_conv3d_out": with_out_param(conv)}


def install() -> bool:
    """Register the gfx906 backend into comfy_kitchen's dispatch registry."""
    if not (is_gfx906() or os.environ.get("GFX906_KITCHEN_FORCE") == "1"):
        return False
    try:
        from comfy_kitchen.registry import registry
    except ImportError:
        return False
    if load() is None:
        return False
    registry.register("gfx906", sys.modules[__name__], _capabilities())
    priority = [b for b in registry._priority if b != "gfx906"]
    registry.set_priority(["gfx906"] + priority)
    logger.info("gfx906 conv3d backend registered (priority: %s)",
                registry._priority)
    return True

