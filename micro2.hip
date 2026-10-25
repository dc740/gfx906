#include <hip/hip_runtime.h>
#include <hip/hip_fp16.h>
#include <cstdio>

constexpr int TILE_M=64, TILE_N=64, DMAX=64, D2=DMAX/2;
using H2 = __half2;

// stages: 0=nothing 1=+qload 2=+kvload 3=+qk 4=+pv(full)
template<int STAGE>
__global__ void __launch_bounds__(TILE_M) kern(
    const __half* __restrict__ q, const __half* __restrict__ k,
    const __half* __restrict__ v, __half* __restrict__ o,
    int B,int H,int Sq,int Skv,int D,float scale)
{
    const int row=threadIdx.x, bh=blockIdx.x, q0=blockIdx.y*TILE_M+row;
    __shared__ __align__(16) H2 sK[TILE_N][D2];
    __shared__ __align__(16) H2 sV[TILE_N][D2];
    const long base=(long)bh*Sq*D;
    const bool live=q0<Sq;
    float qreg[DMAX]={}, acc[DMAX]={};
    if (STAGE>=1 && live) {
        const uint4* qv=reinterpret_cast<const uint4*>(q+base+(long)q0*D);
        #pragma unroll
        for (int d8=0; d8<DMAX/8; ++d8) {
            const H2* h=reinterpret_cast<const H2*>(&qv[d8]);
            #pragma unroll
            for (int e=0;e<4;++e){float2 f=__half22float2(h[e]);qreg[d8*8+2*e]=f.x;qreg[d8*8+2*e+1]=f.y;}
        }
    }
    float m=-INFINITY,l=0.f;
    const int cpr=D/8;
    for (int n0=0;n0<Skv;n0+=TILE_N) {
        if (STAGE>=2) {
            for (int c=row;c<TILE_N*cpr;c+=TILE_M) {
                int i=c/cpr,off=(c%cpr)*8,kv=n0+i;
                if (kv<Skv) {
                    *reinterpret_cast<uint4*>(&sK[i][off/2])=*(reinterpret_cast<const uint4*>(k+base+(long)kv*D)+off/8);
                    *reinterpret_cast<uint4*>(&sV[i][off/2])=*(reinterpret_cast<const uint4*>(v+base+(long)kv*D)+off/8);
                }
            }
        }
        __syncthreads();
        const int nmax=min(TILE_N,Skv-n0);
        if (STAGE>=3 && live) {
            float p[TILE_N]; float m_tile=-INFINITY;
            #pragma unroll 8
            for (int i=0;i<nmax;++i){
                float a0=0,a1=0,a2=0,a3=0;
                #pragma unroll
                for (int d2=0;d2<D2;d2+=4){
                    float2 k0=__half22float2(sK[i][d2]),k1=__half22float2(sK[i][d2+1]),k2=__half22float2(sK[i][d2+2]),k3=__half22float2(sK[i][d2+3]);
                    a0+=qreg[2*d2]*k0.x+qreg[2*d2+1]*k0.y; a1+=qreg[2*d2+2]*k1.x+qreg[2*d2+3]*k1.y;
                    a2+=qreg[2*d2+4]*k2.x+qreg[2*d2+5]*k2.y; a3+=qreg[2*d2+6]*k3.x+qreg[2*d2+7]*k3.y;
                }
                float sc=(a0+a1+a2+a3)*scale; p[i]=sc; m_tile=fmaxf(m_tile,sc);
            }
            float m_new=fmaxf(m,m_tile),psum=0;
            #pragma unroll 8
            for (int i=0;i<nmax;++i){float e=__expf(p[i]-m_new);p[i]=e;psum+=e;}
            float rs=(l>0)?__expf(m-m_new):0;
            #pragma unroll
            for (int d=0;d<DMAX;++d) acc[d]*=rs;
            if (STAGE>=4)
            #pragma unroll 4
            for (int i=0;i<nmax;++i){
                float pi=p[i];
                #pragma unroll
                for (int d2=0;d2<D2;++d2){float2 vf=__half22float2(sV[i][d2]);acc[2*d2]+=pi*vf.x;acc[2*d2+1]+=pi*vf.y;}
            }
            l=l*rs+psum; m=m_new;
        }
        __syncthreads();
    }
    if (live && l>0) {
        uint4* ov=reinterpret_cast<uint4*>(o+base+(long)q0*D);
        float inv=1.f/l;
        #pragma unroll
        for (int d8=0;d8<DMAX/8;++d8){
            uint4 t; H2* h=reinterpret_cast<H2*>(&t);
            #pragma unroll
            for (int e=0;e<4;++e) h[e]=__floats2half2_rn(acc[d8*8+2*e]*inv,acc[d8*8+2*e+1]*inv);
            ov[d8]=t;
        }
    }
}

int main() {
    int B=1,H=8,S=4096,D=64;
    size_t n=(size_t)B*H*S*D;
    __half *q,*k,*v,*o;
    hipMalloc(&q,n*2); hipMalloc(&k,n*2); hipMalloc(&v,n*2); hipMalloc(&o,n*2);
    hipMemset(q,0x3c,n*2); hipMemset(k,0x3c,n*2); hipMemset(v,0x3c,n*2);
    hipEvent_t a,b; hipEventCreate(&a); hipEventCreate(&b); float ms;
    dim3 g(B*H,(S+TILE_M-1)/TILE_M), t(TILE_M);
    auto run=[&](auto stage){
        for(int i=0;i<3;++i){ hipEventRecord(a); stage<<<g,t>>>(q,k,v,o,B,H,S,S,D,0.125f); hipEventRecord(b); hipEventSynchronize(b); hipEventElapsedTime(&ms,a,b); }
        printf("stage: %.3f ms\n",ms);
    };
    run(kern<0>); run(kern<1>); run(kern<2>); run(kern<3>); run(kern<4>);
    return 0;
}
