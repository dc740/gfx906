import torch, torch.utils.cpp_extension as ce, os, time
os.environ["PYTORCH_CUDA_ALLOC_CONF"]="expandable_segments:True"
m = ce.load(name="gfx906_attn", sources=["attn.cpp"], extra_ldflags=[os.path.abspath("attn_kernel.o")], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
def bench(fn, iters=50):
    for _ in range(5): fn()
    torch.cuda.synchronize()
    ts=[]
    for _ in range(iters):
        t=time.perf_counter(); fn(); torch.cuda.synchronize(); ts.append(time.perf_counter()-t)
    return min(ts)*1000
for S in (1024, 4096, 8192):
    q = torch.randn(1,8,S,64, dtype=torch.float16, device="cuda")
    k, v = torch.randn_like(q), torch.randn_like(q)
    o1 = bench(lambda: m.attn(q,k,v,0.125)); m1 = bench(lambda: sdpa(q,k,v,scale=0.125))
    o2 = bench(lambda: m.attn(q,k,v,0.125)); m2 = bench(lambda: sdpa(q,k,v,scale=0.125))
    o,m_ = min(o1,o2), min(m1,m2)
    print(f"S={S} ours {o:.2f} | math {m_:.2f} | ratio {o/m_:.2f}")
    del q,k,v; torch.cuda.empty_cache()
