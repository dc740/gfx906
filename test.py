import torch, torch.utils.cpp_extension as ce, os
m = ce.load(name="gfx906_attn", sources=["attn.cpp"],
            extra_ldflags=[os.path.abspath("attn_kernel.o")], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)

def check(B,H,S,D=64):
    q = torch.randn(B,H,S,D, dtype=torch.float16, device="cuda")
    k, v = torch.randn_like(q), torch.randn_like(q)
    out = m.attn(q, k, v, 0.125)
    if S <= 8192:
        ref = sdpa(q, k, v, scale=0.125)
        err = (out-ref).abs().max().item()
    else:
        # full-matrix ref would OOM; check a Q-slice against full K/V
        n = 256
        ref = sdpa(q[:,:,:n].contiguous(), k, v, scale=0.125)
        err = (out[:,:,:n]-ref).abs().max().item()
    print(f"S={S} max_err: {err:.5f}", "OK" if err < 1e-2 else "FAIL")
    del q,k,v,out
    torch.cuda.empty_cache()

for S in (64, 256, 1024, 4096, 100, 1000):
    check(2,8,S)
# generic path: D=32 and D=16 (non-64 head dims)
check(2,8,512,D=32)
check(2,8,512,D=16)

import time
def bench(fn, iters=50):
    for _ in range(5): fn()
    torch.cuda.synchronize()
    ts=[]
    for _ in range(iters):
        t=time.perf_counter(); fn(); torch.cuda.synchronize()
        ts.append(time.perf_counter()-t)
    return min(ts)*1000

print("\n== bench (B=1,H=8,D=64), min of 50 ==")
for S in (1024, 4096, 8192):
    q = torch.randn(1,8,S,64, dtype=torch.float16, device="cuda")
    k, v = torch.randn_like(q), torch.randn_like(q)
    ours = bench(lambda: m.attn(q,k,v,0.125))
    math = bench(lambda: sdpa(q,k,v,scale=0.125))
    print(f"S={S} ours: {ours:.2f} ms | math: {math:.2f} ms | ratio {ours/math:.2f}")
    del q,k,v; torch.cuda.empty_cache()

print("\n== memory-bound proof (B=1,H=8,S=32768) ==")
S=32768
q = torch.randn(1,8,S,64, dtype=torch.float16, device="cuda")
k, v = torch.randn_like(q), torch.randn_like(q)
t=time.perf_counter(); out=m.attn(q,k,v,0.125); torch.cuda.synchronize()
print(f"ours S=32768: {(time.perf_counter()-t)*1000:.2f} ms, peak mem {torch.cuda.max_memory_allocated()/2**30:.1f} GiB")
n=256
ref = sdpa(q[:,:,:n].contiguous(), k, v, scale=0.125)
print("slice max_err:", (out[:,:,:n]-ref).abs().max().item())
try:
    r = sdpa(q,k,v,scale=0.125)
    print("math S=32768 completed (no OOM)")
except RuntimeError as e:
    print("math S=32768 OOM as expected")
