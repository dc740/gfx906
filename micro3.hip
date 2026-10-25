#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>
#include <cstdio>
extern "C" void launch(const void*,const void*,const void*,void*,int,int,int,int,int,float,hipStream_t);
int main(){
    int B=1,H=8,S=4096,D=64;
    size_t n=(size_t)B*H*S*D;
    __half *q,*k,*v,*o;
    hipMalloc(&q,n*2); hipMalloc(&k,n*2); hipMalloc(&v,n*2); hipMalloc(&o,n*2);
    hipMemset(q,0x3c,n*2); hipMemset(k,0x3c,n*2); hipMemset(v,0x3c,n*2);
    hipEvent_t a,b; hipEventCreate(&a); hipEventCreate(&b); float ms;
    for(int i=0;i<5;++i){
        hipEventRecord(a);
        launch(q,k,v,o,B,H,S,S,D,0.125f,0);
        hipEventRecord(b); hipEventSynchronize(b); hipEventElapsedTime(&ms,a,b);
        printf("ext launch: %.3f ms\n",ms);
    }
    return 0;
}
