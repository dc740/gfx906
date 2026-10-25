import torch, torch.utils.cpp_extension as ce, os, time
m = ce.load(name='gfx906_attn', sources=['attn.cpp'],
            extra_ldflags=[os.path.abspath('attn_kernel.o')], verbose=False)
sdpa = torch.nn.functional.scaled_dot_product_attention
torch.manual_seed(0)
sc = 512 ** -0.5

def check(B,H,S,D=512, note=''):
    q = torch.randn(B,H,S,D, dtype=torch.float16, device='cuda')
    k, v = torch.randn_like(q), torch.randn_like(q)
    out = m.attn(q, k, v, sc)
    n = min(S, 1024)
    ref = sdpa(q[:,:,:n].contiguous(), k, v, scale=sc)
    err = (out[:,:,:n]-ref).abs().max().item()
    print(f'S={S} {note} max_err: {err:.5f}', 'OK' if err < 1e-2 else 'FAIL')
    del q,k,v,out,ref; torch.cuda.empty_cache()
    return err

for S in (256, 1024, 4096, 9216):
    check(1,1,S)

# non-contiguous inputs (transposed layout like VAE [b,c,hw]->[b,hw,c])
b,S,D = 1, 1024, 512
q = torch.randn(b,S,D*2, dtype=torch.float16, device='cuda')[:,:,::2]  # non-contig view
k = torch.randn(b,D,S, dtype=torch.float16, device='cuda').transpose(1,2)
v = torch.randn(b,D,S, dtype=torch.float16, device='cuda').transpose(1,2)
q4 = q.unsqueeze(1); k4 = k.unsqueeze(1); v4 = v.unsqueeze(1)  # [b,1,S,D] non-contig
out = m.attn(q4, k4, v4, sc)
ref = sdpa(q4.contiguous(), k4.contiguous(), v4.contiguous(), scale=sc)
print('noncontig max_err:', (out-ref).abs().max().item())

# bf16 -> half cast path (wrapper-level behavior)
qb = torch.randn(1,1,1024,512, dtype=torch.bfloat16, device='cuda')
kb = torch.randn_like(qb); vb = torch.randn_like(qb)
outb = m.attn(qb.half(), kb.half(), vb.half(), sc)
refb = sdpa(qb.float().half(), kb.float().half(), vb.float().half(), scale=sc)
print('bf16-cast max_err:', (outb-refb).abs().max().item())
