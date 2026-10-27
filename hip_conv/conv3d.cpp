// Torch binding for the gfx906 implicit-GEMM conv3d kernel.
// Python side (gfx906_kitchen.py) validates layouts and passes element strides.
#include <torch/extension.h>
#include <ATen/DeviceGuard.h>
#if defined(USE_ROCM) || defined(__HIP_PLATFORM_AMD__)
#include <c10/hip/HIPStream.h>
static inline void* _stream() {
    return c10::hip::getCurrentHIPStream().stream();
}
#else
#include <c10/cuda/CUDAStream.h>
static inline void* _stream() {
    return c10::cuda::getCurrentCUDAStream().stream();
}
#endif
#include <vector>

extern "C" void launch_conv3d(const void* x, const void* w, const void* bias,
                              const void* res, void* out,
                              int nB, int D, int H, int W, int C, int K,
                              int T, int R, int S, int sd, int sh, int sw,
                              int Z, int P, int Q, long M,
                              long xsn, long xsd, long xsh, long xsw,
                              long osn, long osz, long osp, long osq,
                              long rsn, long rsz, long rsp, long rsq,
                              void* stream);

// dims = {nB, D, H, W, C, K, T, R, S, sd, sh, sw, Z, P, Q}
// xs/os/rs = 4 element strides (n, d|z, h|p, w|q); channel stride must be 1.
void conv3d(torch::Tensor x, torch::Tensor w,
            c10::optional<torch::Tensor> bias,
            c10::optional<torch::Tensor> res, torch::Tensor out,
            std::vector<int64_t> dims, std::vector<int64_t> xs,
            std::vector<int64_t> os, std::vector<int64_t> rs) {
    TORCH_CHECK(dims.size() == 15 && xs.size() == 4 && os.size() == 4 &&
                    rs.size() == 4,
                "conv3d: bad dims/strides");
    const at::DeviceGuard guard(x.device());
    const long M = (long)dims[0] * dims[12] * dims[13] * dims[14];
    launch_conv3d(x.data_ptr(), w.data_ptr(),
                  bias.has_value() ? bias->data_ptr() : nullptr,
                  res.has_value() ? res->data_ptr() : nullptr,
                  out.data_ptr(),
                  (int)dims[0], (int)dims[1], (int)dims[2], (int)dims[3],
                  (int)dims[4], (int)dims[5], (int)dims[6], (int)dims[7],
                  (int)dims[8], (int)dims[9], (int)dims[10], (int)dims[11],
                  (int)dims[12], (int)dims[13], (int)dims[14], M,
                  xs[0], xs[1], xs[2], xs[3],
                  os[0], os[1], os[2], os[3],
                  rs[0], rs[1], rs[2], rs[3], _stream());
}

PYBIND11_MODULE(TORCH_EXTENSION_NAME, m) { m.def("conv3d", &conv3d); }
