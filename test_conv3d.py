"""Correctness check for the gfx906 implicit-GEMM conv3d backend.

Runs the same fp16_conv3d entry the comfy_kitchen registry dispatches to and
compares against an fp32 torch.conv3d reference. Works on any ROCm GPU (the
kernel is arch-agnostic; gfx906 uses v_dot2_f32_f16 inline asm, other archs a
portable fp32 path).

    python3 test_conv3d.py
"""

import sys
import torch
import torch.nn.functional as F

sys.path.insert(0, ".")
import gfx906_kitchen as gk

_CL = torch.channels_last_3d


def ref_conv3d(x, w, b, res, stride):
    out = F.conv3d(x.float(), w.float(),
                   None if b is None else b.float(), stride=stride)
    if res is not None:
        out = out + res.float()
    return out.half()


def check(name, got, ref, atol=2e-2, rtol=2e-2):
    if got is None:
        print(f"FAIL {name}: kernel declined (returned None)")
        return False
    ok = torch.allclose(got.float(), ref.float(), atol=atol, rtol=rtol)
    diff = (got.float() - ref.float()).abs().max().item()
    print(f"{'ok  ' if ok else 'FAIL'} {name}: max abs diff {diff:.5f}")
    return ok


def direct(x, w, b, res, stride, out=None):
    """_conv3d_into path: None when declined (no torch fallback masking)."""
    return gk._conv3d_into(x, w, b, res, list(stride), out=out)


def main():
    assert torch.cuda.is_available() and getattr(torch.version, "hip", None)
    torch.manual_seed(0)
    dev = "cuda"
    ok = True

    def mk(shape):
        return (torch.randn(shape, dtype=torch.float16, device=dev) * 0.25
                ).contiguous(memory_format=_CL)

    cases = [
        # (n,c,d,h,w), (k,t,r,s), stride, bias, residual
        ((1, 128, 4, 32, 32), (256, 3, 3, 3), (1, 1, 1), True, True),
        ((1, 256, 4, 32, 32), (128, 3, 3, 3), (1, 1, 1), True, False),
        ((1, 512, 4, 16, 16), (512, 3, 3, 3), (1, 1, 1), False, True),
        ((1, 128, 5, 33, 17), (64, 3, 3, 3), (1, 1, 1), True, True),   # ragged M
        ((1, 128, 8, 32, 32), (128, 1, 1, 1), (1, 1, 1), True, False), # pointwise
        ((1, 64, 6, 16, 16), (64, 3, 3, 3), (2, 1, 1), True, True),    # strided T
        ((1, 96, 4, 32, 32), (96, 3, 3, 3), (1, 2, 2), True, False),   # strided HW
        ((1, 8, 3, 16, 16), (8, 3, 3, 3), (1, 1, 1), True, True),      # min C/K
        ((2, 64, 3, 16, 16), (64, 3, 3, 3), (1, 1, 1), True, True),    # batch 2
        ((1, 128, 1, 32, 32), (256, 1, 3, 3), (1, 1, 1), True, True),  # T=1 taps
    ]
    for i, (xs, ws, stride, has_b, has_r) in enumerate(cases):
        k, t, r, s = ws
        x, w = mk(xs), mk((k, xs[1], t, r, s))
        b = torch.randn(k, dtype=torch.float16, device=dev) if has_b else None
        n, c, d, h, ww = xs
        os_ = (n, k, (d - t) // stride[0] + 1, (h - r) // stride[1] + 1,
               (ww - s) // stride[2] + 1)
        res = mk(os_) if has_r else None
        got = direct(x, w, b, res, stride)
        ok &= check(f"case{i} {xs}->{ws} st{stride} b={has_b} r={has_r}",
                    got, ref_conv3d(x, w, b, res, stride))
        if got is not None:
            ok &= got.is_contiguous(memory_format=_CL)

    # NCDHW input: wrapper must convert or decline-then-fallback correctly.
    x = mk((1, 128, 4, 32, 32)).contiguous()
    w = mk((256, 128, 3, 3, 3))
    ok &= check("ncdhw input", direct(x, w, None, None, (1, 1, 1)),
                ref_conv3d(x, w, None, None, (1, 1, 1)))

    # Frame-window x view (the _ck_buffered path): x is a z-window of a larger
    # NDHWC buffer; weight taps sliced per-frame like _ck_taps.
    n, c = 1, 128
    buf = mk((n, c, 8, 34, 34))          # padded input buffer
    wfull = mk((256, c, 3, 3, 3))
    b = torch.randn(256, dtype=torch.float16, device=dev)
    xwin = buf[:, :, 2:7]                # D window, strided x
    got = direct(xwin, wfull, b, None, (1, 1, 1))
    ok &= check("x z-window view", got,
                ref_conv3d(xwin, wfull, b, None, (1, 1, 1)))

    # tap conv with residual=out accumulation (the halo-tap call): a single
    # frame's spatial band convolved 1x3x3, accumulated into that band.
    out_big = torch.zeros((n, 256, 2, 32, 32), dtype=torch.float16,
                          device=dev).contiguous(memory_format=_CL)
    band = out_big[:, :, 0:1, 4:20]
    tap = wfull[:, :, 0:1].contiguous(memory_format=_CL)
    xw = buf[:, :, 2:3, 4:20 + 2, :]
    ref = ref_conv3d(xw, tap, None, band, (1, 1, 1))
    got = direct(xw, tap, None, band, (1, 1, 1), out=band)
    ok &= check("residual=out alias accumulate", got, ref)
    ok &= got is band  # same storage
    # the untouched band/out areas must still be zero
    ok &= bool((out_big[:, :, 1] == 0).all()
               and (out_big[:, :, 0, :4] == 0).all()
               and (out_big[:, :, 0, 20:] == 0).all())
    print(("ok  " if ok else "FAIL") + " untouched out areas preserved")

    # out= frame window of a bigger packed buffer.
    out2 = torch.zeros((n, 256, 7, 32, 32), dtype=torch.float16,
                       device=dev).contiguous(memory_format=_CL)
    win = out2[:, :, 1:4]              # Z=3: conv of the 5-frame x window
    got = direct(buf[:, :, 2:7], wfull, b, None, (1, 1, 1), out=win)
    ok &= check("out z-window view", got,
                ref_conv3d(buf[:, :, 2:7], wfull, b, None, (1, 1, 1)))
    ok &= bool((out2[:, :, 0] == 0).all() and (out2[:, :, 4:] == 0).all())

    # declined shapes must fall back correctly through the public entry.
    x = mk((1, 3, 4, 16, 16))            # C not multiple of 8 -> torch fallback
    w = mk((16, 3, 3, 3, 3))
    got = gk.fp16_conv3d(x, w, None, None, [1, 1, 1])
    ok &= check("C=3 fallback", got, ref_conv3d(x, w, None, None, (1, 1, 1)),
                atol=5e-2, rtol=5e-2)
    x = mk((1, 64, 4, 16, 16))
    w = mk((3, 64, 3, 3, 3))             # K not multiple of 8 -> torch fallback
    got = gk.fp16_conv3d(x, w, None, None, [1, 1, 1])
    ok &= check("K=3 fallback", got, ref_conv3d(x, w, None, None, (1, 1, 1)),
                atol=5e-2, rtol=5e-2)

    print("ALL OK" if ok else "FAILURES", flush=True)
    sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
