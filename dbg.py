import torch, torch.utils.cpp_extension as ce, os
m = ce.load(name="gfx906_attn", sources=["attn.cpp"], extra_ldflags=[os.path.abspath("attn_kernel.o")], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
S=4096
q = torch.randn(2,8,S,64, dtype=torch.float16, device="cuda")
k, v = torch.randn_like(q), torch.randn_like(q)
ref = sdpa(q,k,v,scale=0.125); out = m.attn(q,k,v,0.125)
err = (out-ref).abs()
print("max", err.max().item())
# which positions bad
bad = (err > 0.05).nonzero()
print("num bad:", bad.shape[0])
if bad.shape[0]:
    print("b values:", bad[:,0].unique()[:10])
    print("h values:", bad[:,1].unique()[:10])
    print("row min/max:", bad[:,2].min().item(), bad[:,2].max().item())
    print("rows mod 64:", bad[:,2].unique()[:20] % 64)
    print("d values:", bad[:,3].unique()[:20])
    r = bad[0]; b,h,row,d = r.tolist()
    print("sample row", b,h,row, "out:", out[b,h,row,:8].tolist(), "ref:", ref[b,h,row,:8].tolist())
# rerun determinism
out2 = m.attn(q,k,v,0.125); print("deterministic:", torch.equal(out,out2))
