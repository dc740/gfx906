import torch, torch.utils.cpp_extension as ce, os, time
m = ce.load(name="gfx906_attn", sources=["attn.cpp"],
            extra_ldflags=[os.path.abspath("attn_kernel.o")], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
def bench(fn, iters=50):
    for _ in range(5): fn()
    torch.cuda.synchronize()
    ts=[]
    for _ in range(iters):
        t=time.perf_counter(); fn(); torch.cuda.synchronize(); ts.append(time.perf_counter()-t)
    return min(ts)*1000
for D,sc in ((64,0.125),(128,0.0884)):
    for S in (1024, 4096, 8192):
        q = torch.randn(1,8,S,D, dtype=torch.float16, device="cuda")
        k, v = torch.randn_like(q), torch.randn_like(q)
        o = bench(lambda: m.attn(q,k,v,sc))
        mm = bench(lambda: sdpa(q,k,v,scale=sc))
        err = (m.attn(q,k,v,sc)-sdpa(q,k,v,scale=sc)).abs().max().item()
        print(f"D={D} S={S} ours {o:.2f} | math {mm:.2f} | ratio {o/mm:.2f} | err {err:.5f}")
        del q,k,v; torch.cuda.empty_cache()
