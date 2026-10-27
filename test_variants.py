# On-hardware A/B harness for the compile-time kernel variants (gfx906 only).
# Builds each flag combo with hipcc, loads it via torch cpp_extension, checks
# vs SDPA-MATH, then times D=64/128 at S=4096.
#
#   python3 test_variants.py            # all variants
#   python3 test_variants.py quick      # default + all_off only
#   QUICK=1 python3 test_variants.py    # same
#
# Objects land in ./variants/ (gitignored); stale objects are reused, delete
# the dir to force a rebuild. Correctness threshold matches test.py (<1e-2).
import os, subprocess, sys, time
import torch, torch.utils.cpp_extension as ce

HERE = os.path.dirname(os.path.abspath(__file__))
VDIR = os.path.join(HERE, "variants")
os.makedirs(VDIR, exist_ok=True)

VARIANTS = {
    # name: extra -D flags (default = DPP reduction + interleaved map +
    # zpad unguarded reads + vectorized sE staging)
    "default":  "",
    "no_dpp":   "-DGFX906_NO_RED_DPP",                    # __shfl_xor reduction
    "swizzle":  "-DUSE_RED_SWIZZLE",                      # ds_swizzle_b32 xor
    "no_ilv":   "-DGFX906_NO_ILV",                        # strided lane->dim map
    "no_zpad":  "-DGFX906_NO_ZPAD",                       # guarded D<64 reads
    "no_sevec": "-DGFX906_NO_SEVEC",                      # scalar sE reads (D=512)
    "all_off":  "-DGFX906_NO_RED_DPP -DGFX906_NO_ILV -DGFX906_NO_ZPAD -DGFX906_NO_SEVEC",
    "xchg":     "-DUSE_LDS_XCHG",                         # LDS mailbox reduction
}
if len(sys.argv) > 1 and sys.argv[1] == "quick" or os.environ.get("QUICK"):
    VARIANTS = {k: VARIANTS[k] for k in ("default", "all_off")}

sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)


def build(name, flags):
    obj = os.path.join(VDIR, f"attn_kernel.{name}.o")
    if not os.path.exists(obj):
        cmd = (f"hipcc --offload-arch=gfx906 -O3 -fPIC {flags} "
               f"-c {HERE}/attn_kernel.hip -o {obj}")
        print("build:", cmd)
        subprocess.check_call(cmd, shell=True)
    return ce.load(name=f"gfx906_attn_{name}", sources=[os.path.join(HERE, "attn.cpp")],
                   extra_ldflags=[obj], verbose=False)


def check(m, B, H, Sq, Skv, D):
    q = torch.randn(B, H, Sq, D, dtype=torch.float16, device="cuda")
    k, v = torch.randn(B, H, Skv, D, dtype=torch.float16, device="cuda"), \
           torch.randn(B, H, Skv, D, dtype=torch.float16, device="cuda")
    out = m.attn(q, k, v, 0.125)
    n = min(Sq, 1024)
    ref = sdpa(q[:, :, :n].contiguous(), k, v, scale=0.125)
    err = (out[:, :, :n] - ref).abs().max().item()
    del q, k, v, out, ref
    torch.cuda.empty_cache()
    return err


def bench(fn, iters=30):
    for _ in range(5):
        fn()
    torch.cuda.synchronize()
    ts = []
    for _ in range(iters):
        t = time.perf_counter()
        fn()
        torch.cuda.synchronize()
        ts.append(time.perf_counter() - t)
    return min(ts) * 1000


fails = 0
for name, flags in VARIANTS.items():
    m = build(name, flags)
    errs = {}
    for (Sq, Skv, D) in ((256, 256, 64), (1024, 1024, 64), (100, 300, 64),
                         (256, 256, 128), (1024, 1024, 128), (77, 411, 128),
                         (512, 512, 32), (512, 512, 512)):
        errs[(Sq, Skv, D)] = check(m, 2, 4, Sq, Skv, D)
    bad = {k: v for k, v in errs.items() if v >= 1e-2}
    status = "FAIL " + str(bad) if bad else "OK"
    if bad:
        fails += 1
    print(f"[{name:8}] worst err {max(errs.values()):.5f} {status}")

    for D in (64, 128):
        q = torch.randn(1, 8, 4096, D, dtype=torch.float16, device="cuda")
        k, v = torch.randn_like(q), torch.randn_like(q)
        t = bench(lambda: m.attn(q, k, v, 0.125))
        print(f"          D={D} S=4096: {t:.2f} ms")
        del q, k, v
        torch.cuda.empty_cache()
    del m

sys.exit(1 if fails else 0)
