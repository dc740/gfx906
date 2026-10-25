#include <torch/extension.h>
#include <ATen/hip/HIPContext.h>
#include <ATen/DeviceGuard.h>
extern "C" void launch(const void*, const void*, const void*, void*,
                       int,int,int,int,int,float, hipStream_t);
torch::Tensor attn(torch::Tensor q, torch::Tensor k, torch::Tensor v, double scale) {
    TORCH_CHECK(q.is_cuda() && q.dtype() == torch::kHalf);
    const at::DeviceGuard guard(q.device());
    TORCH_CHECK(k.sizes() == v.sizes() &&
                q.size(0) == k.size(0) && q.size(1) == k.size(1) &&
                q.size(3) == k.size(3), "kernel: q/k/v shape mismatch");
    auto B=q.size(0), H=q.size(1), Sq=q.size(2), Skv=k.size(2), D=q.size(3);
    TORCH_CHECK((D <= 64 && D % 8 == 0) || D == 128 || D == 512,
                "kernel: head_dim<=64 multiple of 8, 128, or 512");
    auto qc = q.contiguous(), kc = k.contiguous(), vc = v.contiguous();
    auto o = torch::empty_like(qc);
    launch(qc.data_ptr(), kc.data_ptr(), vc.data_ptr(), o.data_ptr(),
           B,H,Sq,Skv,(int)D,(float)scale, at::cuda::getCurrentHIPStream());
    return o;
}
PYBIND11_MODULE(TORCH_EXTENSION_NAME, m){ m.def("attn",&attn); }
