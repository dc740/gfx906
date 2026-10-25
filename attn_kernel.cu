// gfx906 tiled attention v3: no QK^T materialization, online softmax.
// Block = TILE_M Q rows (1 thread per row). K/V streamed via LDS as half2.
// fp16 inputs, fp32 accumulators. Template DT=0 -> runtime D; DT>0 -> compile-time D.
#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>

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
#define D2 (DMAX / 2)

using H2 = __half2;

static __device__ __forceinline__ float p2f(PTYPE x) {
    if constexpr (sizeof(PTYPE) == 2) return __half2float(x); else return x;
}
static __device__ __forceinline__ PTYPE f2p(float x) {
    if constexpr (sizeof(PTYPE) == 2) return __float2half(x); else return x;
}

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
                    *(reinterpret_cast<const uint4*>(k + base + (long)kv * de) + off / 8);
                *reinterpret_cast<uint4*>(&sV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(v + base + (long)kv * de) + off / 8);
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
// fewer VGPRs/lane -> more waves/SIMD -> latency hiding. D == 64 only.
template<int SPLIT>
__global__ void __launch_bounds__(TILE_M * SPLIT)
attn_pair_gfx906(
    const __half* __restrict__ q, const __half* __restrict__ k,
    const __half* __restrict__ v, __half* __restrict__ o,
    int B, int H, int Sq, int Skv, float scale)
{
    constexpr int DE = 64;
    constexpr int DH = DE / SPLIT;           // dims per lane
    constexpr int DQ = DH / 2;               // half2 per lane
    const int sub  = threadIdx.x % SPLIT;    // which d-slice this lane owns
    const int row  = threadIdx.x / SPLIT;
    const int bh   = blockIdx.x;
    const int q0   = blockIdx.y * TILE_M + row;
    __shared__ __align__(16) H2 sK[TILE_N][D2];
    __shared__ __align__(16) H2 sV[TILE_N][D2];
#ifdef USE_LDS_XCHG
    // partial-dot mailbox: [row][i][sub] fp32
    __shared__ float sP[TILE_M][TILE_N][SPLIT];
#endif

    const long base = (long)bh * Sq * DE;
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
                    *(reinterpret_cast<const uint4*>(k + base + (long)kv * DE) + off / 8);
                *reinterpret_cast<uint4*>(&sV[i][off / 2]) =
                    *(reinterpret_cast<const uint4*>(v + base + (long)kv * DE) + off / 8);
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

extern "C" void launch(const void* q, const void* k, const void* v, void* o,
                       int B,int H,int Sq,int Skv,int D,float scale, hipStream_t s)
{
    if (D == 64) {
        dim3 grid(B*H, (Sq + TILE_M - 1) / TILE_M);
        hipLaunchKernelGGL(attn_pair_gfx906<SPLIT_K>, grid,
                           dim3(TILE_M * SPLIT_K), 0, s,
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
