// probe_dot.hip: v_dot2_f32_f16 / v_dot4_i32_i8 on gfx906 (MI60)
// (a) assembles+executes, (b) correct vs scalar fp32/i32 ref, (c) TFLOPS
#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <vector>
#include <random>
#include <algorithm>

#define CK(x) do { hipError_t e_ = (x); if (e_ != hipSuccess) { \
    fprintf(stderr, "HIP %s:%d -> %s\n", __FILE__, __LINE__, \
            hipGetErrorString(e_)); exit(1); } } while (0)

using H2 = __half2;

__device__ __forceinline__ float dot2(float acc, unsigned a, unsigned b) {
    float d;
    asm("v_dot2_f32_f16 %0, %1, %2, %3" : "=v"(d) : "v"(a), "v"(b), "v"(acc));
    return d;
}
__device__ __forceinline__ float dot2h(float acc, H2 a, H2 b) {
    return dot2(acc, __builtin_bit_cast(unsigned, a),
                    __builtin_bit_cast(unsigned, b));
}
__device__ __forceinline__ int dot4i(int acc, int a, int b) {
    int d;
    asm("v_dot4_i32_i8 %0, %1, %2, %3" : "=v"(d) : "v"(a), "v"(b), "v"(acc));
    return d;
}

// ---------------- correctness: D-dim fp16 dot ----------------
__global__ void k_dot2_f16(const __half* q, const __half* k, float* out,
                           int D, int NK)
{
    int key = blockIdx.x * blockDim.x + threadIdx.x;
    if (key >= NK) return;
    const H2* qh = reinterpret_cast<const H2*>(q);
    const H2* kh = reinterpret_cast<const H2*>(k + (long)key * D);
    float a0 = 0.f, a1 = 0.f, a2 = 0.f, a3 = 0.f;
    int i = 0;
    for (; i + 4 <= D / 2; i += 4) {
        a0 = dot2h(a0, qh[i],     kh[i]);
        a1 = dot2h(a1, qh[i + 1], kh[i + 1]);
        a2 = dot2h(a2, qh[i + 2], kh[i + 2]);
        a3 = dot2h(a3, qh[i + 3], kh[i + 3]);
    }
    for (; i < D / 2; ++i) a0 = dot2h(a0, qh[i], kh[i]);
    out[key] = a0 + a1 + a2 + a3;
}

__global__ void k_fma_f16(const __half* q, const __half* k, float* out,
                          int D, int NK)
{
    int key = blockIdx.x * blockDim.x + threadIdx.x;
    if (key >= NK) return;
    const H2* qh = reinterpret_cast<const H2*>(q);
    const H2* kh = reinterpret_cast<const H2*>(k + (long)key * D);
    float a0 = 0.f, a1 = 0.f;
    for (int i = 0; i < D / 2; ++i) {
        float2 qf = __half22float2(qh[i]);
        float2 kf = __half22float2(kh[i]);
        a0 += qf.x * kf.x;
        a1 += qf.y * kf.y;
    }
    out[key] = a0 + a1;
}

// ---------------- correctness: i8x4 dot ----------------
__global__ void k_dot4_i8(const int* q, const int* k, int* out, int DQ, int NK)
{
    int key = blockIdx.x * blockDim.x + threadIdx.x;
    if (key >= NK) return;
    int a = 0;
    for (int i = 0; i < DQ; ++i)
        a = dot4i(a, q[i], k[(long)key * DQ + i]);
    out[key] = a;
}

// ---------------- raw issue-rate bench ----------------
// register-resident operands, 8 independent accs -> pure ALU rate
template<int MODE>
__global__ void __launch_bounds__(256)
bench_raw(const H2* init, float* out, int iters)
{
    H2 q[4], k[4];
    #pragma unroll
    for (int j = 0; j < 4; ++j) {
        q[j] = init[threadIdx.x % 64];
        k[j] = init[64 + (threadIdx.x + j) % 64];
    }
    float a0 = 0, a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0, a7 = 0;
    if (MODE) {
        for (int i = 0; i < iters; ++i) {
            int s = i & 3;
            a0 = dot2h(a0, q[0], k[s]);
            a1 = dot2h(a1, q[1], k[(s + 1) & 3]);
            a2 = dot2h(a2, q[2], k[(s + 2) & 3]);
            a3 = dot2h(a3, q[3], k[(s + 3) & 3]);
            a4 = dot2h(a4, q[0], k[(s + 1) & 3]);
            a5 = dot2h(a5, q[1], k[(s + 2) & 3]);
            a6 = dot2h(a6, q[2], k[(s + 3) & 3]);
            a7 = dot2h(a7, q[3], k[s]);
        }
    } else {
        for (int i = 0; i < iters; ++i) {
            int s = i & 3;
            float2 q0 = __half22float2(q[0]), q1 = __half22float2(q[1]);
            float2 q2 = __half22float2(q[2]), q3 = __half22float2(q[3]);
            float2 k0 = __half22float2(k[s]);
            float2 k1 = __half22float2(k[(s + 1) & 3]);
            float2 k2 = __half22float2(k[(s + 2) & 3]);
            float2 k3 = __half22float2(k[(s + 3) & 3]);
            a0 += q0.x * k0.x + q0.y * k0.y;
            a1 += q1.x * k1.x + q1.y * k1.y;
            a2 += q2.x * k2.x + q2.y * k2.y;
            a3 += q3.x * k3.x + q3.y * k3.y;
            a4 += q0.x * k1.x + q0.y * k1.y;
            a5 += q1.x * k2.x + q1.y * k2.y;
            a6 += q2.x * k3.x + q2.y * k3.y;
            a7 += q3.x * k0.x + q3.y * k0.y;
        }
    }
    float r = a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7;
    if (r == -12345.f) out[threadIdx.x] = r;  // never true; defeats DCE
}

// ---------------- streaming bench: exact D512 QK-phase shape ----------------
// block TM*TN lanes; lane owns one key, 512-dim dot vs staged sQ rows.
template<int MODE>
__global__ void __launch_bounds__(512)
bench_stream(const __half* q, const __half* k, float* out, int Skv, int iters)
{
    constexpr int DE = 512, DQ = 256, TM = 32, TN = 16;
    __shared__ __align__(16) H2 sQ[TM][DQ + 8];
    __shared__ __align__(16) H2 sKV[TN][DQ + 8];
    const int sub = threadIdx.x % TN;
    const int row = threadIdx.x / TN;
    for (int c = threadIdx.x; c < TM * (DE / 8); c += TM * TN) {
        int i = c / (DE / 8), off = (c % (DE / 8)) * 8;
        *reinterpret_cast<uint4*>(&sQ[i][off / 2]) =
            *(reinterpret_cast<const uint4*>(q + (long)i * DE) + off / 8);
    }
    float acc = 0.f;
    for (int n0 = 0; n0 < iters * TN; n0 += TN) {
        for (int c = threadIdx.x; c < TN * (DE / 8); c += TM * TN) {
            int i = c / (DE / 8), off = (c % (DE / 8)) * 8;
            int kv = (n0 + i) % Skv;
            *reinterpret_cast<uint4*>(&sKV[i][off / 2]) =
                *(reinterpret_cast<const uint4*>(k + (long)kv * DE) + off / 8);
        }
        __syncthreads();
        if (MODE == 0) {
            float a0 = 0, a1 = 0, a2 = 0, a3 = 0;
            #pragma unroll 4
            for (int d2 = 0; d2 < DQ; d2 += 4) {
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
            }
            acc += a0 + a1 + a2 + a3;
        } else if (MODE == 1) {
            float a0 = 0, a1 = 0, a2 = 0, a3 = 0;
            #pragma unroll 4
            for (int d2 = 0; d2 < DQ; d2 += 4) {
                a0 = dot2h(a0, sQ[row][d2],     sKV[sub][d2]);
                a1 = dot2h(a1, sQ[row][d2 + 1], sKV[sub][d2 + 1]);
                a2 = dot2h(a2, sQ[row][d2 + 2], sKV[sub][d2 + 2]);
                a3 = dot2h(a3, sQ[row][d2 + 3], sKV[sub][d2 + 3]);
            }
            acc += a0 + a1 + a2 + a3;
        } else if (MODE == 2) {
            // fdot2 builtin: participates in scheduling (no asm barrier)
            float a0 = 0, a1 = 0, a2 = 0, a3 = 0;
            #pragma unroll 4
            for (int d2 = 0; d2 < DQ; d2 += 4) {
                a0 = __builtin_amdgcn_fdot2(sQ[row][d2],     sKV[sub][d2],     a0, false);
                a1 = __builtin_amdgcn_fdot2(sQ[row][d2 + 1], sKV[sub][d2 + 1], a1, false);
                a2 = __builtin_amdgcn_fdot2(sQ[row][d2 + 2], sKV[sub][d2 + 2], a2, false);
                a3 = __builtin_amdgcn_fdot2(sQ[row][d2 + 3], sKV[sub][d2 + 3], a3, false);
            }
            acc += a0 + a1 + a2 + a3;
        } else {
            // fdot2 + explicit b128 LDS loads
            float a0 = 0, a1 = 0, a2 = 0, a3 = 0;
            #pragma unroll 4
            for (int d2 = 0; d2 < DQ; d2 += 4) {
                uint4 kk = *reinterpret_cast<const uint4*>(&sKV[sub][d2]);
                uint4 qq = *reinterpret_cast<const uint4*>(&sQ[row][d2]);
                const H2* kh = reinterpret_cast<const H2*>(&kk);
                const H2* qh = reinterpret_cast<const H2*>(&qq);
                a0 = __builtin_amdgcn_fdot2(qh[0], kh[0], a0, false);
                a1 = __builtin_amdgcn_fdot2(qh[1], kh[1], a1, false);
                a2 = __builtin_amdgcn_fdot2(qh[2], kh[2], a2, false);
                a3 = __builtin_amdgcn_fdot2(qh[3], kh[3], a3, false);
            }
            acc += a0 + a1 + a2 + a3;
        }
        __syncthreads();
    }
    if (acc == -12345.f) out[row * TN + sub] = acc;
}

// i8 dot4 raw rate (for future KV-quant: 4x muls/instr vs fp16 dot2's 2x)
__global__ void __launch_bounds__(256)
bench_raw_i8(const int* init, int* out, int iters)
{
    int q[4], k[4];
    #pragma unroll
    for (int j = 0; j < 4; ++j) {
        q[j] = init[threadIdx.x % 64];
        k[j] = init[64 + (threadIdx.x + j) % 64];
    }
    int a0 = 0, a1 = 0, a2 = 0, a3 = 0, a4 = 0, a5 = 0, a6 = 0, a7 = 0;
    for (int i = 0; i < iters; ++i) {
        int s = i & 3;
        a0 = dot4i(a0, q[0], k[s]);
        a1 = dot4i(a1, q[1], k[(s + 1) & 3]);
        a2 = dot4i(a2, q[2], k[(s + 2) & 3]);
        a3 = dot4i(a3, q[3], k[(s + 3) & 3]);
        a4 = dot4i(a4, q[0], k[(s + 1) & 3]);
        a5 = dot4i(a5, q[1], k[(s + 2) & 3]);
        a6 = dot4i(a6, q[2], k[(s + 3) & 3]);
        a7 = dot4i(a7, q[3], k[s]);
    }
    int r = a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7;
    if (r == -12345) out[threadIdx.x] = r;
}

template<class F>
static double bench(F launch, int iters)
{
    hipEvent_t t0, t1;
    CK(hipEventCreate(&t0)); CK(hipEventCreate(&t1));
    launch(32);                 // warmup
    CK(hipDeviceSynchronize());
    CK(hipEventRecord(t0));
    launch(iters);
    CK(hipEventRecord(t1));
    CK(hipEventSynchronize(t1));
    float ms = 0;
    CK(hipEventElapsedTime(&ms, t0, t1));
    hipEventDestroy(t0); hipEventDestroy(t1);
    return ms;
}

int main(int argc, char** argv)
{
    int dev = argc > 1 ? atoi(argv[1]) : 0;
    CK(hipSetDevice(dev));
    std::mt19937 rng(1234);
    std::normal_distribution<float> nd(0.f, 0.5f);

    // ---- fp16 dot correctness ----
    const int D = 512, NK = 8192;
    std::vector<__half> hq(D), hk((long)NK * D);
    std::vector<float> hq_f(D), hk_f((long)NK * D);
    for (int i = 0; i < D; ++i) { hq_f[i] = nd(rng); hq[i] = __float2half(hq_f[i]); }
    for (long i = 0; i < (long)NK * D; ++i) { hk_f[i] = nd(rng); hk[i] = __float2half(hk_f[i]); }
    __half *dq, *dk; float *dout;
    CK(hipMalloc(&dq, D * 2)); CK(hipMalloc(&dk, (long)NK * D * 2));
    CK(hipMalloc(&dout, NK * 4));
    CK(hipMemcpy(dq, hq.data(), D * 2, hipMemcpyHostToDevice));
    CK(hipMemcpy(dk, hk.data(), (long)NK * D * 2, hipMemcpyHostToDevice));

    std::vector<float> ref(NK), got(NK);
    double worst_ref = 0;
    #pragma omp parallel for reduction(max : worst_ref)
    for (long key = 0; key < NK; ++key) {
        double a = 0;
        for (int i = 0; i < D; ++i) a += (double)hq_f[i] * hk_f[key * D + i];
        ref[key] = (float)a;
    }
    k_dot2_f16<<<(NK + 255) / 256, 256>>>(dq, dk, dout, D, NK);
    CK(hipDeviceSynchronize());
    CK(hipMemcpy(got.data(), dout, NK * 4, hipMemcpyDeviceToHost));
    double maxe = 0, maxr = 0;
    for (int i = 0; i < NK; ++i) {
        double e = fabs(got[i] - ref[i]);
        maxe = std::max(maxe, e);
        maxr = std::max(maxr, e / (fabs(ref[i]) + 1e-6));
    }
    printf("dot2_f16  D=%d NK=%d  max_abs=%.3e  max_rel=%.3e\n", D, NK, maxe, maxr);

    k_fma_f16<<<(NK + 255) / 256, 256>>>(dq, dk, dout, D, NK);
    CK(hipDeviceSynchronize());
    CK(hipMemcpy(got.data(), dout, NK * 4, hipMemcpyDeviceToHost));
    maxe = 0; maxr = 0;
    for (int i = 0; i < NK; ++i) {
        double e = fabs(got[i] - ref[i]);
        maxe = std::max(maxe, e);
        maxr = std::max(maxr, e / (fabs(ref[i]) + 1e-6));
    }
    printf("fma_f16   D=%d NK=%d  max_abs=%.3e  max_rel=%.3e\n", D, NK, maxe, maxr);

    // ---- i8 dot4 correctness ----
    const int DQ8 = 128;              // 128 int32 = 512 i8
    const int NK8 = 8192;
    std::vector<int> iq(DQ8), ik((long)NK8 * DQ8);
    std::uniform_int_distribution<int> id(-100, 100);
    for (auto& x : iq) x = id(rng);
    for (auto& x : ik) x = id(rng);
    int *diq, *dik, *diout;
    CK(hipMalloc(&diq, DQ8 * 4)); CK(hipMalloc(&dik, (long)NK8 * DQ8 * 4));
    CK(hipMalloc(&diout, NK8 * 4));
    CK(hipMemcpy(diq, iq.data(), DQ8 * 4, hipMemcpyHostToDevice));
    CK(hipMemcpy(dik, ik.data(), (long)NK8 * DQ8 * 4, hipMemcpyHostToDevice));
    k_dot4_i8<<<(NK8 + 255) / 256, 256>>>(diq, dik, diout, DQ8, NK8);
    CK(hipDeviceSynchronize());
    std::vector<int> igot(NK8);
    CK(hipMemcpy(igot.data(), diout, NK8 * 4, hipMemcpyDeviceToHost));
    int bad8 = 0;
    for (int key = 0; key < NK8; ++key) {
        int a = 0;
        for (int i = 0; i < DQ8; ++i) {
            int qa = iq[i], ka = ik[(long)key * DQ8 + i];
            for (int b = 0; b < 4; ++b)
                a += (int)(signed char)((qa >> (8 * b)) & 0xff)
                   * (int)(signed char)((ka >> (8 * b)) & 0xff);
        }
        if (a != igot[key]) ++bad8;
    }
    printf("dot4_i8   D=%d NK=%d  mismatches=%d\n", DQ8 * 4, NK8, bad8);

    // ---- raw rate ----
    H2* dinit; int* dinit_i; float* dummy; int* dummy_i;
    std::vector<H2> hinit(128); std::vector<int> hinit_i(128);
    for (int i = 0; i < 128; ++i) {
        hinit[i] = __floats2half2_rn(nd(rng), nd(rng));
        hinit_i[i] = id(rng);
    }
    CK(hipMalloc(&dinit, 128 * sizeof(H2)));
    CK(hipMalloc(&dinit_i, 128 * 4));
    CK(hipMalloc(&dummy, 256 * 4));
    CK(hipMalloc(&dummy_i, 256 * 4));
    CK(hipMemcpy(dinit, hinit.data(), sizeof(H2) * 128, hipMemcpyHostToDevice));
    CK(hipMemcpy(dinit_i, hinit_i.data(), 512, hipMemcpyHostToDevice));

    const int NB = 240, NT = 256, IT = 20000;
    // per launch-thread-iter: 8 half2 dots = 32 flops (fp16) / 64 madds*4B (i8)
    double raw_flops = (double)NB * NT * IT * 8 * 4;
    double ms_f = bench([&](int it) {
        bench_raw<0><<<NB, NT>>>(dinit, dummy, it); }, IT);
    double ms_d = bench([&](int it) {
        bench_raw<1><<<NB, NT>>>(dinit, dummy, it); }, IT);
    printf("raw fma_f16 : %8.2f ms -> %6.2f TFLOPS\n", ms_f, raw_flops / ms_f / 1e9);
    printf("raw dot2_f16: %8.2f ms -> %6.2f TFLOPS\n", ms_d, raw_flops / ms_d / 1e9);
    double raw_i8 = (double)NB * NT * IT * 8 * 8;
    double ms_i = bench([&](int it) {
        bench_raw_i8<<<NB, NT>>>(dinit_i, dummy_i, it); }, IT);
    printf("raw dot4_i8 : %8.2f ms -> %6.2f TIOPS\n", ms_i, raw_i8 / ms_i / 1e9);

    // ---- streaming bench (D512 QK shape) ----
    const int Skv = 4096, SB = 64, SIT = 512;
    // flops = blocks * iters * TM*TN lanes * DE*2
    double sf = (double)SB * SIT * 32 * 16 * 512 * 2;
    __half* dk2; CK(hipMalloc(&dk2, (long)Skv * D * 2));
    CK(hipMemcpy(dk2, hk.data(), (long)Skv * D * 2, hipMemcpyHostToDevice));
    double ms_s0 = bench([&](int it) {
        bench_stream<0><<<SB, 512>>>(dq, dk2, dummy, Skv, it); }, SIT);
    double ms_s1 = bench([&](int it) {
        bench_stream<1><<<SB, 512>>>(dq, dk2, dummy, Skv, it); }, SIT);
    double ms_s2 = bench([&](int it) {
        bench_stream<2><<<SB, 512>>>(dq, dk2, dummy, Skv, it); }, SIT);
    double ms_s3 = bench([&](int it) {
        bench_stream<3><<<SB, 512>>>(dq, dk2, dummy, Skv, it); }, SIT);
    printf("stream fma      : %8.2f ms -> %6.2f TFLOPS\n", ms_s0, sf / ms_s0 / 1e9);
    printf("stream dot2 asm : %8.2f ms -> %6.2f TFLOPS\n", ms_s1, sf / ms_s1 / 1e9);
    printf("stream dot2 bin : %8.2f ms -> %6.2f TFLOPS\n", ms_s2, sf / ms_s2 / 1e9);
    printf("stream dot2 b128: %8.2f ms -> %6.2f TFLOPS\n", ms_s3, sf / ms_s3 / 1e9);
    printf("speedup: raw %.2fx  stream-asm %.2fx  stream-bin %.2fx  stream-b128 %.2fx\n",
           ms_f / ms_d, ms_s0 / ms_s1, ms_s0 / ms_s2, ms_s0 / ms_s3);
    return 0;
}
