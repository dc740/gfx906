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
- USE_ZPAD on (GFX906_NO_ZPAD off): zero-filled LDS tail lets the D<64
  tiled kernel read unguarded ds_read_b128
- USE_SEVEC on (GFX906_NO_SEVEC off): D=512 score row staged to registers
  via ds_read_b128 instead of two scalar sweeps
- USE_LDS_XCHG (opt-in): stage partial dots through LDS instead of shuffles
- TILE_M/TILE_N/DMAX/PTYPE/SPLIT_K/SPLIT_K_128/TILE_M_512/TILE_N_512 as before

## measured (test_variants.py, hardware)

S=4096, B=1, fp16 - default flags vs everything disabled:

| head_dim | defaults on | all flags off |
|---|---|---|
| D=64 | 5.98 ms | 6.38 ms |
| D=128 | 10.63 ms | 14.44 ms |

D=128's delta is mostly USE_ILV removing the 2-way LDS bank conflict.

## install into ComfyUI

Vendored, zero extra steps: clone the patched nodes into `custom_nodes/`:
- `git clone https://github.com/dc740/ComfyUI-SeedVR2-LongVideo` (DiT + VAE attention)
- `git clone https://github.com/dc740/ComfyUI-Tween` (SPEED interpolation attention)

Each ships `hip_attn/` (kernel + prebuilt `.o`) and `gfx906_attn.py`, which
lazy-loads on gfx906 only: rebuilds the `.o` via hipcc if missing, links it
through torch cpp_extension, and caches the module. Non-gfx906 machines and
ineligible shapes (dtype/head_dim/masks) fall back to stock attention.

## conv3d backend for comfy_kitchen (VAE decode)

`gfx906_kitchen.py` + `hip_conv/` implement a `gfx906` backend registered into
comfy_kitchen's registry, serving fp16_conv3d for the SeedVR2 VAE decoder -
comfy_kitchen's stock HIP manifest has no gfx906 ops at all, so the VAE decode
otherwise runs the eager NCDHW path (~95min of a ~2h batch).

Deploy to your ComfyUI node:

    scp -r deploy/gfx906_kitchen.py deploy/hip_conv \
        <server>:<comfyui-node-path>/comfy/ComfyUI/custom_nodes/ComfyUI-SeedVR2-LongVideo/
    # then apply deploy/kitchen-node-init.patch to the node's __init__.py
    # so install() runs at node import on gfx906 machines

Requires comfy_kitchen (pip) installed in the ComfyUI venv and a gfx906 GPU;
anything outside the envelope (C/K not multiples of 8, non-fp16, odd strides)
falls back to the stock torch path.

Status: hardware-validated on gfx906 - 17/17 test_conv3d.py cases correct vs
fp32 torch conv3d. In-node deployment is up; real-decode end-to-end timing
still pending.
