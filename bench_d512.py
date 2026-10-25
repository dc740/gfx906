import torch, torch.utils.cpp_extension as ce, os, time, sys, math
m = ce.load(name='gfx906_attn', sources=['attn.cpp'],
            extra_ldflags=[os.path.abspath('attn_kernel.o')], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
sc = 512 ** -0.5

sys.path.insert(0, os.environ.get('COMFYUI_PATH', '<path-to-ComfyUI>'))
from comfy.ldm.modules.diffusionmodules.model import slice_attention

def bench(fn, iters=10):
    for _ in range(3): fn()
    torch.cuda.synchronize()
    ts=[]
    for _ in range(iters):
        t=time.perf_counter(); fn(); torch.cuda.synchronize()
        ts.append(time.perf_counter()-t)
    return min(ts)*1000

print('== D=512, H=1, B=1 (VAE mid-block shape) ==')
for S in (1024, 4096, 9216):
    q = torch.randn(1,1,S,512, dtype=torch.float16, device='cuda')
    k, v = torch.randn_like(q), torch.randn_like(q)
    ours = bench(lambda: m.attn(q,k,v,sc))
    try:
        math_t = bench(lambda: sdpa(q,k,v,scale=sc), iters=5)
    except RuntimeError:
        math_t = float('nan')
    # slice_attention takes [b, S, C] q and [b, C, S] k/v
    qs = q.squeeze(1)                     # [1,S,512]
    ks = k.squeeze(1).transpose(1,2).contiguous()  # [1,512,S]
    vs = v.squeeze(1).transpose(1,2).contiguous()  # [1,512,S]
    try:
        sl = bench(lambda: slice_attention(qs, ks, vs), iters=5)
    except RuntimeError:
        sl = float('nan')
    print(f'S={S} kernel {ours:.2f} ms | math {math_t:.2f} ms | slice_attn {sl:.2f} ms | ratio vs math {ours/math_t:.2f}')
    del q,k,v,qs,ks,vs; torch.cuda.empty_cache(); torch.cuda.reset_peak_memory_stats()

print()
print('== memory proof ==')
for S in (9216,):
    torch.cuda.reset_peak_memory_stats()
    q = torch.randn(1,1,S,512, dtype=torch.float16, device='cuda')
    k, v = torch.randn_like(q), torch.randn_like(q)
    torch.cuda.reset_peak_memory_stats()
    out = m.attn(q,k,v,sc); torch.cuda.synchronize()
    kpeak = torch.cuda.max_memory_allocated()/2**30
    del out; torch.cuda.empty_cache()
    torch.cuda.reset_peak_memory_stats()
    try:
        r = sdpa(q,k,v,scale=sc); torch.cuda.synchronize()
        mpeak = torch.cuda.max_memory_allocated()/2**30
        del r
    except RuntimeError:
        mpeak = float('nan')
    print(f'S={S}: kernel peak {kpeak:.2f} GiB | math peak {mpeak:.2f} GiB')
    del q,k,v; torch.cuda.empty_cache()

# untiled 4K shape (skip if SHORT env)
import os as _os
if _os.environ.get('SHORT'): import sys; sys.exit(0)
S = 129600
q = torch.randn(1,1,S,512, dtype=torch.float16, device='cuda')
k, v = torch.randn_like(q), torch.randn_like(q)
torch.cuda.reset_peak_memory_stats()
t=time.perf_counter(); out=m.attn(q,k,v,sc); torch.cuda.synchronize()
dt=time.perf_counter()-t
print(f'S={S}: kernel {dt*1000:.0f} ms, peak {torch.cuda.max_memory_allocated()/2**30:.2f} GiB')
n=512
ref = sdpa(q[:,:,:n].contiguous(), k, v, scale=sc)
print('slice max_err:', (out[:,:,:n]-ref).abs().max().item())
del out, ref
torch.cuda.reset_peak_memory_stats()
try:
    r = sdpa(q,k,v,scale=sc); torch.cuda.synchronize()
    print('math completed, peak', torch.cuda.max_memory_allocated()/2**30)
except RuntimeError as e:
    print('math OOM as expected')
