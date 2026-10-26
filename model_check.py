# CPU-only model of the pair kernel's lane->dim map and cross-lane reduction.
# Validates index algebra of the USE_ILV interleave and the USE_RED_DPP /
# USE_RED_SWIZZLE reductions WITHOUT a GPU: every check is pure python/numpy.
# Run: python3 model_check.py
import numpy as np

TILE_N = 16
BANKS = 32  # gfx9 LDS banks, 4B words; half2 index == word index


def lane_h2(sub, SPLIT, DQ, d2, ilv):
    # half2 index of lane-local element d2 inside a K/V row (LANE_H2 in .hip)
    if ilv:
        return 4 * sub + 4 * SPLIT * (d2 >> 2) + (d2 & 3)
    return sub * DQ + d2


def quad_perm(src, sel):
    # DPP quad_perm:[a,b,c,d]: lane l in quad q reads lane 4q + sel[l&3]
    out = np.empty_like(src)
    for l in range(64):
        out[l] = src[4 * (l // 4) + sel[l & 3]]
    return out


def ds_swizzle(src, s):
    # ds_swizzle_b32 BITMASK_PERM s<<10: lane l reads lane l^s
    out = np.empty_like(src)
    for l in range(64):
        out[l] = src[l ^ s]
    return out


def check_maps():
    for SPLIT in (2, 4, 8):
        for DE in (64, 128, 256):
            DQ = DE // (2 * SPLIT)
            for ilv in (False, True):
                if ilv and DQ % 4:
                    continue
                seen = {}
                for sub in range(SPLIT):
                    for d2 in range(DQ):
                        h = lane_h2(sub, SPLIT, DQ, d2, ilv)
                        assert 0 <= h < DE // 2, (SPLIT, DE, sub, d2, h)
                        assert h not in seen, (SPLIT, DE, sub, d2, h)
                        seen[h] = (sub, d2)
                assert len(seen) == DE // 2
    print("lane->dim map: bijection OK for strided + interleaved")


def check_reductions():
    rng = np.random.default_rng(0)
    pd = rng.standard_normal(64).astype(np.float32)
    # SPLIT=4 groups are aligned quads (sub = lane % 4)
    want = np.repeat(pd.reshape(16, 4).sum(1), 4)
    r = pd + quad_perm(pd, [2, 3, 0, 1])
    r = r + quad_perm(r, [1, 0, 3, 2])
    np.testing.assert_allclose(r, want, rtol=1e-6)
    r = pd + ds_swizzle(pd, 2)
    r = r + ds_swizzle(r, 1)
    np.testing.assert_allclose(r, want, rtol=1e-6)
    # SPLIT=8 groups = two quads; xor distance 4 crosses the quad boundary.
    pd8 = rng.standard_normal(64).astype(np.float32)
    want8 = np.repeat(pd8.reshape(8, 8).sum(1), 8)
    r = pd8 + ds_swizzle(pd8, 4)
    r = r + ds_swizzle(r, 2)
    r = r + ds_swizzle(r, 1)
    np.testing.assert_allclose(r, want8, rtol=1e-6)
    print("reduction: quad_perm + ds_swizzle xor == full group sum")


def bank_conflicts(SPLIT, DE, ilv):
    # A wavefront's 64 lanes = 16 rows x SPLIT subs reading sK[i][d2h..+3]
    # (one ds_read_b128 per 4-half2 group). Distinct chunks sharing a bank
    # serialize. Return worst-case multiplicity.
    DQ = DE // (2 * SPLIT)
    worst = 0
    for d2 in range(0, DQ, 4):
        banks = {}
        for sub in range(SPLIT):
            base = lane_h2(sub, SPLIT, DQ, d2, ilv)
            for j in range(4):
                b = (base + j) % BANKS
                banks.setdefault(b, []).append((sub, base))
        for b, hits in banks.items():
            distinct = {h[1] for h in hits}
            worst = max(worst, len(distinct))
    return worst


def check_banks():
    for SPLIT, DE in ((4, 64), (4, 128), (8, 64), (8, 128)):
        if DE // (2 * SPLIT) % 4:
            continue
        old = bank_conflicts(SPLIT, DE, ilv=False)
        new = bank_conflicts(SPLIT, DE, ilv=True)
        print(f"  SPLIT={SPLIT} DE={DE}: worst bank multiplicity "
              f"strided={old} interleaved={new}")
        assert new <= old


def attn_pair_model(q, k, v, scale, SPLIT=4, ilv=True):
    # numpy emulation of attn_pair_gfx906: per-lane dim slices, per-tile
    # partial dots combined by the xor reduction, online softmax.
    B, H, S, DE = q.shape
    DQ = DE // (2 * SPLIT)
    dims = [[2 * lane_h2(s, SPLIT, DQ, d2, ilv) + e
             for d2 in range(DQ) for e in (0, 1)] for s in range(SPLIT)]
    dims = [np.array(d) for d in dims]
    o = np.zeros_like(q)
    Skv = k.shape[2]
    for b in range(B):
        for h in range(H):
            for row in range(S):
                m, l = -np.inf, 0.0
                acc = [np.zeros(DE // SPLIT) for _ in range(SPLIT)]
                for n0 in range(0, Skv, TILE_N):
                    nmax = min(TILE_N, Skv - n0)
                    p = np.empty(nmax)
                    for i in range(nmax):
                        pd = 0.0  # == xreduce over the SPLIT partial dots
                        for s in range(SPLIT):
                            pd += float(q[b, h, row, dims[s]] @
                                        k[b, h, n0 + i, dims[s]])
                        p[i] = pd * scale
                    m_new = max(m, p.max())
                    e = np.exp(p - m_new)
                    rs = np.exp(m - m_new) if l > 0 else 0.0
                    for s in range(SPLIT):
                        acc[s] = acc[s] * rs + e @ v[b, h, n0:n0 + nmax][:, dims[s]]
                    l = l * rs + e.sum()
                    m = m_new
                for s in range(SPLIT):
                    o[b, h, row, dims[s]] = acc[s] / l
    return o


def check_math():
    rng = np.random.default_rng(1)
    for SPLIT, DE in ((4, 64), (4, 128)):
        for ilv in (False, True):
            q = rng.standard_normal((1, 2, 37, DE))
            k = rng.standard_normal((1, 2, 83, DE))  # odd lens, Sq != Skv
            v = rng.standard_normal((1, 2, 83, DE))
            out = attn_pair_model(q, k, v, 0.125, SPLIT, ilv)
            p = np.exp(q @ k.transpose(0, 1, 3, 2) * 0.125 -
                       (q @ k.transpose(0, 1, 3, 2) * 0.125).max(-1, keepdims=True))
            ref = p @ v / p.sum(-1, keepdims=True)
            err = np.abs(out - ref).max()
            assert err < 1e-5, (SPLIT, DE, ilv, err)
    print("pair-kernel math model == direct attention (SPLIT=4, D=64/128,"
          " strided + interleaved, odd S, Sq != Skv)")


if __name__ == "__main__":
    check_maps()
    check_reductions()
    check_banks()
    check_math()
    print("all model checks passed")
