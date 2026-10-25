import torch, torch.utils.cpp_extension as ce, os, time
m = ce.load(name='gfx906_attn', sources=['attn.cpp'], extra_ldflags=[os.path.abspath('attn_kernel.o')], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
def bench(fn, iters=10):
    for _ in range(3): fn()
    torch.cuda.synchronize()
    ts=[]
    for _ in range(iters):
        t=time.perf_counter(); fn(); torch.cuda.synchronize(); ts.append(time.perf_counter()-t)
    return min(ts)*1000
# D=64 H=8 S=8192: flops = 2*(qk + av) = 2*2*S^2*D*H
for B,H,S,D in [(1,8,8192,64),(1,8,8192,128),(1,1,9216,512),(1,1,1024,512)]:
    q = torch.randn(B,H,S,D, dtype=torch.float16, device='cuda')
    k, v = torch.randn_like(q), torch.randn_like(q)
    sc = D**-0.5
    ours = bench(lambda: m.attn(q,k,v,sc))
    fl = 4*B*H*S*S*D
    print(f'H={H} S={S} D={D}: kernel {ours:.2f} ms -> {fl/ours/1e9:.2f} TFLOPS')
    del q,k,v; torch.cuda.empty_cache()
