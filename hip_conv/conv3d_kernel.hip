// gfx906 fp16 conv3d - implicit GEMM over NDHWC tensors (comfy_kitchen
// fp16_conv3d contract: VALID conv, fused fp16 bias + residual epilogue).
//
// No matrix cores on gfx906: accumulate in fp32 via v_dot2_f32_f16 (the
// "fp16-accumulate" opt-in upstream only means the caller tolerates fp16-class
// error; fp32 accumulation is strictly safer).
//
// GEMM view: out[n,k,z,p,q] = sum_{c,t,r,s} x[n,c,z*sd+t,p*sh+r,q*sw+s]
//                              * w[k,c,t,r,s]
// M = N*Z*P*Q output voxels, N_gemm = K out channels, K_gemm = C*T*R*S with the
// reduction index i = ((t*R + r)*S + s)*C + c: channels_last_3d weight rows
// w[k] are then contiguous in i, and for C % 8 == 0 every aligned 8-half group
// of i sits inside one (t,r,s) tap, so A tiles stage as aligned 16-byte loads.
//
// Tile: BM=128 voxels x BN=64 channels per workgroup, BK=32 reduction halves,
// 256 threads compute 8x4 fp32 accumulators each. A/B tiles are staged in LDS
// with a group-XOR swizzle to spread banks.

#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>

#ifndef BM
#define BM 128
#define BN 64
#define BK 32
#endif
#define TM 8
#define TN 4

#define NTHREADS ((BM / TM) * (BN / TN))   // 16 x 16 = 256
#define GPK (BK / 8)                       // 8-half groups per tile row

// fp32-accumulating 2xf16 dot product. __builtin_amdgcn_fdot2, never inline
// asm (asm operands broke ds_read_b128 vectorization in attn_kernel.hip).
__device__ __forceinline__ float dot2(float acc, __half2 a, __half2 b) {
#if defined(__gfx906__) || defined(__gfx908__) || defined(__gfx90a__)
    return __builtin_amdgcn_fdot2(a, b, acc, false);
#else
    // portable fallback (bring-up on other archs; LLVM may still fuse to dot2)
    float2 af = __half22float2(a), bf = __half22float2(b);
    return acc + af.x * bf.x + af.y * bf.y;
#endif
}

__device__ __forceinline__ uint4 ldg128(const void* p) {
    return *reinterpret_cast<const uint4*>(p);
}

extern "C" __global__ void __launch_bounds__(NTHREADS)
conv3d_kernel(const __half* __restrict__ x, const __half* __restrict__ w,
              const __half* __restrict__ bias, const __half* __restrict__ res,
              __half* __restrict__ out,
              int nB, int D, int H, int W, int C, int K,
              int T, int R, int S, int sd, int sh, int sw,
              int Z, int P, int Q, long M,
              long xsn, long xsd, long xsh, long xsw,
              long osn, long osz, long osp, long osq,
              long rsn, long rsz, long rsp, long rsq) {
    __shared__ __half As[BM][BK + 8];
    __shared__ __half Bs[BN][BK + 8];

    const int tid = threadIdx.x;
    const int tx = tid % (BN / TN);        // column group: TN contiguous channels
    const int ty = tid / (BN / TN);        // row group: TM contiguous voxels
    const long m0 = (long)blockIdx.x * BM;
    const int n0 = blockIdx.y * BN;
    const int KG = C * T * R * S;
    const int RS = R * S;

    float acc[TM][TN];
#pragma unroll
    for (int i = 0; i < TM; ++i)
#pragma unroll
        for (int j = 0; j < TN; ++j) acc[i][j] = 0.f;

    for (int i0 = 0; i0 < KG; i0 += BK) {
        // ---- stage A: BM voxels x BK reduction halves ---------------------
        for (int idx = tid; idx < BM * GPK; idx += NTHREADS) {
            const int m = idx / GPK;
            const int g = idx % GPK;
            const int gi = i0 + g * 8;
            uint4 v = {0, 0, 0, 0};
            const long ml = m0 + m;
            if (ml < M && gi < KG) {
                const int c0 = gi % C;
                const int tap = gi / C;
                const int t = tap / RS;
                const int r = (tap % RS) / S;
                const int s = tap % S;
                int mm = (int)ml;              // M < 2^31 (wrapper declines bigger)
                const int q = mm % Q; mm /= Q;
                const int p = mm % P; mm /= P;
                const int z = mm % Z; mm /= Z;
                const long off = (long)mm * xsn + (long)(z * sd + t) * xsd
                               + (long)(p * sh + r) * xsh
                               + (long)(q * sw + s) * xsw + c0;
                v = ldg128(x + off);
            }
            *reinterpret_cast<uint4*>(&As[m][(g ^ (m & (GPK - 1))) * 8]) = v;
        }
        // ---- stage B: BN out-channels x BK reduction halves ----------------
        for (int idx = tid; idx < BN * GPK; idx += NTHREADS) {
            const int n = idx / GPK;
            const int g = idx % GPK;
            const int gi = i0 + g * 8;
            uint4 v = {0, 0, 0, 0};
            if (n0 + n < K && gi < KG)
                v = ldg128(w + (long)(n0 + n) * KG + gi);
            *reinterpret_cast<uint4*>(&Bs[n][(g ^ (n & (GPK - 1))) * 8]) = v;
        }
        __syncthreads();

        // ---- compute ------------------------------------------------------
#pragma unroll
        for (int g = 0; g < GPK; ++g) {
            __half2 af[TM][4];
            __half2 bf[TN][4];
#pragma unroll
            for (int i = 0; i < TM; ++i) {
                const int m = ty * TM + i;
                *reinterpret_cast<uint4*>(af[i]) =
                    *reinterpret_cast<const uint4*>(
                        &As[m][(g ^ (m & (GPK - 1))) * 8]);
            }
#pragma unroll
            for (int j = 0; j < TN; ++j) {
                const int n = tx * TN + j;
                *reinterpret_cast<uint4*>(bf[j]) =
                    *reinterpret_cast<const uint4*>(
                        &Bs[n][(g ^ (n & (GPK - 1))) * 8]);
            }
#pragma unroll
            for (int kk = 0; kk < 4; ++kk)
#pragma unroll
                for (int i = 0; i < TM; ++i)
#pragma unroll
                    for (int j = 0; j < TN; ++j)
                        acc[i][j] = dot2(acc[i][j], af[i][kk], bf[j][kk]);
        }
        __syncthreads();
    }

    // ---- epilogue: fp32 bias/residual add, fp16 out -------------------------
    const int ncol = n0 + tx * TN;         // this thread's first out channel
    const bool nfull = ncol + TN <= K;     // whole TN group inside K
    float biasf[TN];
#pragma unroll
    for (int j = 0; j < TN; ++j) {
        const int kk_ = ncol + j;
        biasf[j] = (bias != nullptr && kk_ < K) ? __half2float(bias[kk_]) : 0.f;
    }

#pragma unroll
    for (int i = 0; i < TM; ++i) {
        const long ml = m0 + ty * TM + i;
        if (ml >= M) break;
        int mm = (int)ml;
        const int q = mm % Q; mm /= Q;
        const int p = mm % P; mm /= P;
        const int z = mm % Z; mm /= Z;
        const long obase = mm * osn + (long)z * osz + (long)p * osp
                         + (long)q * osq + ncol;
        if (nfull) {
            __half2 o[TN / 2];
#pragma unroll
            for (int j = 0; j < TN; j += 2) {
                float v0 = acc[i][j] + biasf[j];
                float v1 = acc[i][j + 1] + biasf[j + 1];
                if (res != nullptr) {
                    const long rb = mm * rsn + (long)z * rsz + (long)p * rsp
                                  + (long)q * rsq + ncol + j;
                    const __half2 h = *reinterpret_cast<const __half2*>(res + rb);
                    const float2 rf = __half22float2(h);
                    v0 += rf.x;
                    v1 += rf.y;
                }
                o[j / 2] = __floats2half2_rn(v0, v1);
            }
            *reinterpret_cast<uint2*>(out + obase) = *reinterpret_cast<uint2*>(o);
        } else {
#pragma unroll
            for (int j = 0; j < TN; ++j) {
                const int kk_ = ncol + j;
                if (kk_ >= K) break;
                float v = acc[i][j] + biasf[j];
                if (res != nullptr) {
                    const long rb = mm * rsn + (long)z * rsz + (long)p * rsp
                                  + (long)q * rsq + kk_;
                    v += __half2float(res[rb]);
                }
                out[obase + j] = __float2half(v);
            }
        }
    }
}

extern "C" void launch_conv3d(const void* x, const void* w, const void* bias,
                              const void* res, void* out,
                              int nB, int D, int H, int W, int C, int K,
                              int T, int R, int S, int sd, int sh, int sw,
                              int Z, int P, int Q, long M,
                              long xsn, long xsd, long xsh, long xsw,
                              long osn, long osz, long osp, long osq,
                              long rsn, long rsz, long rsp, long rsq,
                              hipStream_t stream) {
    dim3 grid((unsigned)((M + BM - 1) / BM), (unsigned)((K + BN - 1) / BN));
    conv3d_kernel<<<grid, NTHREADS, 0, stream>>>(
        (const __half*)x, (const __half*)w, (const __half*)bias,
        (const __half*)res, (__half*)out,
        nB, D, H, W, C, K, T, R, S, sd, sh, sw, Z, P, Q, M,
        xsn, xsd, xsh, xsw, osn, osz, osp, osq, rsn, rsz, rsp, rsq);
}
