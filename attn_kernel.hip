// gfx906 tiled attention v3: no QK^T materialization, online softmax.
// Block = TILE_M Q rows (1 thread per row). K/V streamed via LDS as half2.
// fp16 inputs, fp32 accumulators. Template DT=0 -> runtime D; DT>0 -> compile-time D.
#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>

// packed-fp16 dot path is the shipped default; -DGFX906_NO_DOT2 falls back to
// the scalar fma_mix inner loops (identical math, more instructions).
#if !defined(GFX906_NO_DOT2) && !defined(USE_DOT2)
#define USE_DOT2 1
#endif

// packed-fp16 PV accumulate: fp16x2 partial sums over each K/V tile, folded
// into the fp32 accumulators at tile end (bounds fp16 drift to TILE_N keys).
// -DGFX906_NO_PKFMA falls back to the scalar fma_mix loops.
#if !defined(GFX906_NO_PKFMA) && !defined(USE_PKFMA)
#define USE_PKFMA 1
#endif

#ifndef TILE_M
#define TILE_M 64
#endif
#ifndef TILE_N
#define TILE_N 16
#endif
#ifndef DMAX
#define DMAX 64
#endif
#ifndef PTYPE          // prob dtype: __half -> fma_mix-eligible + saves regs
#define PTYPE __half
#endif
#ifndef SPLIT_K        // lanes per Q row in the D==64 fast kernel
#define SPLIT_K 4
#endif
#ifndef SPLIT_K_128    // lanes per Q row in the D==128 fast kernel
#define SPLIT_K_128 4
#endif
#ifndef TILE_M_512     // Q rows per block for D==512
#define TILE_M_512 32
#endif
#ifndef TILE_N_512     // K lanes (keys) per tile for D==512
#define TILE_N_512 16
#endif
#define D2 (DMAX / 2)

using H2 = __half2;

#ifdef USE_DOT2
// 2 fp16 muls + fp32 acc in one issue. ~13% faster on the pair kernels
// (D=64/128: fewer per-key instrs before the split-lane reduction), ~2% on
// the D=512 key-per-lane path (LDS-bound).
static __device__ __forceinline__ float dot2(float acc, H2 a, H2 b) {
    return __builtin_amdgcn_fdot2(a, b, acc, false);
}
#endif

static __device__ __forceinline__ float p2f(PTYPE x) {
    if constexpr (sizeof(PTYPE) == 2) return __half2float(x); else return x;
}
static __device__ __forceinline__ PTYPE f2p(float x) {
    if constexpr (sizeof(PTYPE) == 2) return __float2half(x); else return x;
}
#ifdef USE_PKFMA
static __device__ __forceinline__ H2 p2h2(PTYPE x) {
    if constexpr (sizeof(PTYPE) == 2) return __half2half2((__half)x);
    else return __floats2half2_rn(x, x);
}
#endif

// q,k,v,o: [B,H,S,D] fp16, contiguous. Requires D % 8 == 0, D <= DMAX.
template<int DT>
__global__ void __launch_bounds__(TILE_M)
attn_tiled_gfx906(
    const __half* __restrict__ q, const __half* __restrict__ k,
    const __half* __restrict__ v, __half* __restrict__ o,
    int B, int H, int Sq, int Skv, int D, float scale)
{
    const int row  = threadIdx.x;
    const int bh   = blockIdx.x;
    const int q0   = blockIdx.y * TILE_M + row;
    __shared__ __align__(16) H2 sK[TILE_N][D2];
    __shared__ __align__(16) H2 sV[TILE_N][D2];

    const int de   = DT ? DT : D;        // compile-time when DT>0
    const long base = (long)bh * Sq * de;
    const long bkv  = (long)bh * Skv * de;
    const bool live = q0 < Sq;

    // Q row -> fp16 registers (keeps operands fp16 -> v_fma_mix_f32 eligible)
    H2 qreg[D2] = {};
    float acc[DMAX] = {};
    if (live) {
        const uint4* qv = reinterpret_cast<const uint4*>(q + base + (long)q0 * de);
        #pragma unroll
        for (int d8 = 0; d8 < DMAX / 8; ++d8)
            if (d8 * 8 < de)
                *reinterpret_cast<uint4*>(&qreg[d8 * 4]) = qv[d8];
    }

    float m = -INFINITY, l = 0.f;
    const int cpr = de / 8;  // uint4 chunks per K/V row (constexpr when DT>0)

    for (int n0 = 0; n0 < Skv; n0 += TILE_N) {
        // cooperative load K,V tiles (uint4 = 8 halves each)
        for (int c = row; c < TILE_N * cpr; c += TILE_M) {
            int i = c / cpr, off = (c % cpr) * 8;
            int kv = n0 + i;
            if (kv < Skv) {
                *reinterpret_cast<uint4*>(&sK[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(k + bkv + (long)kv * de) + off / 8);
                *reinterpret_cast<uint4*>(&sV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(v + bkv + (long)kv * de) + off / 8);
            }
        }
        __syncthreads();

        const int nmax = min(TILE_N, Skv - n0);
        if (live) {
            // scores: dot(q, sK[i]) with 4 accumulators for ILP
            PTYPE p[TILE_N];
            float m_tile = -INFINITY;
            #pragma unroll 8
            for (int i = 0; i < nmax; ++i) {
                float a0 = 0.f, a1 = 0.f, a2 = 0.f, a3 = 0.f;
                #pragma unroll
                for (int d2 = 0; d2 < D2; d2 += 4) {
                    if (d2 * 2 < de) {
#ifdef USE_DOT2
                        a0 = dot2(a0, qreg[d2],     sK[i][d2]);
                        a1 = dot2(a1, qreg[d2 + 1], sK[i][d2 + 1]);
                        a2 = dot2(a2, qreg[d2 + 2], sK[i][d2 + 2]);
                        a3 = dot2(a3, qreg[d2 + 3], sK[i][d2 + 3]);
#else
                        float2 k0 = __half22float2(sK[i][d2]);
                        float2 k1 = __half22float2(sK[i][d2 + 1]);
                        float2 k2 = __half22float2(sK[i][d2 + 2]);
                        float2 k3 = __half22float2(sK[i][d2 + 3]);
                        float2 q0 = __half22float2(qreg[d2]);
                        float2 q1 = __half22float2(qreg[d2 + 1]);
                        float2 q2 = __half22float2(qreg[d2 + 2]);
                        float2 q3 = __half22float2(qreg[d2 + 3]);
                        a0 += q0.x * k0.x + q0.y * k0.y;
                        a1 += q1.x * k1.x + q1.y * k1.y;
                        a2 += q2.x * k2.x + q2.y * k2.y;
                        a3 += q3.x * k3.x + q3.y * k3.y;
#endif
                    }
                }
                float sc = (a0 + a1 + a2 + a3) * scale;
                p[i] = f2p(sc);
                m_tile = fmaxf(m_tile, sc);
            }
            float m_new = fmaxf(m, m_tile);
            float psum = 0.f;
            #pragma unroll 8
            for (int i = 0; i < nmax; ++i) {
                float e = __expf(p2f(p[i]) - m_new);
                p[i] = f2p(e);
                psum += e;
            }
            float rs = (l > 0.f) ? __expf(m - m_new) : 0.f;
            #pragma unroll
            for (int d = 0; d < DMAX; ++d)
                if (d < de) acc[d] *= rs;
#ifdef USE_PKFMA
            H2 hacc[D2] = {};
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                H2 pp = p2h2(p[i]);
                #pragma unroll
                for (int d2 = 0; d2 < D2; ++d2)
                    if (d2 * 2 < de)
                        hacc[d2] = __hfma2(pp, sV[i][d2], hacc[d2]);
            }
            #pragma unroll
            for (int d2 = 0; d2 < D2; ++d2)
                if (d2 * 2 < de) {
                    float2 f = __half22float2(hacc[d2]);
                    acc[2 * d2]     += f.x;
                    acc[2 * d2 + 1] += f.y;
                }
#else
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                PTYPE pi = p[i];
                #pragma unroll
                for (int d2 = 0; d2 < D2; ++d2) {
                    if (d2 * 2 < de) {
                        float2 vf = __half22float2(sV[i][d2]);
                        float pif = p2f(pi);
                        acc[2 * d2]     += pif * vf.x;
                        acc[2 * d2 + 1] += pif * vf.y;
                    }
                }
            }
#endif
            l = l * rs + psum;
            m = m_new;
        }
        __syncthreads();
    }

    if (live && l > 0.f) {
        uint4* ov = reinterpret_cast<uint4*>(o + base + (long)q0 * de);
        float inv = 1.f / l;
        #pragma unroll
        for (int d8 = 0; d8 < DMAX / 8; ++d8) {
            if (d8 * 8 < de) {
                uint4 t;
                H2* h = reinterpret_cast<H2*>(&t);
                #pragma unroll
                for (int e = 0; e < 4; ++e)
                    h[e] = __floats2half2_rn(acc[d8 * 8 + 2 * e] * inv,
                                             acc[d8 * 8 + 2 * e + 1] * inv);
                ov[d8] = t;
            }
        }
    }
}

// split variant: SPLIT lanes share a Q row, each owns DE/SPLIT head dims.
// fewer VGPRs/lane -> more waves/SIMD -> latency hiding. DE is the head dim.
template<int SPLIT, int DE>
__global__ void __launch_bounds__(TILE_M * SPLIT)
attn_pair_gfx906(
    const __half* __restrict__ q, const __half* __restrict__ k,
    const __half* __restrict__ v, __half* __restrict__ o,
    int B, int H, int Sq, int Skv, float scale)
{
    constexpr int DH = DE / SPLIT;           // dims per lane
    constexpr int DQ = DH / 2;               // half2 per lane
    const int sub  = threadIdx.x % SPLIT;    // which d-slice this lane owns
    const int row  = threadIdx.x / SPLIT;
    const int bh   = blockIdx.x;
    const int q0   = blockIdx.y * TILE_M + row;
    __shared__ __align__(16) H2 sK[TILE_N][DE / 2];
    __shared__ __align__(16) H2 sV[TILE_N][DE / 2];
#ifdef USE_LDS_XCHG
    // partial-dot mailbox: [row][i][sub] fp32
    __shared__ float sP[TILE_M][TILE_N][SPLIT];
#endif

    const long base = (long)bh * Sq * DE;
    const long bkv  = (long)bh * Skv * DE;
    const bool live = q0 < Sq;

    H2 qreg[DQ] = {};
    float acc[DH] = {};
    if (live) {
        const uint4* qv = reinterpret_cast<const uint4*>(
            q + base + (long)q0 * DE + sub * DH);
        #pragma unroll
        for (int d8 = 0; d8 < DH / 8; ++d8)
            *reinterpret_cast<uint4*>(&qreg[d8 * 4]) = qv[d8];
    }

    float m = -INFINITY, l = 0.f;
    const int cpr = DE / 8;

    for (int n0 = 0; n0 < Skv; n0 += TILE_N) {
        for (int c = threadIdx.x; c < TILE_N * cpr; c += TILE_M * SPLIT) {
            int i = c / cpr, off = (c % cpr) * 8;
            int kv = n0 + i;
            if (kv < Skv) {
                *reinterpret_cast<uint4*>(&sK[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(k + bkv + (long)kv * DE) + off / 8);
                *reinterpret_cast<uint4*>(&sV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(v + bkv + (long)kv * DE) + off / 8);
            }
        }
        __syncthreads();

        const int nmax = min(TILE_N, Skv - n0);
#ifdef USE_LDS_XCHG
        // phase 1: partial dots -> mailbox (all live threads write, then sync)
        if (live) {
            #pragma unroll 8
            for (int i = 0; i < nmax; ++i) {
                float a0 = 0.f, a1 = 0.f;
                #pragma unroll
                for (int d2 = 0; d2 < DQ; d2 += 4) {
                    int d2h = sub * DQ + d2;
#ifdef USE_DOT2
                    a0 = dot2(a0, qreg[d2],     sK[i][d2h]);
                    a0 = dot2(a0, qreg[d2 + 2], sK[i][d2h + 2]);
                    a1 = dot2(a1, qreg[d2 + 1], sK[i][d2h + 1]);
                    a1 = dot2(a1, qreg[d2 + 3], sK[i][d2h + 3]);
#else
                    float2 k0 = __half22float2(sK[i][d2h]);
                    float2 k1 = __half22float2(sK[i][d2h + 1]);
                    float2 k2 = __half22float2(sK[i][d2h + 2]);
                    float2 k3 = __half22float2(sK[i][d2h + 3]);
                    float2 q0 = __half22float2(qreg[d2]);
                    float2 q1 = __half22float2(qreg[d2 + 1]);
                    float2 q2 = __half22float2(qreg[d2 + 2]);
                    float2 q3 = __half22float2(qreg[d2 + 3]);
                    a0 += q0.x * k0.x + q0.y * k0.y + q2.x * k2.x + q2.y * k2.y;
                    a1 += q1.x * k1.x + q1.y * k1.y + q3.x * k3.x + q3.y * k3.y;
#endif
                }
                sP[row][i][sub] = a0 + a1;
            }
        }
        __syncthreads();
#endif
        if (live) {
            PTYPE p[TILE_N];
            float m_tile = -INFINITY;
            #pragma unroll 8
            for (int i = 0; i < nmax; ++i) {
#ifdef USE_LDS_XCHG
                float pd = 0.f;
                #pragma unroll
                for (int s = 0; s < SPLIT; ++s) pd += sP[row][i][s];
#else
                float a0 = 0.f, a1 = 0.f;
                #pragma unroll
                for (int d2 = 0; d2 < DQ; d2 += 4) {
                    int d2h = sub * DQ + d2;
#ifdef USE_DOT2
                    a0 = dot2(a0, qreg[d2],     sK[i][d2h]);
                    a0 = dot2(a0, qreg[d2 + 2], sK[i][d2h + 2]);
                    a1 = dot2(a1, qreg[d2 + 1], sK[i][d2h + 1]);
                    a1 = dot2(a1, qreg[d2 + 3], sK[i][d2h + 3]);
#else
                    float2 k0 = __half22float2(sK[i][d2h]);
                    float2 k1 = __half22float2(sK[i][d2h + 1]);
                    float2 k2 = __half22float2(sK[i][d2h + 2]);
                    float2 k3 = __half22float2(sK[i][d2h + 3]);
                    float2 q0 = __half22float2(qreg[d2]);
                    float2 q1 = __half22float2(qreg[d2 + 1]);
                    float2 q2 = __half22float2(qreg[d2 + 2]);
                    float2 q3 = __half22float2(qreg[d2 + 3]);
                    a0 += q0.x * k0.x + q0.y * k0.y + q2.x * k2.x + q2.y * k2.y;
                    a1 += q1.x * k1.x + q1.y * k1.y + q3.x * k3.x + q3.y * k3.y;
#endif
                }
                float pd = a0 + a1;
                #pragma unroll
                for (int s = SPLIT / 2; s > 0; s >>= 1)
                    pd += __shfl_xor(pd, s);
#endif
                float sc = pd * scale;
                p[i] = f2p(sc);
                m_tile = fmaxf(m_tile, sc);
            }
            float m_new = fmaxf(m, m_tile);
            float psum = 0.f;
            #pragma unroll 8
            for (int i = 0; i < nmax; ++i) {
                float e = __expf(p2f(p[i]) - m_new);
                p[i] = f2p(e);
                psum += e;
            }
            float rs = (l > 0.f) ? __expf(m - m_new) : 0.f;
            #pragma unroll
            for (int d = 0; d < DH; ++d) acc[d] *= rs;
#ifdef USE_PKFMA
            H2 hacc[DQ] = {};
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                H2 pp = p2h2(p[i]);
                #pragma unroll
                for (int d2 = 0; d2 < DQ; ++d2)
                    hacc[d2] = __hfma2(pp, sV[i][sub * DQ + d2], hacc[d2]);
            }
            #pragma unroll
            for (int d2 = 0; d2 < DQ; ++d2) {
                float2 f = __half22float2(hacc[d2]);
                acc[2 * d2]     += f.x;
                acc[2 * d2 + 1] += f.y;
            }
#else
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                PTYPE pi = p[i];
                float pif = p2f(pi);
                #pragma unroll
                for (int d2 = 0; d2 < DQ; ++d2) {
                    float2 vf = __half22float2(sV[i][sub * DQ + d2]);
                    acc[2 * d2]     += pif * vf.x;
                    acc[2 * d2 + 1] += pif * vf.y;
                }
            }
#endif
            l = l * rs + psum;
            m = m_new;
        }
        __syncthreads();
    }

    if (live && l > 0.f) {
        uint4* ov = reinterpret_cast<uint4*>(
            o + base + (long)q0 * DE + sub * DH);
        float inv = 1.f / l;
        #pragma unroll
        for (int d8 = 0; d8 < DH / 8; ++d8) {
            uint4 t;
            H2* h = reinterpret_cast<H2*>(&t);
            #pragma unroll
            for (int e = 0; e < 4; ++e)
                h[e] = __floats2half2_rn(acc[d8 * 8 + 2 * e] * inv,
                                         acc[d8 * 8 + 2 * e + 1] * inv);
            ov[d8] = t;
        }
    }
}


// D==512 kernel (VAE mid-block): lane owns one KEY in the QK phase (full
// 512-dim dot from sQ x sKV, no cross-lane reduction), then remaps to a
// DE/TILE_N-dim slice of the output for the V phase. gfx906 lowers
// __shfl_xor to branchy readlane/writelane sequences, so the pair kernel's
// per-key reduction is latency-bound at large SPLIT; this design removes
// per-key shuffles entirely. sKV is aliased: it holds the K tile for the
// dot phase, then the V tile for the accumulate phase (K is dead once
// scores are staged in sE). V-slice reads use 4xhalf2 chunks interleaved
// every TILE_N*4 half2s so same-row lanes hit disjoint LDS banks.
template<int TM, int TN>
__global__ void __launch_bounds__(TM * TN)
attn_d512_gfx906(
    const __half* __restrict__ q, const __half* __restrict__ k,
    const __half* __restrict__ v, __half* __restrict__ o,
    int B, int H, int Sq, int Skv, float scale)
{
    constexpr int DE = 512;
    constexpr int DQ = DE / 2;              // half2 per row
    constexpr int DH = DE / TN;             // out dims per lane in V phase
    const int sub  = threadIdx.x % TN;      // key slot (QK) / dim slice (AV)
    const int row  = threadIdx.x / TN;
    const int bh   = blockIdx.x;
    const int q0   = blockIdx.y * TM + row;
    __shared__ __align__(16) H2 sQ[TM][DQ + 8];
    __shared__ __align__(16) H2 sKV[TN][DQ + 8];  // pad: bank rotation
    __shared__ float sE[TM][TN];                  // scaled scores

    const long base = (long)bh * Sq * DE;
    const long bkv  = (long)bh * Skv * DE;
    const bool live = q0 < Sq;

    // stage Q rows into LDS once; they are re-read per K tile
    for (int c = threadIdx.x; c < TM * (DE / 8); c += TM * TN) {
        int i = c / (DE / 8), off = (c % (DE / 8)) * 8;
        int qq = blockIdx.y * TM + i;
        if (qq < Sq)
            *reinterpret_cast<uint4*>(&sQ[i][off / 2]) =
                *(reinterpret_cast<const uint4*>(q + base + (long)qq * DE) + off / 8);
    }
    __syncthreads();

    float m = -INFINITY, l = 0.f;
    float acc[DH] = {};

    for (int n0 = 0; n0 < Skv; n0 += TILE_N) {
        // cooperative load of K tile (padded rows)
        for (int c = threadIdx.x; c < TN * (DE / 8); c += TM * TN) {
            int i = c / (DE / 8), off = (c % (DE / 8)) * 8;
            int kv = n0 + i;
            if (kv < Skv)
                *reinterpret_cast<uint4*>(&sKV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(k + bkv + (long)kv * DE) + off / 8);
        }
        __syncthreads();

        const int nmax = min(TN, Skv - n0);
        // QK phase: lane sub owns key n0+sub, full 512-dim dot
        if (live) {
            float sc;
            if (sub < nmax) {
                float a0 = 0.f, a1 = 0.f, a2 = 0.f, a3 = 0.f;
                #pragma unroll 4
                for (int d2 = 0; d2 < DQ; d2 += 4) {
#ifdef USE_DOT2
                    a0 = dot2(a0, sQ[row][d2],     sKV[sub][d2]);
                    a1 = dot2(a1, sQ[row][d2 + 1], sKV[sub][d2 + 1]);
                    a2 = dot2(a2, sQ[row][d2 + 2], sKV[sub][d2 + 2]);
                    a3 = dot2(a3, sQ[row][d2 + 3], sKV[sub][d2 + 3]);
#else
                    float2 k0 = __half22float2(sKV[sub][d2]);
                    float2 k1 = __half22float2(sKV[sub][d2 + 1]);
                    float2 k2 = __half22float2(sKV[sub][d2 + 2]);
                    float2 k3 = __half22float2(sKV[sub][d2 + 3]);
                    float2 q0f = __half22float2(sQ[row][d2]);
                    float2 q1f = __half22float2(sQ[row][d2 + 1]);
                    float2 q2f = __half22float2(sQ[row][d2 + 2]);
                    float2 q3f = __half22float2(sQ[row][d2 + 3]);
                    a0 += q0f.x * k0.x + q0f.y * k0.y;
                    a1 += q1f.x * k1.x + q1f.y * k1.y;
                    a2 += q2f.x * k2.x + q2f.y * k2.y;
                    a3 += q3f.x * k3.x + q3f.y * k3.y;
#endif
                }
                sc = (a0 + a1 + a2 + a3) * scale;
            } else {
                sc = -INFINITY;
            }
            sE[row][sub] = sc;
        }
        __syncthreads();

        // K is dead: reload sKV with the V tile
        for (int c = threadIdx.x; c < TN * (DE / 8); c += TM * TN) {
            int i = c / (DE / 8), off = (c % (DE / 8)) * 8;
            int kv = n0 + i;
            if (kv < Skv)
                *reinterpret_cast<uint4*>(&sKV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(v + bkv + (long)kv * DE) + off / 8);
        }
        __syncthreads();

        // softmax + V phase: lane owns dims {TN*4*j + sub*4 .. +3} half2s
        if (live) {
            float m_tile = -INFINITY;
            #pragma unroll
            for (int i = 0; i < TN; ++i)
                if (i < nmax) m_tile = fmaxf(m_tile, sE[row][i]);
            float m_new = fmaxf(m, m_tile);
            float rs = (l > 0.f) ? __expf(m - m_new) : 0.f;
            float psum = 0.f;
            #pragma unroll
            for (int d = 0; d < DH; ++d) acc[d] *= rs;
#ifdef USE_PKFMA
            H2 hacc[DH / 2] = {};
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                float e = __expf(sE[row][i] - m_new);
                psum += e;
                H2 ee = __floats2half2_rn(e, e);
                #pragma unroll
                for (int d2 = 0; d2 < DH / 2; d2 += 4) {
                    int d2h = d2 * TN + sub * 4;
                    hacc[d2]     = __hfma2(ee, sKV[i][d2h],     hacc[d2]);
                    hacc[d2 + 1] = __hfma2(ee, sKV[i][d2h + 1], hacc[d2 + 1]);
                    hacc[d2 + 2] = __hfma2(ee, sKV[i][d2h + 2], hacc[d2 + 2]);
                    hacc[d2 + 3] = __hfma2(ee, sKV[i][d2h + 3], hacc[d2 + 3]);
                }
            }
            #pragma unroll
            for (int d2 = 0; d2 < DH / 2; ++d2) {
                float2 f = __half22float2(hacc[d2]);
                acc[2 * d2]     += f.x;
                acc[2 * d2 + 1] += f.y;
            }
#else
            #pragma unroll 4
            for (int i = 0; i < nmax; ++i) {
                float e = __expf(sE[row][i] - m_new);
                psum += e;
                #pragma unroll
                for (int d2 = 0; d2 < DH / 2; d2 += 4) {
                    int d2h = d2 * TN + sub * 4;
                    float2 v0 = __half22float2(sKV[i][d2h]);
                    float2 v1 = __half22float2(sKV[i][d2h + 1]);
                    float2 v2 = __half22float2(sKV[i][d2h + 2]);
                    float2 v3 = __half22float2(sKV[i][d2h + 3]);
                    acc[2 * d2]     += e * v0.x;
                    acc[2 * d2 + 1] += e * v0.y;
                    acc[2 * d2 + 2] += e * v1.x;
                    acc[2 * d2 + 3] += e * v1.y;
                    acc[2 * d2 + 4] += e * v2.x;
                    acc[2 * d2 + 5] += e * v2.y;
                    acc[2 * d2 + 6] += e * v3.x;
                    acc[2 * d2 + 7] += e * v3.y;
                }
            }
#endif
            l = l * rs + psum;
            m = m_new;
        }
        __syncthreads();
    }

    if (live && l > 0.f) {
        // acc[8j..8j+7] holds dims (TN*4*j + sub*4 .. +3)*2 -> uint4 j*TN+sub
        uint4* ov = reinterpret_cast<uint4*>(o + base + (long)q0 * DE);
        float inv = 1.f / l;
        #pragma unroll
        for (int j = 0; j < DH / 8; ++j) {
            uint4 t;
            H2* h = reinterpret_cast<H2*>(&t);
            #pragma unroll
            for (int e = 0; e < 4; ++e)
                h[e] = __floats2half2_rn(acc[j * 8 + 2 * e] * inv,
                                         acc[j * 8 + 2 * e + 1] * inv);
            ov[j * TN + sub] = t;
        }
    }
}

extern "C" void launch(const void* q, const void* k, const void* v, void* o,
                       int B,int H,int Sq,int Skv,int D,float scale, hipStream_t s)
{
    if (D == 64) {
        dim3 grid(B*H, (Sq + TILE_M - 1) / TILE_M);
        hipLaunchKernelGGL((attn_pair_gfx906<SPLIT_K, 64>), grid,
                           dim3(TILE_M * SPLIT_K), 0, s,
            (const __half*)q, (const __half*)k, (const __half*)v, (__half*)o,
            B, H, Sq, Skv, scale);
        return;
    }
    if (D == 128) {
        dim3 grid(B*H, (Sq + TILE_M - 1) / TILE_M);
        hipLaunchKernelGGL((attn_pair_gfx906<SPLIT_K_128, 128>), grid,
                           dim3(TILE_M * SPLIT_K_128), 0, s,
            (const __half*)q, (const __half*)k, (const __half*)v, (__half*)o,
            B, H, Sq, Skv, scale);
        return;
    }
    if (D == 512) {
        dim3 grid(B*H, (Sq + TILE_M_512 - 1) / TILE_M_512);
        hipLaunchKernelGGL((attn_d512_gfx906<TILE_M_512, TILE_N_512>), grid,
                           dim3(TILE_M_512 * TILE_N_512), 0, s,
            (const __half*)q, (const __half*)k, (const __half*)v, (__half*)o,
            B, H, Sq, Skv, scale);
        return;
    }
    dim3 grid(B*H, (Sq + TILE_M - 1) / TILE_M);
    dim3 blk(TILE_M);
    hipLaunchKernelGGL(attn_tiled_gfx906<0>, grid, blk, 0, s,
        (const __half*)q, (const __half*)k, (const __half*)v, (__half*)o,
        B, H, Sq, Skv, D, scale);
}
