import torch, torch.utils.cpp_extension as ce, os, sys
name = sys.argv[1] if len(sys.argv)>1 else "gfx906_attn"
m = ce.load(name=name, sources=["attn.cpp"],
            extra_ldflags=[os.path.abspath("attn_kernel.o")], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
for S in (1024, 4096, 8192):
    q = torch.randn(2,8,S,64, dtype=torch.float16, device="cuda")
    k, v = torch.randn_like(q), torch.randn_like(q)
    ref = sdpa(q, k, v, scale=0.125)
    out = m.attn(q, k, v, 0.125)
    print(S, "max_err:", (out-ref).abs().max().item())
    del q,k,v,ref,out; torch.cuda.empty_cache()
