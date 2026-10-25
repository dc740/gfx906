#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>
#include <cstdio>
using fp32x4 = float __attribute__((ext_vector_type(4)));
using f16x4  = short __attribute__((ext_vector_type(4)));

__global__ void probe(const __half* A, const __half* B, float* D) {
    int l = threadIdx.x;
    f16x4 a = *(const f16x4*)(A + l*4);
    f16x4 b = *(const f16x4*)(B + l*4);
    fp32x4 c = {0,0,0,0};
    c = __builtin_amdgcn_mfma_f32_16x16x16f16(a,b,c,0,0,0);
    *(fp32x4*)(D + l*4) = c;
}
#define CK(x) do{ hipError_t e_=(x); printf("%s -> %d (%s)\n", #x, e_, hipGetErrorName(e_)); fflush(stdout);}while(0)
int main(){
    __half hA[256], hB[256]; float hD[256];
    for(int i=0;i<256;++i){ hA[i]=__float2half((float)(i/16) + (i%16)*0.01f); hB[i]=__float2half(0); }
    for(int i=0;i<16;++i) hB[i*16+i]=__float2half(1.f);
    __half *dA,*dB; float* dD;
    CK(hipMalloc(&dA,512)); CK(hipMalloc(&dB,512)); CK(hipMalloc(&dD,1024));
    CK(hipMemcpy(dA,hA,512,hipMemcpyHostToDevice));
    CK(hipMemcpy(dB,hB,512,hipMemcpyHostToDevice));
    probe<<<1,64>>>(dA,dB,dD);
    CK(hipGetLastError());
    CK(hipDeviceSynchronize());
    CK(hipMemcpy(hD,dD,1024,hipMemcpyDeviceToHost));
    for(int l=0;l<6;++l){ printf("lane %2d: ",l); for(int e=0;e<4;++e) printf("%6.2f ",hD[l*4+e]); printf("\n"); }
    printf("lane 60: "); for(int e=0;e<4;++e) printf("%6.2f ",hD[60*4+e]); printf("\n");
    return 0;
}
