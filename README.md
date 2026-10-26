# gfx906 flash attention

Tiled flash-attention-style HIP kernel for AMD gfx906 (MI50/MI60) — streams K/V,
never materializes the S x S matrix. Beats PyTorch MATH SDPA ~1.6x at S >= 4K and
runs sequences that OOM MATH entirely (32K in 4.6 GiB, 129K verified).

fp16, head_dim <= 64 / 128 / 512, Sq != Skv supported. No MFMA on this silicon —
VALU packed-fp16 (v_dot2_f32_f16, v_pk_fma_f16) + LDS tiling only.

## build / use

Kernel: hipcc --offload-arch=gfx906 -O3 -fPIC -c attn_kernel.hip -o attn_kernel.gfx906.o
Then load attn.cpp via torch.utils.cpp_extension with the .o in extra_ldflags.

Run test.py / test_d512.py for correctness vs SDPA MATH; bench_dall.py for timings.
test_variants.py builds + benchmarks every compile-time variant on hardware;
model_check.py validates the lane->dim map and reductions on CPU (no GPU).

Compile-time switches (defaults shown; -D on the hipcc line to change):
- USE_DOT2 on (GFX906_NO_DOT2 off): v_dot2_f32_f16 QK dots
- USE_PKFMA on (GFX906_NO_PKFMA off): fp16x2 PV accumulate
- USE_RED_DPP on (GFX906_NO_RED_DPP off): quad_perm DPP reduction, SPLIT=4
- USE_RED_SWIZZLE (opt-in): ds_swizzle_b32 xor reduction instead
- USE_ILV on (GFX906_NO_ILV off): interleaved lane->dim map (fixes D=128
  LDS bank conflicts)
- USE_LDS_XCHG (opt-in): stage partial dots through LDS instead of shuffles
- TILE_M/TILE_N/DMAX/PTYPE/SPLIT_K/SPLIT_K_128/TILE_M_512/TILE_N_512 as before

## install into ComfyUI

Vendored, zero extra steps: clone the patched nodes into `custom_nodes/`:
- `git clone https://github.com/dc740/ComfyUI-SeedVR2-LongVideo` (DiT + VAE attention)
- `git clone https://github.com/dc740/ComfyUI-Tween` (SPEED interpolation attention)

Each ships `hip_attn/` (kernel + prebuilt `.o`) and `gfx906_attn.py`, which
lazy-loads on gfx906 only: rebuilds the `.o` via hipcc if missing, links it
through torch cpp_extension, and caches the module. Non-gfx906 machines and
ineligible shapes (dtype/head_dim/masks) fall back to stock attention.
