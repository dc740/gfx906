import sys
import types
import unittest
from unittest import mock

import torch

from deploy import gfx906_attention as attention


class VaeHookTest(unittest.TestCase):
    def test_factory_preserves_selected_fallback(self):
        def normal(q, k, v):
            return "normal"

        def pytorch(q, k, v):
            return "pytorch"

        def other(q, k, v):
            return "other"

        for selected in (normal, pytorch, other):
            with self.subTest(selected=selected.__name__):
                model = types.SimpleNamespace(
                    normal_attention=normal, pytorch_attention=pytorch,
                    vae_attention=lambda: selected,
                )
                modules = {
                    name: types.ModuleType(name) for name in (
                        "comfy", "comfy.ldm", "comfy.ldm.modules",
                        "comfy.ldm.modules.diffusionmodules",
                    )
                }
                modules["comfy.ldm.modules.diffusionmodules"].model = model
                with mock.patch.dict(sys.modules, modules), mock.patch.object(
                    attention, "_stock_normal_attention", None
                ):
                    attention._install_vae_hook()
                    fn = model.vae_attention()
                    if selected is other:
                        self.assertIs(fn, other)
                    self.assertEqual(fn(torch.zeros(1), None, None),
                                     selected(None, None, None))

    def test_kernel_error_uses_selected_fallback(self):
        class Tensor:
            is_cuda = True
            dtype = torch.float16
            shape = (1, 512, 2, 2)

            def dim(self):
                return 4

            def reshape(self, *args):
                return self

            def transpose(self, *args):
                return self

            def unsqueeze(self, *args):
                return self

        tensor = Tensor()
        kernel = types.SimpleNamespace(attn=mock.Mock(side_effect=RuntimeError))
        with mock.patch.object(attention.gfx906_attn, "load_attention",
                               return_value=kernel):
            self.assertEqual(attention._vae_attn(
                tensor, tensor, tensor, lambda q, k, v: "fallback"), "fallback")


if __name__ == "__main__":
    unittest.main()
