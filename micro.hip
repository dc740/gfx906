#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>
#include <cstdio>
#include <cstring>

__global__ void empty_kern(__half* o) { if (threadIdx.x == 0 && blockIdx.x == 999999) o[0] = __float2half(1.f); }

__global__ void sync_loop(__half* o, int iters) {
    __shared__ __half buf[8192];
    for (int i = 0; i < iters; ++i) { __syncthreads(); buf[threadIdx.x] = __float2half(i); __syncthreads(); }
    if (threadIdx.x == 0 && blockIdx.x == 999999) o[0] = buf[0];
}

int main() {
    __half* o; hipMalloc(&o, 1024);
    hipEvent_t a, b; hipEventCreate(&a); hipEventCreate(&b);
    float ms;
    dim3 g(8, 64), t(64);
    for (int i = 0; i < 3; ++i) {
        hipEventRecord(a); empty_kern<<<g, t>>>(o); hipEventRecord(b); hipEventSynchronize(b);
        hipEventElapsedTime(&ms, a, b); printf("empty  : %.3f ms\n", ms);
        hipEventRecord(a); sync_loop<<<g, t>>>(o, 64); hipEventRecord(b); hipEventSynchronize(b);
        hipEventElapsedTime(&ms, a, b); printf("sync64 : %.3f ms\n", ms);
    }
    return 0;
}
