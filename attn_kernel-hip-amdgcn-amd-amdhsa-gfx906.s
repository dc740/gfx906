	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.amdhsa_code_object_version 6
	.section	.text._Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif,comdat
	.protected	_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif ; -- Begin function _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
	.globl	_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
	.p2align	8
	.type	_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif,@function
_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif: ; @_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
; %bb.0:
	s_load_dwordx4 s[12:15], s[4:5], 0x28
	s_add_u32 s0, s0, s8
	v_lshrrev_b32_e32 v1, 2, v0
	s_addc_u32 s1, s1, 0
	v_lshl_or_b32 v9, s7, 6, v1
	s_ashr_i32 s7, s6, 31
	v_mov_b32_e32 v1, s6
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s10, s12, 31
	s_lshl_b64 s[8:9], s[6:7], 6
	v_alignbit_b32 v1, s7, v1, 26
	v_readfirstlane_b32 s6, v1
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s10, s8, s12
	v_and_b32_e32 v11, 3, v0
	s_mul_i32 s6, s6, s12
	s_add_i32 s7, s10, s7
	s_add_i32 s17, s7, s6
	s_mul_i32 s16, s8, s12
	v_cmp_gt_i32_e64 s[10:11], s12, v9
	v_mov_b32_e32 v4, 0
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b32_e32 v13, 5, v11
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v5, 0
	s_and_saveexec_b64 s[6:7], s[10:11]
	s_cbranch_execz .LBB0_2
; %bb.1:                                ; %.loopexit210.loopexit
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	s_lshl_b64 s[20:21], s[16:17], 1
	v_lshlrev_b64 v[1:2], 7, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s18, s20
	s_addc_u32 s15, s19, s21
	v_mov_b32_e32 v3, s15
	v_add_co_u32_e32 v1, vcc, s12, v1
	v_addc_co_u32_e32 v2, vcc, v3, v2, vcc
	v_lshlrev_b32_e32 v3, 5, v11
	v_add_co_u32_e32 v11, vcc, v1, v3
	v_addc_co_u32_e32 v12, vcc, 0, v2, vcc
	global_load_dwordx4 v[5:8], v[11:12], off
	global_load_dwordx4 v[1:4], v[11:12], off offset:16
.LBB0_2:                                ; %.loopexit210
	s_or_b64 exec, exec, s[6:7]
	s_load_dwordx2 s[18:19], s[4:5], 0x18
	s_cmp_lt_i32 s13, 1
	s_cbranch_scc1 .LBB0_27
; %bb.3:                                ; %.preheader209.lr.ph
	s_load_dwordx4 s[20:23], s[4:5], 0x8
	s_ashr_i32 s4, s13, 31
	s_mul_hi_u32 s5, s8, s13
	s_mul_i32 s4, s8, s4
	s_add_i32 s4, s5, s4
	s_mul_i32 s5, s9, s13
	s_add_i32 s5, s4, s5
	s_mul_i32 s4, s8, s13
	s_movk_i32 s6, 0x80
	s_lshl_b64 s[4:5], s[4:5], 1
	v_cmp_gt_u32_e64 s[6:7], s6, v0
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s20, s4
	v_lshrrev_b32_e32 v14, 3, v0
	v_and_b32_e32 v0, 7, v0
	s_addc_u32 s9, s21, s5
	v_lshlrev_b32_e32 v0, 4, v0
	v_mov_b32_e32 v11, s9
	v_add_co_u32_e32 v15, vcc, s8, v0
	s_add_u32 s4, s22, s4
	v_addc_co_u32_e32 v16, vcc, 0, v11, vcc
	v_lshl_or_b32 v17, v14, 7, v0
	v_add_co_u32_e32 v18, vcc, s4, v0
	v_mbcnt_lo_u32_b32 v0, -1, 0
	s_addc_u32 s5, s23, s5
	v_mbcnt_hi_u32_b32 v22, -1, v0
	v_mov_b32_e32 v11, s5
	v_and_b32_e32 v0, 64, v22
	v_addc_co_u32_e32 v19, vcc, 0, v11, vcc
	v_add_u32_e32 v20, 0x800, v17
	v_or_b32_e32 v21, 0x800, v13
	s_mov_b32 s12, 0
	v_mov_b32_e32 v43, 0xff800000
	v_add_u32_e32 v26, 64, v0
	v_xor_b32_e32 v28, 2, v22
	v_xor_b32_e32 v31, 1, v22
	s_mov_b32 s15, s13
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v12, 0
	s_branch .LBB0_6
.LBB0_4:                                ; %Flow821
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_fmac_f32_e32 v42, v0, v43
	v_mov_b32_e32 v43, v11
	v_mov_b32_e32 v0, v42
.LBB0_5:                                ; %Flow829
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s12, s12, 16
	s_add_i32 s15, s15, -16
	s_cmp_ge_i32 s12, s13
	s_waitcnt vmcnt(0)
	s_barrier
	s_cbranch_scc1 .LBB0_28
.LBB0_6:                                ; %.preheader209
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_11 Depth 2
                                        ;     Child Loop BB0_15 Depth 2
                                        ;     Child Loop BB0_19 Depth 2
                                        ;     Child Loop BB0_23 Depth 2
                                        ;     Child Loop BB0_26 Depth 2
	v_or_b32_e32 v11, s12, v14
	v_cmp_gt_i32_e32 vcc, s13, v11
	s_and_b64 s[8:9], s[6:7], vcc
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	v_lshlrev_b64 v[48:49], 7, v[11:12]
	v_add_co_u32_e32 v44, vcc, v15, v48
	v_addc_co_u32_e32 v45, vcc, v16, v49, vcc
	v_add_co_u32_e32 v48, vcc, v18, v48
	global_load_dwordx4 v[44:47], v[44:45], off
	v_addc_co_u32_e32 v49, vcc, v19, v49, vcc
	global_load_dwordx4 v[48:51], v[48:49], off
	s_waitcnt vmcnt(1)
	ds_write_b128 v17, v[44:47]
	s_waitcnt vmcnt(0)
	ds_write_b128 v20, v[48:51]
.LBB0_8:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[10:11]
	s_cbranch_execz .LBB0_5
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	v_med3_i32 v11, s15, 1, 16
	s_cmp_gt_i32 s13, s12
	v_readfirstlane_b32 s22, v11
	s_cselect_b64 s[20:21], -1, 0
	s_cmp_le_i32 s13, s12
	v_mov_b32_e32 v45, 0xff800000
	s_cbranch_scc1 .LBB0_12
; %bb.10:                               ; %.preheader.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_cmp_lt_i32_e32 vcc, v28, v26
	v_cndmask_b32_e32 v11, v22, v28, vcc
	v_cmp_lt_i32_e32 vcc, v31, v26
	v_cndmask_b32_e32 v42, v22, v31, vcc
	v_lshlrev_b32_e32 v11, 2, v11
	v_lshlrev_b32_e32 v42, 2, v42
	s_mov_b32 s8, 0
	v_mov_b32_e32 v45, 0xff800000
	v_mov_b32_e32 v44, v13
	s_mov_b32 s9, s22
.LBB0_11:                               ; %.preheader
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[46:49], v44
	ds_read_b128 v[50:53], v44 offset:16
	v_mov_b32_e32 v54, s8
	v_max_f32_e32 v45, v45, v45
	s_add_i32 s9, s9, -1
	s_waitcnt lgkmcnt(1)
	v_dot2_f32_f16 v46, v5, v46, 0
	v_dot2_f32_f16 v47, v6, v47, 0
	v_dot2_f32_f16 v46, v7, v48, v46
	v_dot2_f32_f16 v47, v8, v49, v47
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v46, v1, v50, v46
	v_dot2_f32_f16 v47, v2, v51, v47
	v_dot2_f32_f16 v46, v3, v52, v46
	v_dot2_f32_f16 v47, v4, v53, v47
	v_add_f32_e32 v46, v47, v46
	ds_bpermute_b32 v47, v11, v46
	s_add_i32 s8, s8, 2
	v_add_u32_e32 v44, 0x80, v44
	s_cmp_lg_u32 s9, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v46, v46, v47
	ds_bpermute_b32 v47, v42, v46
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v46, v46, v47
	v_mul_f32_e32 v47, s14, v46
	v_fma_mixlo_f16 v46, s14, v46, 0
	v_max_f32_e32 v45, v45, v47
	buffer_store_short v46, v54, s[0:3], 0 offen
	s_cbranch_scc1 .LBB0_11
.LBB0_12:                               ; %._crit_edge220
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_max_f32_e32 v11, v45, v45
	v_max_f32_e32 v42, v43, v43
	v_max_f32_e32 v11, v42, v11
	v_cndmask_b32_e64 v42, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[8:9], 1, v42
	s_andn2_b64 vcc, exec, s[20:21]
	v_mov_b32_e32 v42, 0
	s_cbranch_vccnz .LBB0_20
; %bb.13:                               ; %.lr.ph224.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_cmp_lt_i32 s15, 8
	s_cbranch_scc1 .LBB0_17
; %bb.14:                               ; %.lr.ph224.preheader.new
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_and_b32 s20, s22, -8
	s_mov_b32 s21, 0
	s_mov_b32 s23, 0
	v_mov_b32_e32 v42, 0
.LBB0_15:                               ; %.lr.ph224
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v44, s21
	buffer_load_dword v45, v44, s[0:3], 0 offen
	buffer_load_dword v46, v44, s[0:3], 0 offen offset:4
	buffer_load_dword v47, v44, s[0:3], 0 offen offset:8
	buffer_load_dword v48, v44, s[0:3], 0 offen offset:12
	s_add_i32 s23, s23, 8
	s_add_i32 s21, s21, 16
	s_cmp_eq_u32 s20, s23
	s_waitcnt vmcnt(3)
	v_cvt_f32_f16_e32 v49, v45
	v_cvt_f32_f16_sdwa v45, v45 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(2)
	v_cvt_f32_f16_e32 v50, v46
	v_cvt_f32_f16_sdwa v46, v46 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v52, v48
	v_cvt_f32_f16_sdwa v48, v48 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v51, v47
	v_cvt_f32_f16_sdwa v47, v47 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_sub_f32_e32 v49, v49, v11
	v_sub_f32_e32 v45, v45, v11
	v_mul_f32_e32 v49, 0x3fb8aa3b, v49
	v_sub_f32_e32 v50, v50, v11
	v_mul_f32_e32 v45, 0x3fb8aa3b, v45
	v_exp_f32_e32 v49, v49
	v_sub_f32_e32 v46, v46, v11
	v_sub_f32_e32 v52, v52, v11
	v_sub_f32_e32 v48, v48, v11
	v_mul_f32_e32 v50, 0x3fb8aa3b, v50
	v_exp_f32_e32 v45, v45
	v_sub_f32_e32 v51, v51, v11
	v_sub_f32_e32 v47, v47, v11
	v_mul_f32_e32 v46, 0x3fb8aa3b, v46
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	v_mul_f32_e32 v48, 0x3fb8aa3b, v48
	v_exp_f32_e32 v50, v50
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v47, v47
	v_add_f32_e32 v42, v42, v49
	v_add_f32_e32 v42, v42, v45
	v_add_f32_e32 v42, v42, v50
	v_cvt_f16_f32_e32 v53, v49
	v_cvt_f16_f32_e32 v49, v45
	v_cvt_f16_f32_e32 v58, v52
	v_cvt_f16_f32_e32 v59, v48
	v_add_f32_e32 v42, v42, v46
	v_cvt_f16_f32_e32 v54, v50
	v_cvt_f16_f32_e32 v55, v46
	v_cvt_f16_f32_e32 v56, v51
	v_cvt_f16_f32_e32 v57, v47
	v_add_f32_e32 v42, v42, v51
	v_add_f32_e32 v42, v42, v47
	v_add_f32_e32 v42, v42, v52
	v_pack_b32_f16 v45, v53, v49
	v_pack_b32_f16 v50, v58, v59
	v_add_f32_e32 v42, v42, v48
	v_pack_b32_f16 v46, v54, v55
	v_pack_b32_f16 v49, v56, v57
	buffer_store_dword v45, v44, s[0:3], 0 offen
	buffer_store_dword v46, v44, s[0:3], 0 offen offset:4
	buffer_store_dword v49, v44, s[0:3], 0 offen offset:8
	buffer_store_dword v50, v44, s[0:3], 0 offen offset:12
	s_cbranch_scc0 .LBB0_15
; %bb.16:                               ; %._crit_edge225.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_and_b32 s21, s22, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc0 .LBB0_18
	s_branch .LBB0_20
.LBB0_17:                               ;   in Loop: Header=BB0_6 Depth=1
	v_mov_b32_e32 v42, 0
	s_mov_b32 s20, 0
	s_and_b32 s21, s22, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc1 .LBB0_20
.LBB0_18:                               ; %.lr.ph224.epil.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_lshl_b32 s20, s20, 1
.LBB0_19:                               ; %.lr.ph224.epil
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v44, s20
	buffer_load_ushort v45, v44, s[0:3], 0 offen
	s_add_i32 s20, s20, 2
	s_add_i32 s21, s21, -1
	s_cmp_lg_u32 s21, 0
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v45, v45
	v_sub_f32_e32 v45, v45, v11
	v_mul_f32_e32 v45, 0x3fb8aa3b, v45
	v_exp_f32_e32 v45, v45
	v_cvt_f16_f32_e32 v46, v45
	v_add_f32_e32 v42, v42, v45
	buffer_store_short v46, v44, s[0:3], 0 offen
	s_cbranch_scc1 .LBB0_19
.LBB0_20:                               ; %._crit_edge225
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_sub_f32_e32 v43, v43, v11
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	v_exp_f32_e32 v43, v43
	v_cmp_lt_f32_e32 vcc, 0, v0
	v_cndmask_b32_e32 v43, 0, v43, vcc
	v_mul_f32_e32 v41, v43, v41
	v_mul_f32_e32 v23, v43, v23
	v_mul_f32_e32 v40, v43, v40
	v_mul_f32_e32 v24, v43, v24
	v_mul_f32_e32 v39, v43, v39
	v_mul_f32_e32 v27, v43, v27
	v_mul_f32_e32 v38, v43, v38
	v_mul_f32_e32 v29, v43, v29
	v_mul_f32_e32 v37, v43, v37
	v_mul_f32_e32 v25, v43, v25
	v_mul_f32_e32 v36, v43, v36
	v_mul_f32_e32 v30, v43, v30
	v_mul_f32_e32 v35, v43, v35
	v_mul_f32_e32 v32, v43, v32
	v_mul_f32_e32 v34, v43, v34
	s_and_b64 vcc, exec, s[8:9]
	v_mul_f32_e32 v33, v43, v33
	s_cbranch_vccnz .LBB0_4
; %bb.21:                               ; %.lr.ph233.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_cmp_lt_i32 s15, 4
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_24
; %bb.22:                               ; %.lr.ph233.preheader.new
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_and_b32 s8, s22, -4
	s_mov_b32 s9, 0
	s_mov_b32 s20, 0
	v_mov_b32_e32 v44, v21
.LBB0_23:                               ; %.lr.ph233
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v53, s9
	ds_read_b128 v[45:48], v44
	ds_read_b128 v[49:52], v44 offset:16
	buffer_load_dword v54, v53, s[0:3], 0 offen
	buffer_load_dword v55, v53, s[0:3], 0 offen offset:4
	s_add_i32 s20, s20, 4
	s_add_i32 s9, s9, 8
	s_cmp_eq_u32 s8, s20
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_fma_mix_f32 v41, v54, v45, v41 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v54, v45, v23 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v54, v46, v40 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v54, v46, v24 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v54, v47, v39 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v54, v47, v27 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v54, v48, v38 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v29, v54, v48, v29 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v45, v54, v51, v35 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v54, v51, v32 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v54, v52, v34 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v54, v52, v33 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[32:35], v44 offset:128
	v_fma_mix_f32 v37, v54, v49, v37 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v25, v54, v49, v25 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v54, v50, v36 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v54, v50, v30 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v54, v32, v41 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v54, v32, v23 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v54, v33, v40 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v54, v33, v24 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v54, v34, v39 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v54, v34, v27 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v54, v35, v38 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v29, v54, v35, v29 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[32:35], v44 offset:144
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v37, v54, v32, v37 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v25, v54, v32, v25 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v54, v33, v36 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v54, v33, v30 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v45, v54, v34, v45 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v54, v34, v46 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v54, v35, v47 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v54, v35, v48 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[32:35], v44 offset:256
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_mix_f32 v41, v55, v32, v41 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v55, v32, v23 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v55, v33, v40 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v55, v33, v24 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v55, v34, v39 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v55, v34, v27 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v55, v35, v38 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v29, v55, v35, v29 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[32:35], v44 offset:272
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v37, v55, v32, v37 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v25, v55, v32, v25 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v55, v33, v36 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v55, v33, v30 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v55, v34, v45 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v55, v34, v46 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v51, v55, v35, v47 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v55, v35, v48 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[32:35], v44 offset:384
	ds_read_b128 v[45:48], v44 offset:400
	v_add_u32_e32 v44, 0x200, v44
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v41, v55, v32, v41 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v55, v32, v23 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v55, v33, v40 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v55, v33, v24 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v55, v34, v39 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v55, v34, v27 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v55, v35, v38 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v29, v55, v35, v29 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v37, v55, v45, v37 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v25, v55, v45, v25 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v55, v46, v36 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v55, v46, v30 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v35, v55, v47, v49 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v32, v55, v47, v50 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v34, v55, v48, v51 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v33, v55, v48, v52 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_cbranch_scc0 .LBB0_23
.LBB0_24:                               ; %._crit_edge234.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB0_6 Depth=1
	s_and_b32 s9, s22, 3
	s_cmp_eq_u32 s9, 0
	s_cbranch_scc1 .LBB0_4
; %bb.25:                               ; %.lr.ph233.epil.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	v_lshl_add_u32 v44, s8, 7, v21
	s_lshl_b32 s8, s8, 1
.LBB0_26:                               ; %.lr.ph233.epil
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v45, s8
	buffer_load_ushort v53, v45, s[0:3], 0 offen
	ds_read_b128 v[45:48], v44
	ds_read_b128 v[49:52], v44 offset:16
	s_add_i32 s8, s8, 2
	s_add_i32 s9, s9, -1
	v_add_u32_e32 v44, 0x80, v44
	s_cmp_lg_u32 s9, 0
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_fma_mix_f32 v41, v53, v45, v41 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v53, v45, v23 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v53, v46, v40 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v53, v46, v24 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v53, v47, v39 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v53, v47, v27 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v53, v48, v38 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v29, v53, v48, v29 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v37, v53, v49, v37 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v25, v53, v49, v25 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v53, v50, v36 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v53, v50, v30 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v35, v53, v51, v35 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v32, v53, v51, v32 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v34, v53, v52, v34 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v33, v53, v52, v33 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_cbranch_scc1 .LBB0_26
	s_branch .LBB0_4
.LBB0_27:
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v0, 0
.LBB0_28:                               ; %._crit_edge240
	v_cmp_lt_f32_e32 vcc, 0, v0
	s_and_b64 s[4:5], s[10:11], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execz .LBB0_30
; %bb.29:                               ; %.loopexit.loopexit
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v1, s[4:5], v0, v0, 1.0
	v_div_scale_f32 v2, vcc, 1.0, v0, 1.0
	s_lshl_b64 s[4:5], s[16:17], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s18, s4
	s_addc_u32 s5, s19, s5
	v_rcp_f32_e32 v3, v1
	v_fma_f32 v4, -v1, v3, 1.0
	v_fmac_f32_e32 v3, v4, v3
	v_mul_f32_e32 v4, v2, v3
	v_fma_f32 v5, -v1, v4, v2
	v_fmac_f32_e32 v4, v5, v3
	v_fma_f32 v1, -v1, v4, v2
	v_div_fmas_f32 v3, v1, v3, v4
	v_lshlrev_b64 v[1:2], 7, v[9:10]
	v_mov_b32_e32 v4, s5
	v_add_co_u32_e32 v1, vcc, s4, v1
	v_addc_co_u32_e32 v2, vcc, v4, v2, vcc
	v_add_co_u32_e32 v8, vcc, v1, v13
	v_addc_co_u32_e32 v9, vcc, 0, v2, vcc
	v_div_fixup_f32 v10, v3, v0, 1.0
	v_fma_mixlo_f16 v0, v10, v41, 0
	v_fma_mixlo_f16 v1, v10, v40, 0
	v_fma_mixlo_f16 v2, v10, v39, 0
	v_fma_mixlo_f16 v3, v10, v38, 0
	v_fma_mixlo_f16 v4, v10, v37, 0
	v_fma_mixlo_f16 v5, v10, v36, 0
	v_fma_mixlo_f16 v6, v10, v35, 0
	v_fma_mixlo_f16 v7, v10, v34, 0
	v_fma_mixhi_f16 v3, v10, v29, 0
	v_fma_mixhi_f16 v2, v10, v27, 0
	v_fma_mixhi_f16 v1, v10, v24, 0
	v_fma_mixhi_f16 v0, v10, v23, 0
	v_fma_mixhi_f16 v7, v10, v33, 0
	v_fma_mixhi_f16 v6, v10, v32, 0
	v_fma_mixhi_f16 v5, v10, v30, 0
	v_fma_mixhi_f16 v4, v10, v25, 0
	global_store_dwordx4 v[8:9], v[0:3], off
	global_store_dwordx4 v[8:9], v[4:7], off offset:16
.LBB0_30:                               ; %.loopexit
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 48
		.amdhsa_kernarg_size 52
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 60
		.amdhsa_next_free_sgpr 24
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif,comdat
.Lfunc_end0:
	.size	_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif, .Lfunc_end0-_Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
                                        ; -- End function
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.num_vgpr, 60
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.num_agpr, 0
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.numbered_sgpr, 24
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.private_seg_size, 48
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.uses_vcc, 1
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.uses_flat_scratch, 0
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.has_dyn_sized_stack, 0
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.has_recursion, 0
	.set _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2780
; TotalNumSgprs: 28
; NumVgprs: 60
; ScratchSize: 48
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 3
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 60
; Occupancy: 4
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif,comdat
	.protected	_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif ; -- Begin function _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
	.globl	_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
	.p2align	8
	.type	_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif,@function
_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif: ; @_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
; %bb.0:
	s_load_dwordx4 s[12:15], s[4:5], 0x28
	s_add_u32 s0, s0, s8
	v_lshrrev_b32_e32 v1, 2, v0
	s_addc_u32 s1, s1, 0
	v_lshl_or_b32 v17, s7, 6, v1
	s_ashr_i32 s7, s6, 31
	v_mov_b32_e32 v1, s6
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s10, s12, 31
	s_lshl_b64 s[8:9], s[6:7], 7
	v_alignbit_b32 v1, s7, v1, 25
	v_readfirstlane_b32 s6, v1
	s_mul_i32 s7, s8, s10
	s_mul_hi_u32 s10, s8, s12
	v_and_b32_e32 v19, 3, v0
	s_mul_i32 s6, s6, s12
	s_add_i32 s7, s10, s7
	s_add_i32 s17, s7, s6
	s_mul_i32 s16, s8, s12
	v_cmp_gt_i32_e64 s[10:11], s12, v17
	v_mov_b32_e32 v8, 0
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b32_e32 v21, 6, v19
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b64 s[6:7], s[10:11]
	s_cbranch_execz .LBB1_2
; %bb.1:                                ; %.loopexit205.loopexit
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	s_lshl_b64 s[20:21], s[16:17], 1
	v_lshlrev_b64 v[1:2], 8, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s18, s20
	s_addc_u32 s15, s19, s21
	v_mov_b32_e32 v3, s15
	v_add_co_u32_e32 v1, vcc, s12, v1
	v_addc_co_u32_e32 v2, vcc, v3, v2, vcc
	v_lshlrev_b32_e32 v3, 6, v19
	v_add_co_u32_e32 v19, vcc, v1, v3
	v_addc_co_u32_e32 v20, vcc, 0, v2, vcc
	global_load_dwordx4 v[1:4], v[19:20], off
	global_load_dwordx4 v[9:12], v[19:20], off offset:16
	global_load_dwordx4 v[13:16], v[19:20], off offset:32
	global_load_dwordx4 v[5:8], v[19:20], off offset:48
.LBB1_2:                                ; %.loopexit205
	s_or_b64 exec, exec, s[6:7]
	s_load_dwordx2 s[18:19], s[4:5], 0x18
	s_cmp_lt_i32 s13, 1
	s_cbranch_scc1 .LBB1_27
; %bb.3:                                ; %.preheader204.lr.ph
	s_load_dwordx4 s[20:23], s[4:5], 0x8
	s_ashr_i32 s4, s13, 31
	s_mul_hi_u32 s5, s8, s13
	s_mul_i32 s4, s8, s4
	s_add_i32 s4, s5, s4
	s_mul_i32 s5, s9, s13
	s_add_i32 s5, s4, s5
	s_mul_i32 s4, s8, s13
	s_movk_i32 s6, 0x100
	s_lshl_b64 s[4:5], s[4:5], 1
	v_cmp_gt_u32_e64 s[6:7], s6, v0
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s20, s4
	v_lshrrev_b32_e32 v22, 4, v0
	v_and_b32_e32 v0, 15, v0
	s_addc_u32 s9, s21, s5
	v_lshlrev_b32_e32 v0, 4, v0
	v_mov_b32_e32 v19, s9
	v_add_co_u32_e32 v23, vcc, s8, v0
	s_add_u32 s4, s22, s4
	v_addc_co_u32_e32 v24, vcc, 0, v19, vcc
	v_lshl_or_b32 v25, v22, 8, v0
	v_add_co_u32_e32 v26, vcc, s4, v0
	v_mbcnt_lo_u32_b32 v0, -1, 0
	s_addc_u32 s5, s23, s5
	v_mbcnt_hi_u32_b32 v30, -1, v0
	v_mov_b32_e32 v19, s5
	v_and_b32_e32 v0, 64, v30
	v_addc_co_u32_e32 v27, vcc, 0, v19, vcc
	v_or_b32_e32 v28, 0x1000, v25
	v_or_b32_e32 v29, 0x1000, v21
	s_mov_b32 s12, 0
	v_mov_b32_e32 v67, 0xff800000
	v_add_u32_e32 v31, 64, v0
	v_xor_b32_e32 v32, 2, v30
	v_xor_b32_e32 v33, 1, v30
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v36, 0
	s_mov_b32 s15, s13
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v20, 0
	s_branch .LBB1_6
.LBB1_4:                                ; %Flow893
                                        ;   in Loop: Header=BB1_6 Depth=1
	v_fmac_f32_e32 v66, v0, v67
	v_mov_b32_e32 v67, v19
	v_mov_b32_e32 v0, v66
.LBB1_5:                                ; %Flow901
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s12, s12, 16
	s_add_i32 s15, s15, -16
	s_cmp_ge_i32 s12, s13
	s_waitcnt vmcnt(0)
	s_barrier
	s_cbranch_scc1 .LBB1_28
.LBB1_6:                                ; %.preheader204
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_11 Depth 2
                                        ;     Child Loop BB1_15 Depth 2
                                        ;     Child Loop BB1_19 Depth 2
                                        ;     Child Loop BB1_23 Depth 2
                                        ;     Child Loop BB1_26 Depth 2
	v_or_b32_e32 v19, s12, v22
	v_cmp_gt_i32_e32 vcc, s13, v19
	s_and_b64 s[8:9], s[6:7], vcc
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB1_8
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=1
	v_lshlrev_b64 v[72:73], 8, v[19:20]
	v_add_co_u32_e32 v68, vcc, v23, v72
	v_addc_co_u32_e32 v69, vcc, v24, v73, vcc
	v_add_co_u32_e32 v72, vcc, v26, v72
	global_load_dwordx4 v[68:71], v[68:69], off
	v_addc_co_u32_e32 v73, vcc, v27, v73, vcc
	global_load_dwordx4 v[72:75], v[72:73], off
	s_waitcnt vmcnt(1)
	ds_write_b128 v25, v[68:71]
	s_waitcnt vmcnt(0)
	ds_write_b128 v28, v[72:75]
.LBB1_8:                                ; %._crit_edge
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[10:11]
	s_cbranch_execz .LBB1_5
; %bb.9:                                ;   in Loop: Header=BB1_6 Depth=1
	v_med3_i32 v19, s15, 1, 16
	s_cmp_gt_i32 s13, s12
	v_readfirstlane_b32 s22, v19
	s_cselect_b64 s[20:21], -1, 0
	s_cmp_le_i32 s13, s12
	v_mov_b32_e32 v69, 0xff800000
	s_cbranch_scc1 .LBB1_12
; %bb.10:                               ; %.preheader.lr.ph
                                        ;   in Loop: Header=BB1_6 Depth=1
	v_cmp_lt_i32_e32 vcc, v32, v31
	v_cndmask_b32_e32 v19, v30, v32, vcc
	v_cmp_lt_i32_e32 vcc, v33, v31
	v_cndmask_b32_e32 v66, v30, v33, vcc
	v_lshlrev_b32_e32 v19, 2, v19
	v_lshlrev_b32_e32 v66, 2, v66
	s_mov_b32 s8, 0
	v_mov_b32_e32 v69, 0xff800000
	v_mov_b32_e32 v68, v21
	s_mov_b32 s9, s22
.LBB1_11:                               ; %.preheader
                                        ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[70:73], v68
	ds_read_b128 v[74:77], v68 offset:16
	ds_read_b128 v[78:81], v68 offset:32
	ds_read_b128 v[82:85], v68 offset:48
	v_mov_b32_e32 v86, s8
	s_waitcnt lgkmcnt(3)
	v_dot2_f32_f16 v70, v1, v70, 0
	v_dot2_f32_f16 v71, v2, v71, 0
	v_dot2_f32_f16 v70, v3, v72, v70
	v_dot2_f32_f16 v71, v4, v73, v71
	s_waitcnt lgkmcnt(2)
	v_dot2_f32_f16 v70, v9, v74, v70
	v_dot2_f32_f16 v71, v10, v75, v71
	v_dot2_f32_f16 v70, v11, v76, v70
	v_dot2_f32_f16 v71, v12, v77, v71
	s_waitcnt lgkmcnt(1)
	v_dot2_f32_f16 v70, v13, v78, v70
	v_dot2_f32_f16 v71, v14, v79, v71
	v_dot2_f32_f16 v70, v15, v80, v70
	v_dot2_f32_f16 v71, v16, v81, v71
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v70, v5, v82, v70
	v_dot2_f32_f16 v71, v6, v83, v71
	v_dot2_f32_f16 v70, v7, v84, v70
	v_dot2_f32_f16 v71, v8, v85, v71
	v_add_f32_e32 v70, v71, v70
	ds_bpermute_b32 v71, v19, v70
	v_max_f32_e32 v69, v69, v69
	s_add_i32 s9, s9, -1
	s_add_i32 s8, s8, 2
	v_add_u32_e32 v68, 0x100, v68
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v70, v70, v71
	ds_bpermute_b32 v71, v66, v70
	s_cmp_lg_u32 s9, 0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v70, v70, v71
	v_mul_f32_e32 v71, s14, v70
	v_fma_mixlo_f16 v70, s14, v70, 0
	v_max_f32_e32 v69, v69, v71
	buffer_store_short v70, v86, s[0:3], 0 offen
	s_cbranch_scc1 .LBB1_11
.LBB1_12:                               ; %._crit_edge215
                                        ;   in Loop: Header=BB1_6 Depth=1
	v_max_f32_e32 v19, v69, v69
	v_max_f32_e32 v66, v67, v67
	v_max_f32_e32 v19, v66, v19
	v_cndmask_b32_e64 v66, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[8:9], 1, v66
	s_andn2_b64 vcc, exec, s[20:21]
	v_mov_b32_e32 v66, 0
	s_cbranch_vccnz .LBB1_20
; %bb.13:                               ; %.lr.ph219.preheader
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_cmp_lt_i32 s15, 8
	s_cbranch_scc1 .LBB1_17
; %bb.14:                               ; %.lr.ph219.preheader.new
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_and_b32 s20, s22, -8
	s_mov_b32 s21, 0
	s_mov_b32 s23, 0
	v_mov_b32_e32 v66, 0
.LBB1_15:                               ; %.lr.ph219
                                        ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v68, s21
	buffer_load_dword v69, v68, s[0:3], 0 offen
	buffer_load_dword v70, v68, s[0:3], 0 offen offset:4
	buffer_load_dword v71, v68, s[0:3], 0 offen offset:8
	buffer_load_dword v72, v68, s[0:3], 0 offen offset:12
	s_add_i32 s23, s23, 8
	s_add_i32 s21, s21, 16
	s_cmp_eq_u32 s20, s23
	s_waitcnt vmcnt(3)
	v_cvt_f32_f16_e32 v73, v69
	v_cvt_f32_f16_sdwa v69, v69 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(2)
	v_cvt_f32_f16_e32 v74, v70
	v_cvt_f32_f16_sdwa v70, v70 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v76, v72
	v_cvt_f32_f16_sdwa v72, v72 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v75, v71
	v_cvt_f32_f16_sdwa v71, v71 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_sub_f32_e32 v73, v73, v19
	v_sub_f32_e32 v69, v69, v19
	v_mul_f32_e32 v73, 0x3fb8aa3b, v73
	v_sub_f32_e32 v74, v74, v19
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	v_exp_f32_e32 v73, v73
	v_sub_f32_e32 v70, v70, v19
	v_sub_f32_e32 v76, v76, v19
	v_sub_f32_e32 v72, v72, v19
	v_mul_f32_e32 v74, 0x3fb8aa3b, v74
	v_exp_f32_e32 v69, v69
	v_sub_f32_e32 v75, v75, v19
	v_sub_f32_e32 v71, v71, v19
	v_mul_f32_e32 v70, 0x3fb8aa3b, v70
	v_mul_f32_e32 v76, 0x3fb8aa3b, v76
	v_mul_f32_e32 v72, 0x3fb8aa3b, v72
	v_exp_f32_e32 v74, v74
	v_mul_f32_e32 v75, 0x3fb8aa3b, v75
	v_mul_f32_e32 v71, 0x3fb8aa3b, v71
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v71, v71
	v_add_f32_e32 v66, v66, v73
	v_add_f32_e32 v66, v66, v69
	v_add_f32_e32 v66, v66, v74
	v_cvt_f16_f32_e32 v77, v73
	v_cvt_f16_f32_e32 v73, v69
	v_cvt_f16_f32_e32 v82, v76
	v_cvt_f16_f32_e32 v83, v72
	v_add_f32_e32 v66, v66, v70
	v_cvt_f16_f32_e32 v78, v74
	v_cvt_f16_f32_e32 v79, v70
	v_cvt_f16_f32_e32 v80, v75
	v_cvt_f16_f32_e32 v81, v71
	v_add_f32_e32 v66, v66, v75
	v_add_f32_e32 v66, v66, v71
	v_add_f32_e32 v66, v66, v76
	v_pack_b32_f16 v69, v77, v73
	v_pack_b32_f16 v74, v82, v83
	v_add_f32_e32 v66, v66, v72
	v_pack_b32_f16 v70, v78, v79
	v_pack_b32_f16 v73, v80, v81
	buffer_store_dword v69, v68, s[0:3], 0 offen
	buffer_store_dword v70, v68, s[0:3], 0 offen offset:4
	buffer_store_dword v73, v68, s[0:3], 0 offen offset:8
	buffer_store_dword v74, v68, s[0:3], 0 offen offset:12
	s_cbranch_scc0 .LBB1_15
; %bb.16:                               ; %._crit_edge220.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_and_b32 s21, s22, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc0 .LBB1_18
	s_branch .LBB1_20
.LBB1_17:                               ;   in Loop: Header=BB1_6 Depth=1
	v_mov_b32_e32 v66, 0
	s_mov_b32 s20, 0
	s_and_b32 s21, s22, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc1 .LBB1_20
.LBB1_18:                               ; %.lr.ph219.epil.preheader
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_lshl_b32 s20, s20, 1
.LBB1_19:                               ; %.lr.ph219.epil
                                        ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v68, s20
	buffer_load_ushort v69, v68, s[0:3], 0 offen
	s_add_i32 s20, s20, 2
	s_add_i32 s21, s21, -1
	s_cmp_lg_u32 s21, 0
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v69, v69
	v_sub_f32_e32 v69, v69, v19
	v_mul_f32_e32 v69, 0x3fb8aa3b, v69
	v_exp_f32_e32 v69, v69
	v_cvt_f16_f32_e32 v70, v69
	v_add_f32_e32 v66, v66, v69
	buffer_store_short v70, v68, s[0:3], 0 offen
	s_cbranch_scc1 .LBB1_19
.LBB1_20:                               ; %._crit_edge220
                                        ;   in Loop: Header=BB1_6 Depth=1
	v_sub_f32_e32 v67, v67, v19
	v_mul_f32_e32 v67, 0x3fb8aa3b, v67
	v_exp_f32_e32 v67, v67
	v_cmp_lt_f32_e32 vcc, 0, v0
	v_cndmask_b32_e32 v67, 0, v67, vcc
	v_mul_f32_e32 v65, v67, v65
	v_mul_f32_e32 v34, v67, v34
	v_mul_f32_e32 v64, v67, v64
	v_mul_f32_e32 v35, v67, v35
	v_mul_f32_e32 v63, v67, v63
	v_mul_f32_e32 v37, v67, v37
	v_mul_f32_e32 v62, v67, v62
	v_mul_f32_e32 v38, v67, v38
	v_mul_f32_e32 v61, v67, v61
	v_mul_f32_e32 v39, v67, v39
	v_mul_f32_e32 v60, v67, v60
	v_mul_f32_e32 v40, v67, v40
	v_mul_f32_e32 v59, v67, v59
	v_mul_f32_e32 v41, v67, v41
	v_mul_f32_e32 v58, v67, v58
	v_mul_f32_e32 v42, v67, v42
	v_mul_f32_e32 v53, v67, v53
	v_mul_f32_e32 v36, v67, v36
	v_mul_f32_e32 v57, v67, v57
	v_mul_f32_e32 v49, v67, v49
	v_mul_f32_e32 v56, v67, v56
	v_mul_f32_e32 v52, v67, v52
	v_mul_f32_e32 v55, v67, v55
	v_mul_f32_e32 v54, v67, v54
	v_mul_f32_e32 v51, v67, v51
	v_mul_f32_e32 v43, v67, v43
	v_mul_f32_e32 v50, v67, v50
	v_mul_f32_e32 v44, v67, v44
	v_mul_f32_e32 v48, v67, v48
	v_mul_f32_e32 v45, v67, v45
	v_mul_f32_e32 v47, v67, v47
	s_and_b64 vcc, exec, s[8:9]
	v_mul_f32_e32 v46, v67, v46
	s_cbranch_vccnz .LBB1_4
; %bb.21:                               ; %.lr.ph225.preheader
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_cmp_lt_i32 s15, 4
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB1_24
; %bb.22:                               ; %.lr.ph225.preheader.new
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_and_b32 s8, s22, -4
	s_mov_b32 s9, 0
	s_mov_b32 s20, 0
	v_mov_b32_e32 v68, v29
.LBB1_23:                               ; %.lr.ph225
                                        ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v85, s9
	ds_read_b128 v[69:72], v68
	ds_read_b128 v[73:76], v68 offset:16
	ds_read_b128 v[77:80], v68 offset:32
	ds_read_b128 v[81:84], v68 offset:48
	buffer_load_dword v86, v85, s[0:3], 0 offen
	buffer_load_dword v87, v85, s[0:3], 0 offen offset:4
	s_add_i32 s20, s20, 4
	s_add_i32 s9, s9, 8
	s_cmp_eq_u32 s8, s20
	s_waitcnt vmcnt(1) lgkmcnt(3)
	v_fma_mix_f32 v65, v86, v69, v65 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v69, v86, v69, v34 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v64, v86, v70, v64 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v70, v86, v70, v35 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v63, v86, v71, v63 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v71, v86, v71, v37 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v62, v86, v72, v62 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v86, v72, v38 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v72, v86, v77, v36 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:256
	v_fma_mix_f32 v61, v86, v73, v61 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v86, v73, v39 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v60, v86, v74, v60 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v86, v74, v40 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v86, v34, v65 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v69, v86, v34, v69 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v64, v86, v35, v64 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v70, v86, v35, v70 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v63, v86, v36, v63 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v71, v86, v36, v71 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v62, v86, v37, v62 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v86, v37, v38 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:272
	v_fma_mix_f32 v59, v86, v75, v59 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v41, v86, v75, v41 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v58, v86, v76, v58 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v42, v86, v76, v42 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v61, v86, v34, v61 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v86, v34, v39 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v60, v86, v35, v60 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v86, v35, v40 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v59, v86, v36, v59 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v41, v86, v36, v41 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v58, v86, v37, v58 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v42, v86, v37, v42 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:288
	v_fma_mix_f32 v53, v86, v77, v53 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v57, v86, v78, v57 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v86, v78, v49 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v56, v86, v79, v56 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v86, v79, v52 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v55, v86, v80, v55 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v54, v86, v80, v54 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v53, v86, v34, v53 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v72, v86, v34, v72 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v57, v86, v35, v57 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v86, v35, v49 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v56, v86, v36, v56 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v86, v36, v52 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v55, v86, v37, v55 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v54, v86, v37, v54 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:304
	v_fma_mix_f32 v51, v86, v81, v51 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v43, v86, v81, v43 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v86, v82, v50 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v44, v86, v82, v44 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v86, v83, v48 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v45, v86, v83, v45 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v86, v84, v47 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v86, v84, v46 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v51, v86, v34, v51 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v43, v86, v34, v43 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v86, v35, v50 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v44, v86, v35, v44 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v86, v36, v48 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v45, v86, v36, v45 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v86, v37, v47 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v86, v37, v46 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:512
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_mix_f32 v65, v87, v34, v65 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v69, v87, v34, v69 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v64, v87, v35, v64 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v70, v87, v35, v70 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v63, v87, v36, v63 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v71, v87, v36, v71 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v62, v87, v37, v62 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v73, v87, v37, v38 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:528
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v61, v87, v34, v61 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v74, v87, v34, v39 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v60, v87, v35, v60 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v75, v87, v35, v40 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v59, v87, v36, v59 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v76, v87, v36, v41 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v58, v87, v37, v58 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v77, v87, v37, v42 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:544
	ds_read_b128 v[39:42], v68 offset:784
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v53, v87, v34, v53 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v72, v87, v34, v72 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v57, v87, v35, v57 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v87, v35, v49 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v56, v87, v36, v56 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v87, v36, v52 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v55, v87, v37, v55 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v54, v87, v37, v54 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[34:37], v68 offset:560
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v61, v87, v39, v61 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v87, v39, v74 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v60, v87, v40, v60 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v87, v40, v75 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v78, v87, v34, v43 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v87, v35, v50 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v79, v87, v35, v44 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v87, v36, v48 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v80, v87, v36, v45 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v87, v37, v47 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v81, v87, v37, v46 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[35:38], v68 offset:768
	ds_read_b128 v[43:46], v68 offset:800
	v_fma_mix_f32 v51, v87, v34, v51 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v59, v87, v41, v59 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v41, v87, v41, v76 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v65, v87, v35, v65 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v34, v87, v35, v69 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v64, v87, v36, v64 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v35, v87, v36, v70 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v53, v87, v43, v53 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v87, v43, v72 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v57, v87, v44, v57 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v87, v44, v49 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v56, v87, v45, v56 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v87, v45, v52 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v55, v87, v46, v55 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v54, v87, v46, v54 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	ds_read_b128 v[43:46], v68 offset:816
	v_fma_mix_f32 v63, v87, v37, v63 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v37, v87, v37, v71 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v62, v87, v38, v62 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v87, v38, v73 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v58, v87, v42, v58 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v42, v87, v42, v77 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v51, v87, v43, v51 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v43, v87, v43, v78 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v87, v44, v50 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v44, v87, v44, v79 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v87, v45, v48 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v45, v87, v45, v80 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v87, v46, v47 op_sel:[1,0,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v87, v46, v81 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	v_add_u32_e32 v68, 0x400, v68
	s_cbranch_scc0 .LBB1_23
.LBB1_24:                               ; %._crit_edge226.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB1_6 Depth=1
	s_and_b32 s9, s22, 3
	s_cmp_eq_u32 s9, 0
	s_cbranch_scc1 .LBB1_4
; %bb.25:                               ; %.lr.ph225.epil.preheader
                                        ;   in Loop: Header=BB1_6 Depth=1
	v_lshl_add_u32 v68, s8, 8, v29
	s_lshl_b32 s8, s8, 1
.LBB1_26:                               ; %.lr.ph225.epil
                                        ;   Parent Loop BB1_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v69, s8
	buffer_load_ushort v85, v69, s[0:3], 0 offen
	ds_read_b128 v[69:72], v68
	ds_read_b128 v[73:76], v68 offset:16
	ds_read_b128 v[77:80], v68 offset:32
	ds_read_b128 v[81:84], v68 offset:48
	s_add_i32 s8, s8, 2
	s_add_i32 s9, s9, -1
	v_add_u32_e32 v68, 0x100, v68
	s_cmp_lg_u32 s9, 0
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_fma_mix_f32 v65, v85, v69, v65 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v34, v85, v69, v34 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v64, v85, v70, v64 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v35, v85, v70, v35 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v63, v85, v71, v63 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v37, v85, v71, v37 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v62, v85, v72, v62 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v38, v85, v72, v38 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_fma_mix_f32 v61, v85, v73, v61 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v39, v85, v73, v39 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v60, v85, v74, v60 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v40, v85, v74, v40 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v59, v85, v75, v59 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v41, v85, v75, v41 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v58, v85, v76, v58 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v42, v85, v76, v42 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v53, v85, v77, v53 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v36, v85, v77, v36 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v57, v85, v78, v57 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v49, v85, v78, v49 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v56, v85, v79, v56 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v52, v85, v79, v52 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v55, v85, v80, v55 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v54, v85, v80, v54 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v51, v85, v81, v51 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v43, v85, v81, v43 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v50, v85, v82, v50 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v44, v85, v82, v44 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v48, v85, v83, v48 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v45, v85, v83, v45 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	v_fma_mix_f32 v47, v85, v84, v47 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v46, v85, v84, v46 op_sel:[0,1,0] op_sel_hi:[1,1,0]
	s_cbranch_scc1 .LBB1_26
	s_branch .LBB1_4
.LBB1_27:
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v65, 0
.LBB1_28:                               ; %._crit_edge230
	v_cmp_lt_f32_e32 vcc, 0, v0
	s_and_b64 s[4:5], s[10:11], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execz .LBB1_30
; %bb.29:                               ; %.loopexit.loopexit
	s_waitcnt vmcnt(3)
	v_div_scale_f32 v1, s[4:5], v0, v0, 1.0
	v_div_scale_f32 v2, vcc, 1.0, v0, 1.0
	s_lshl_b64 s[4:5], s[16:17], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s18, s4
	s_addc_u32 s5, s19, s5
	v_rcp_f32_e32 v3, v1
	v_fma_f32 v4, -v1, v3, 1.0
	v_fmac_f32_e32 v3, v4, v3
	v_mul_f32_e32 v4, v2, v3
	s_waitcnt vmcnt(0)
	v_fma_f32 v5, -v1, v4, v2
	v_fmac_f32_e32 v4, v5, v3
	v_fma_f32 v1, -v1, v4, v2
	v_div_fmas_f32 v3, v1, v3, v4
	v_lshlrev_b64 v[1:2], 8, v[17:18]
	v_mov_b32_e32 v4, s5
	v_add_co_u32_e32 v1, vcc, s4, v1
	v_addc_co_u32_e32 v2, vcc, v4, v2, vcc
	v_add_co_u32_e32 v12, vcc, v1, v21
	v_addc_co_u32_e32 v13, vcc, 0, v2, vcc
	v_div_fixup_f32 v14, v3, v0, 1.0
	v_fma_mixlo_f16 v0, v14, v65, 0
	v_fma_mixlo_f16 v1, v14, v64, 0
	v_fma_mixlo_f16 v2, v14, v63, 0
	v_fma_mixlo_f16 v3, v14, v62, 0
	v_fma_mixlo_f16 v4, v14, v61, 0
	v_fma_mixlo_f16 v5, v14, v60, 0
	v_fma_mixlo_f16 v6, v14, v59, 0
	v_fma_mixlo_f16 v7, v14, v58, 0
	v_fma_mixhi_f16 v3, v14, v38, 0
	v_fma_mixhi_f16 v2, v14, v37, 0
	v_fma_mixhi_f16 v1, v14, v35, 0
	v_fma_mixhi_f16 v0, v14, v34, 0
	v_fma_mixlo_f16 v8, v14, v53, 0
	v_fma_mixhi_f16 v7, v14, v42, 0
	v_fma_mixhi_f16 v6, v14, v41, 0
	v_fma_mixhi_f16 v5, v14, v40, 0
	v_fma_mixhi_f16 v4, v14, v39, 0
	global_store_dwordx4 v[12:13], v[0:3], off
	global_store_dwordx4 v[12:13], v[4:7], off offset:16
	v_fma_mixlo_f16 v9, v14, v57, 0
	v_fma_mixlo_f16 v10, v14, v56, 0
	v_fma_mixlo_f16 v11, v14, v55, 0
	v_fma_mixlo_f16 v0, v14, v51, 0
	v_fma_mixlo_f16 v1, v14, v50, 0
	v_fma_mixlo_f16 v2, v14, v48, 0
	v_fma_mixlo_f16 v3, v14, v47, 0
	v_fma_mixhi_f16 v11, v14, v54, 0
	v_fma_mixhi_f16 v10, v14, v52, 0
	v_fma_mixhi_f16 v9, v14, v49, 0
	v_fma_mixhi_f16 v8, v14, v36, 0
	v_fma_mixhi_f16 v3, v14, v46, 0
	v_fma_mixhi_f16 v2, v14, v45, 0
	v_fma_mixhi_f16 v1, v14, v44, 0
	v_fma_mixhi_f16 v0, v14, v43, 0
	global_store_dwordx4 v[12:13], v[8:11], off offset:32
	global_store_dwordx4 v[12:13], v[0:3], off offset:48
.LBB1_30:                               ; %.loopexit
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
		.amdhsa_group_segment_fixed_size 8192
		.amdhsa_private_segment_fixed_size 48
		.amdhsa_kernarg_size 52
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 88
		.amdhsa_next_free_sgpr 61
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif,comdat
.Lfunc_end1:
	.size	_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif, .Lfunc_end1-_Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
                                        ; -- End function
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.num_vgpr, 88
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.num_agpr, 0
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.numbered_sgpr, 24
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.private_seg_size, 48
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.uses_vcc, 1
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.uses_flat_scratch, 0
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.has_dyn_sized_stack, 0
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.has_recursion, 0
	.set _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4008
; TotalNumSgprs: 28
; NumVgprs: 88
; ScratchSize: 48
; MemoryBound: 1
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 8192 bytes/workgroup (compile time only)
; SGPRBlocks: 8
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 65
; NumVGPRsForWavesPerEU: 88
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif,comdat
	.protected	_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif ; -- Begin function _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
	.globl	_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
	.p2align	8
	.type	_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif,@function
_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif: ; @_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
; %bb.0:
	s_load_dwordx4 s[16:19], s[4:5], 0x28
	s_load_dwordx8 s[8:15], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s19, s7, 5
	s_ashr_i32 s7, s6, 31
	v_and_b32_e32 v3, 63, v0
	s_mul_hi_i32 s1, s6, s16
	s_mul_i32 s0, s6, s16
	s_lshl_b64 s[2:3], s[0:1], 9
	s_lshl_b64 s[0:1], s[0:1], 10
	s_add_u32 s0, s8, s0
	v_lshlrev_b32_e32 v1, 4, v3
	s_addc_u32 s1, s9, s1
	v_add_co_u32_e32 v5, vcc, s0, v1
	v_lshrrev_b32_e32 v10, 6, v0
	s_movk_i32 s0, 0x420
	s_mov_b32 s22, s18
	v_mov_b32_e32 v2, s1
	v_or_b32_e32 v9, 0xfffffe00, v0
	v_mad_u32_u24 v4, v10, s0, v1
	s_mov_b64 s[20:21], s[16:17]
	v_addc_co_u32_e32 v6, vcc, 0, v2, vcc
	v_or_b32_e32 v1, s19, v10
	s_mov_b64 s[0:1], 0
	s_movk_i32 s8, 0x5ff
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v9
	s_branch .LBB2_2
.LBB2_1:                                ;   in Loop: Header=BB2_2 Depth=1
	s_or_b64 exec, exec, s[4:5]
	v_add_u32_e32 v8, 0x200, v8
	v_cmp_lt_u32_e32 vcc, s8, v8
	v_add_u32_e32 v7, 0x2100, v7
	s_or_b64 s[0:1], vcc, s[0:1]
	v_add_u32_e32 v1, 8, v1
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB2_4
.LBB2_2:                                ; =>This Inner Loop Header: Depth=1
	v_cmp_gt_i32_e32 vcc, s16, v1
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB2_1
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[11:12], 10, v[1:2]
	v_add_co_u32_e32 v11, vcc, v5, v11
	v_addc_co_u32_e32 v12, vcc, v6, v12, vcc
	global_load_dwordx4 v[11:14], v[11:12], off
	s_waitcnt vmcnt(0)
	ds_write_b128 v7, v[11:14]
	s_branch .LBB2_1
.LBB2_4:
	s_or_b64 exec, exec, s[0:1]
	v_lshrrev_b32_e32 v5, 4, v0
	v_add_u32_e32 v1, s19, v5
	v_and_b32_e32 v8, 15, v0
	v_cmp_gt_i32_e64 s[0:1], s16, v1
	s_cmp_lt_i32 s17, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc1 .LBB2_63
; %bb.5:                                ; %.preheader256.lr.ph
	s_mul_i32 s4, s7, s17
	s_mul_hi_u32 s5, s6, s17
	s_add_i32 s5, s5, s4
	s_mul_i32 s4, s6, s17
	v_lshlrev_b32_e32 v0, 4, v0
	v_mov_b32_e32 v2, 0xc600
	s_lshl_b64 s[4:5], s[4:5], 10
	v_and_b32_e32 v0, 0x1c00, v0
	v_lshl_add_u32 v40, v5, 6, v2
	v_mov_b32_e32 v2, s5
	v_add_co_u32_e32 v0, vcc, s4, v0
	v_addc_co_u32_e32 v6, vcc, 0, v2, vcc
	v_lshl_or_b32 v0, v3, 4, v0
	v_mov_b32_e32 v3, s11
	v_add_co_u32_e32 v2, vcc, s10, v0
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_add_u32_e32 v42, 0x8400, v4
	s_movk_i32 s4, 0x420
	v_mul_u32_u24_e32 v46, 0x420, v5
	v_mov_b32_e32 v7, 0x8400
	v_mov_b32_e32 v5, s13
	v_add_co_u32_e32 v4, vcc, s12, v0
	v_lshl_or_b32 v41, v8, 2, v40
	v_mov_b32_e32 v30, 0
	v_mad_u32_u24 v47, v8, s4, v7
	v_addc_co_u32_e32 v5, vcc, v5, v6, vcc
	v_lshl_or_b32 v48, v8, 4, v7
	s_mov_b32 s8, 0
	v_mov_b32_e32 v50, 0xff800000
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v0, 0
	s_branch .LBB2_8
.LBB2_6:                                ; %Flow985
                                        ;   in Loop: Header=BB2_8 Depth=1
	v_fmac_f32_e32 v49, v0, v7
	v_mov_b32_e32 v50, v6
	v_mov_b32_e32 v0, v49
.LBB2_7:                                ; %Flow986
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_or_b64 exec, exec, s[4:5]
	v_add_co_u32_e32 v2, vcc, 0x4000, v2
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_add_i32 s8, s8, 16
	s_add_i32 s21, s21, -16
	v_add_co_u32_e32 v4, vcc, 0x4000, v4
	v_add_u32_e32 v10, 16, v10
	s_cmp_ge_i32 s8, s17
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	s_barrier
	s_cbranch_scc1 .LBB2_64
.LBB2_8:                                ; %.preheader256
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_10 Depth 2
                                        ;     Child Loop BB2_15 Depth 2
                                        ;     Child Loop BB2_20 Depth 2
                                        ;     Child Loop BB2_44 Depth 2
                                        ;     Child Loop BB2_62 Depth 2
	v_mov_b32_e32 v7, v3
	s_mov_b64 s[4:5], 0
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v51, v42
	v_mov_b32_e32 v52, v9
	s_branch .LBB2_10
.LBB2_9:                                ;   in Loop: Header=BB2_10 Depth=2
	s_or_b64 exec, exec, s[6:7]
	v_add_co_u32_e32 v52, vcc, 0x200, v52
	s_xor_b64 s[6:7], vcc, -1
	v_add_co_u32_e32 v6, vcc, 0x2000, v6
	s_and_b64 s[6:7], exec, s[6:7]
	v_add_u32_e32 v51, 0x2100, v51
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	s_or_b64 s[4:5], s[6:7], s[4:5]
	v_add_u32_e32 v49, 8, v49
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz .LBB2_12
.LBB2_10:                               ;   Parent Loop BB2_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_cmp_gt_i32_e32 vcc, s17, v49
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_9
; %bb.11:                               ;   in Loop: Header=BB2_10 Depth=2
	global_load_dwordx4 v[53:56], v[6:7], off
	s_waitcnt vmcnt(0)
	ds_write_b128 v51, v[53:56]
	s_branch .LBB2_9
.LBB2_12:                               ;   in Loop: Header=BB2_8 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_sub_i32 s9, s17, s8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_18
; %bb.13:                               ;   in Loop: Header=BB2_8 Depth=1
	v_cmp_gt_i32_e32 vcc, s9, v8
	v_mov_b32_e32 v6, 0xff800000
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_17
; %bb.14:                               ; %.preheader255.preheader
                                        ;   in Loop: Header=BB2_8 Depth=1
	v_mov_b32_e32 v49, 0
	s_mov_b32 s10, -4
	v_mov_b32_e32 v6, v47
	v_mov_b32_e32 v7, v46
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v53, 0
.LBB2_15:                               ; %.preheader255
                                        ;   Parent Loop BB2_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[54:57], v7
	ds_read_b128 v[58:61], v7 offset:16
	ds_read_b128 v[62:65], v7 offset:32
	ds_read_b128 v[66:69], v7 offset:48
	ds_read_b128 v[70:73], v6
	ds_read_b128 v[74:77], v6 offset:16
	ds_read_b128 v[78:81], v6 offset:32
	ds_read_b128 v[82:85], v6 offset:48
	s_add_i32 s10, s10, 16
	s_waitcnt lgkmcnt(3)
	v_dot2_f32_f16 v49, v54, v70, v49
	v_dot2_f32_f16 v51, v55, v71, v51
	v_dot2_f32_f16 v52, v56, v72, v52
	v_dot2_f32_f16 v53, v57, v73, v53
	s_waitcnt lgkmcnt(2)
	v_dot2_f32_f16 v49, v58, v74, v49
	v_dot2_f32_f16 v51, v59, v75, v51
	v_dot2_f32_f16 v52, v60, v76, v52
	v_dot2_f32_f16 v53, v61, v77, v53
	s_waitcnt lgkmcnt(1)
	v_dot2_f32_f16 v49, v62, v78, v49
	v_dot2_f32_f16 v51, v63, v79, v51
	v_dot2_f32_f16 v52, v64, v80, v52
	v_dot2_f32_f16 v53, v65, v81, v53
	v_add_u32_e32 v7, 64, v7
	v_add_u32_e32 v6, 64, v6
	s_cmpk_gt_u32 s10, 0xfb
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v49, v66, v82, v49
	v_dot2_f32_f16 v51, v67, v83, v51
	v_dot2_f32_f16 v52, v68, v84, v52
	v_dot2_f32_f16 v53, v69, v85, v53
	s_cbranch_scc0 .LBB2_15
; %bb.16:                               ;   in Loop: Header=BB2_8 Depth=1
	v_add_f32_e32 v6, v51, v49
	v_add_f32_e32 v6, v52, v6
	v_add_f32_e32 v6, v53, v6
	v_mul_f32_e32 v6, s18, v6
.LBB2_17:                               ; %Flow987
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_or_b64 exec, exec, s[6:7]
	ds_write_b32 v41, v6
.LBB2_18:                               ; %Flow988
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v7, v5
	s_mov_b64 s[4:5], 0
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v51, v42
	v_mov_b32_e32 v52, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_branch .LBB2_20
.LBB2_19:                               ;   in Loop: Header=BB2_20 Depth=2
	s_or_b64 exec, exec, s[6:7]
	v_add_co_u32_e32 v52, vcc, 0x200, v52
	s_xor_b64 s[6:7], vcc, -1
	v_add_co_u32_e32 v6, vcc, 0x2000, v6
	s_and_b64 s[6:7], exec, s[6:7]
	v_add_u32_e32 v51, 0x2100, v51
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	s_or_b64 s[4:5], s[6:7], s[4:5]
	v_add_u32_e32 v49, 8, v49
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz .LBB2_22
.LBB2_20:                               ;   Parent Loop BB2_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_cmp_gt_i32_e32 vcc, s17, v49
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_19
; %bb.21:                               ;   in Loop: Header=BB2_20 Depth=2
	global_load_dwordx4 v[53:56], v[6:7], off
	s_waitcnt vmcnt(0)
	ds_write_b128 v51, v[53:56]
	s_branch .LBB2_19
.LBB2_22:                               ;   in Loop: Header=BB2_8 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_7
; %bb.23:                               ; %.preheader254.preheader
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_gt_i32 s9, 0
	s_cselect_b64 s[6:7], -1, 0
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz .LBB2_59
; %bb.24:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v6, v40
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v6, 0xff800000, v6
	s_cmp_lt_i32 s9, 2
	s_cbranch_scc1 .LBB2_26
.LBB2_25:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:4
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
.LBB2_26:                               ; %.preheader254.2
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 3
	s_cbranch_scc0 .LBB2_46
; %bb.27:                               ; %.preheader254.3
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 4
	s_cbranch_scc0 .LBB2_47
.LBB2_28:                               ; %.preheader254.4
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 5
	s_cbranch_scc0 .LBB2_48
.LBB2_29:                               ; %.preheader254.5
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 6
	s_cbranch_scc0 .LBB2_49
.LBB2_30:                               ; %.preheader254.6
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 7
	s_cbranch_scc0 .LBB2_50
.LBB2_31:                               ; %.preheader254.7
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 8
	s_cbranch_scc0 .LBB2_51
.LBB2_32:                               ; %.preheader254.8
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 9
	s_cbranch_scc0 .LBB2_52
.LBB2_33:                               ; %.preheader254.9
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 10
	s_cbranch_scc0 .LBB2_53
.LBB2_34:                               ; %.preheader254.10
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 11
	s_cbranch_scc0 .LBB2_54
.LBB2_35:                               ; %.preheader254.11
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 12
	s_cbranch_scc0 .LBB2_55
.LBB2_36:                               ; %.preheader254.12
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 13
	s_cbranch_scc0 .LBB2_56
.LBB2_37:                               ; %.preheader254.13
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 14
	s_cbranch_scc0 .LBB2_57
.LBB2_38:                               ; %.preheader254.14
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 15
	s_cbranch_scc0 .LBB2_58
.LBB2_39:                               ; %.preheader254.15
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_cmp_lt_i32 s9, 16
	s_cbranch_scc1 .LBB2_41
.LBB2_40:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:60
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
.LBB2_41:                               ; %.preheader
                                        ;   in Loop: Header=BB2_8 Depth=1
	v_max_f32_e32 v6, v6, v6
	v_max_f32_e32 v7, v50, v50
	v_max_f32_e32 v6, v7, v6
	v_sub_f32_e32 v7, v50, v6
	v_mul_f32_e32 v7, 0x3fb8aa3b, v7
	v_exp_f32_e32 v7, v7
	v_cmp_lt_f32_e32 vcc, 0, v0
	v_mov_b32_e32 v49, 0
	v_cndmask_b32_e32 v7, 0, v7, vcc
	v_mul_f32_e32 v30, v7, v30
	v_mul_f32_e32 v32, v7, v32
	v_mul_f32_e32 v45, v7, v45
	v_mul_f32_e32 v33, v7, v33
	v_mul_f32_e32 v44, v7, v44
	v_mul_f32_e32 v34, v7, v34
	v_mul_f32_e32 v43, v7, v43
	v_mul_f32_e32 v35, v7, v35
	v_mul_f32_e32 v39, v7, v39
	v_mul_f32_e32 v27, v7, v27
	v_mul_f32_e32 v38, v7, v38
	v_mul_f32_e32 v28, v7, v28
	v_mul_f32_e32 v37, v7, v37
	v_mul_f32_e32 v29, v7, v29
	v_mul_f32_e32 v36, v7, v36
	v_mul_f32_e32 v31, v7, v31
	v_mul_f32_e32 v26, v7, v26
	v_mul_f32_e32 v19, v7, v19
	v_mul_f32_e32 v25, v7, v25
	v_mul_f32_e32 v20, v7, v20
	v_mul_f32_e32 v24, v7, v24
	v_mul_f32_e32 v21, v7, v21
	v_mul_f32_e32 v23, v7, v23
	v_mul_f32_e32 v22, v7, v22
	v_mul_f32_e32 v18, v7, v18
	v_mul_f32_e32 v11, v7, v11
	v_mul_f32_e32 v17, v7, v17
	v_mul_f32_e32 v12, v7, v12
	v_mul_f32_e32 v16, v7, v16
	v_mul_f32_e32 v13, v7, v13
	v_mul_f32_e32 v15, v7, v15
	s_andn2_b64 vcc, exec, s[6:7]
	v_mul_f32_e32 v14, v7, v14
	s_cbranch_vccnz .LBB2_6
; %bb.42:                               ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB2_8 Depth=1
	v_med3_i32 v49, s21, 1, 16
	s_cmp_lt_i32 s21, 4
	v_readfirstlane_b32 s7, v49
	s_cbranch_scc1 .LBB2_60
; %bb.43:                               ; %.lr.ph.preheader.new
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_and_b32 s6, s7, -4
	s_mov_b32 s9, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v50, v48
	v_mov_b32_e32 v51, v40
.LBB2_44:                               ; %.lr.ph
                                        ;   Parent Loop BB2_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[52:55], v51
	ds_read_b128 v[56:59], v50
	ds_read_b128 v[60:63], v50 offset:256
	ds_read_b128 v[64:67], v50 offset:512
	ds_read_b128 v[68:71], v50 offset:768
	ds_read_b128 v[72:75], v50 offset:1056
	ds_read_b128 v[76:79], v50 offset:1312
	ds_read_b128 v[80:83], v50 offset:1568
	ds_read_b128 v[84:87], v50 offset:1824
	ds_read_b128 v[88:91], v50 offset:2112
	ds_read_b128 v[92:95], v50 offset:2368
	ds_read_b128 v[96:99], v50 offset:2624
	ds_read_b128 v[100:103], v50 offset:2880
	ds_read_b128 v[104:107], v50 offset:3168
	ds_read_b128 v[108:111], v50 offset:3424
	ds_read_b128 v[112:115], v50 offset:3680
	ds_read_b128 v[116:119], v50 offset:3936
	s_waitcnt lgkmcnt(14)
	v_sub_f32_e32 v52, v52, v6
	v_sub_f32_e32 v53, v53, v6
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	v_sub_f32_e32 v54, v54, v6
	v_mul_f32_e32 v53, 0x3fb8aa3b, v53
	v_exp_f32_e32 v52, v52
	v_sub_f32_e32 v55, v55, v6
	v_mul_f32_e32 v54, 0x3fb8aa3b, v54
	v_exp_f32_e32 v53, v53
	v_mul_f32_e32 v55, 0x3fb8aa3b, v55
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v55, v55
	v_fma_mix_f32 v30, v52, v56, v30 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v32, v52, v56, v32 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v52, v57, v45 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v33, v52, v57, v33 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v52, v58, v44 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v34, v52, v58, v34 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v52, v59, v43 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v52, v59, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v39, v52, v60, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v27, v52, v60, v27 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v52, v61, v38 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v28, v52, v61, v28 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v52, v62, v37 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v29, v52, v62, v29 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v52, v63, v36 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v31, v52, v63, v31 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(13)
	v_fma_mix_f32 v26, v52, v64, v26 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v19, v52, v64, v19 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v25, v52, v65, v25 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v20, v52, v65, v20 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v24, v52, v66, v24 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v21, v52, v66, v21 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v23, v52, v67, v23 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v22, v52, v67, v22 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(12)
	v_fma_mix_f32 v18, v52, v68, v18 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v52, v68, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v17, v52, v69, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v12, v52, v69, v12 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v16, v52, v70, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v13, v52, v70, v13 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v52, v71, v15 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v52, v71, v14 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_add_f32_e32 v49, v49, v52
	s_waitcnt lgkmcnt(11)
	v_fma_mix_f32 v30, v53, v72, v30 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v32, v53, v72, v32 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v53, v73, v45 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v33, v53, v73, v33 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v53, v74, v44 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v34, v53, v74, v34 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v53, v75, v43 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v53, v75, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(10)
	v_fma_mix_f32 v39, v53, v76, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v27, v53, v76, v27 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v53, v77, v38 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v28, v53, v77, v28 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v53, v78, v37 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v29, v53, v78, v29 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v53, v79, v36 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v31, v53, v79, v31 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(9)
	v_fma_mix_f32 v26, v53, v80, v26 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v19, v53, v80, v19 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v25, v53, v81, v25 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v20, v53, v81, v20 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v24, v53, v82, v24 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v21, v53, v82, v21 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v23, v53, v83, v23 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v22, v53, v83, v22 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(8)
	v_fma_mix_f32 v18, v53, v84, v18 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v53, v84, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v17, v53, v85, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v12, v53, v85, v12 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v16, v53, v86, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v13, v53, v86, v13 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v53, v87, v15 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v53, v87, v14 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_add_f32_e32 v49, v49, v53
	s_add_i32 s9, s9, 4
	s_waitcnt lgkmcnt(7)
	v_fma_mix_f32 v30, v54, v88, v30 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v32, v54, v88, v32 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v54, v89, v45 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v33, v54, v89, v33 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v54, v90, v44 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v34, v54, v90, v34 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v54, v91, v43 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v54, v91, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(6)
	v_fma_mix_f32 v39, v54, v92, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v27, v54, v92, v27 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v54, v93, v38 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v28, v54, v93, v28 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v54, v94, v37 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v29, v54, v94, v29 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v54, v95, v36 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v31, v54, v95, v31 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(5)
	v_fma_mix_f32 v26, v54, v96, v26 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v19, v54, v96, v19 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v25, v54, v97, v25 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v20, v54, v97, v20 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v24, v54, v98, v24 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v21, v54, v98, v21 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v23, v54, v99, v23 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v22, v54, v99, v22 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(4)
	v_fma_mix_f32 v18, v54, v100, v18 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v54, v100, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v17, v54, v101, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v12, v54, v101, v12 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v16, v54, v102, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v13, v54, v102, v13 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v54, v103, v15 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v54, v103, v14 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_add_f32_e32 v49, v49, v54
	v_add_u32_e32 v51, 16, v51
	v_add_u32_e32 v50, 0x1080, v50
	s_cmp_eq_u32 s6, s9
	s_waitcnt lgkmcnt(3)
	v_fma_mix_f32 v30, v55, v104, v30 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v32, v55, v104, v32 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v55, v105, v45 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v33, v55, v105, v33 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v55, v106, v44 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v34, v55, v106, v34 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v55, v107, v43 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v55, v107, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_fma_mix_f32 v39, v55, v108, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v27, v55, v108, v27 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v55, v109, v38 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v28, v55, v109, v28 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v55, v110, v37 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v29, v55, v110, v29 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v55, v111, v36 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v31, v55, v111, v31 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v26, v55, v112, v26 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v19, v55, v112, v19 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v25, v55, v113, v25 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v20, v55, v113, v20 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v24, v55, v114, v24 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v21, v55, v114, v21 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v23, v55, v115, v23 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v22, v55, v115, v22 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v18, v55, v116, v18 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v55, v116, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v17, v55, v117, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v12, v55, v117, v12 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v16, v55, v118, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v13, v55, v118, v13 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v55, v119, v15 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v55, v119, v14 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_add_f32_e32 v49, v49, v55
	s_cbranch_scc0 .LBB2_44
; %bb.45:                               ; %._crit_edge.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_and_b32 s7, s7, 3
	s_cmp_eq_u32 s7, 0
	s_cbranch_scc0 .LBB2_61
	s_branch .LBB2_6
.LBB2_46:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:8
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 4
	s_cbranch_scc1 .LBB2_28
.LBB2_47:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:12
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 5
	s_cbranch_scc1 .LBB2_29
.LBB2_48:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:16
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 6
	s_cbranch_scc1 .LBB2_30
.LBB2_49:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:20
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 7
	s_cbranch_scc1 .LBB2_31
.LBB2_50:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:24
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 8
	s_cbranch_scc1 .LBB2_32
.LBB2_51:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:28
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 9
	s_cbranch_scc1 .LBB2_33
.LBB2_52:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:32
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 10
	s_cbranch_scc1 .LBB2_34
.LBB2_53:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:36
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 11
	s_cbranch_scc1 .LBB2_35
.LBB2_54:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:40
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 12
	s_cbranch_scc1 .LBB2_36
.LBB2_55:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:44
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 13
	s_cbranch_scc1 .LBB2_37
.LBB2_56:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:48
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 14
	s_cbranch_scc1 .LBB2_38
.LBB2_57:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:52
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 15
	s_cbranch_scc1 .LBB2_39
.LBB2_58:                               ;   in Loop: Header=BB2_8 Depth=1
	ds_read_b32 v7, v40 offset:56
	v_max_f32_e32 v6, v6, v6
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v7, v7, v7
	v_max_f32_e32 v6, v6, v7
	s_cmp_lt_i32 s9, 16
	s_cbranch_scc0 .LBB2_40
	s_branch .LBB2_41
.LBB2_59:                               ;   in Loop: Header=BB2_8 Depth=1
	v_mov_b32_e32 v6, 0xff800000
	s_cmp_lt_i32 s9, 2
	s_cbranch_scc0 .LBB2_25
	s_branch .LBB2_26
.LBB2_60:                               ;   in Loop: Header=BB2_8 Depth=1
	v_mov_b32_e32 v49, 0
	s_mov_b32 s6, 0
	s_and_b32 s7, s7, 3
	s_cmp_eq_u32 s7, 0
	s_cbranch_scc1 .LBB2_6
.LBB2_61:                               ; %.lr.ph.epil.preheader
                                        ;   in Loop: Header=BB2_8 Depth=1
	s_mul_i32 s9, s6, 0x420
	v_add_u32_e32 v50, s9, v48
	v_lshl_add_u32 v51, s6, 2, v40
.LBB2_62:                               ; %.lr.ph.epil
                                        ;   Parent Loop BB2_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b32 v68, v51
	ds_read_b128 v[52:55], v50
	ds_read_b128 v[56:59], v50 offset:256
	ds_read_b128 v[60:63], v50 offset:512
	ds_read_b128 v[64:67], v50 offset:768
	s_waitcnt lgkmcnt(4)
	v_sub_f32_e32 v68, v68, v6
	v_mul_f32_e32 v68, 0x3fb8aa3b, v68
	v_exp_f32_e32 v68, v68
	s_add_i32 s7, s7, -1
	v_add_u32_e32 v50, 0x420, v50
	v_add_u32_e32 v51, 4, v51
	s_cmp_lg_u32 s7, 0
	s_waitcnt lgkmcnt(3)
	v_fma_mix_f32 v30, v68, v52, v30 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v32, v68, v52, v32 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v68, v53, v45 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v33, v68, v53, v33 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v68, v54, v44 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v34, v68, v54, v34 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v68, v55, v43 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v68, v55, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_fma_mix_f32 v39, v68, v56, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v27, v68, v56, v27 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v68, v57, v38 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v28, v68, v57, v28 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v68, v58, v37 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v29, v68, v58, v29 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v68, v59, v36 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v31, v68, v59, v31 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v26, v68, v60, v26 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v19, v68, v60, v19 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v25, v68, v61, v25 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v20, v68, v61, v20 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v24, v68, v62, v24 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v21, v68, v62, v21 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v23, v68, v63, v23 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v22, v68, v63, v22 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v18, v68, v64, v18 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v68, v64, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v17, v68, v65, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v12, v68, v65, v12 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v16, v68, v66, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v13, v68, v66, v13 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v68, v67, v15 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v68, v67, v14 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_add_f32_e32 v49, v49, v68
	s_cbranch_scc1 .LBB2_62
	s_branch .LBB2_6
.LBB2_63:
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v30, 0
.LBB2_64:                               ; %._crit_edge274
	v_cmp_lt_f32_e32 vcc, 0, v0
	s_and_b64 s[0:1], s[0:1], vcc
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_66
; %bb.65:                               ; %.loopexit.loopexit
	v_div_scale_f32 v2, s[0:1], v0, v0, 1.0
	v_div_scale_f32 v3, vcc, 1.0, v0, 1.0
	s_lshl_b64 s[0:1], s[2:3], 1
	s_add_u32 s0, s14, s0
	s_addc_u32 s1, s15, s1
	v_rcp_f32_e32 v4, v2
	v_fma_f32 v5, -v2, v4, 1.0
	v_fmac_f32_e32 v4, v5, v4
	v_mul_f32_e32 v5, v3, v4
	v_fma_f32 v6, -v2, v5, v3
	v_fmac_f32_e32 v5, v6, v4
	v_fma_f32 v2, -v2, v5, v3
	v_div_fmas_f32 v3, v2, v4, v5
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 10, v[1:2]
	v_mov_b32_e32 v5, s1
	v_add_co_u32_e32 v1, vcc, s0, v1
	v_lshlrev_b32_e32 v4, 4, v8
	v_addc_co_u32_e32 v2, vcc, v5, v2, vcc
	v_add_co_u32_e32 v8, vcc, v1, v4
	v_addc_co_u32_e32 v9, vcc, 0, v2, vcc
	v_div_fixup_f32 v10, v3, v0, 1.0
	v_fma_mixlo_f16 v0, v10, v30, 0
	v_fma_mixlo_f16 v1, v10, v45, 0
	v_fma_mixlo_f16 v2, v10, v44, 0
	v_fma_mixlo_f16 v3, v10, v43, 0
	v_fma_mixlo_f16 v4, v10, v39, 0
	v_fma_mixlo_f16 v5, v10, v38, 0
	v_fma_mixlo_f16 v6, v10, v37, 0
	v_fma_mixlo_f16 v7, v10, v36, 0
	v_fma_mixhi_f16 v3, v10, v35, 0
	v_fma_mixhi_f16 v2, v10, v34, 0
	v_fma_mixhi_f16 v1, v10, v33, 0
	v_fma_mixhi_f16 v0, v10, v32, 0
	v_fma_mixhi_f16 v7, v10, v31, 0
	v_fma_mixhi_f16 v6, v10, v29, 0
	v_fma_mixhi_f16 v5, v10, v28, 0
	v_fma_mixhi_f16 v4, v10, v27, 0
	global_store_dwordx4 v[8:9], v[0:3], off
	global_store_dwordx4 v[8:9], v[4:7], off offset:256
	v_fma_mixlo_f16 v0, v10, v26, 0
	v_fma_mixlo_f16 v1, v10, v25, 0
	v_fma_mixlo_f16 v2, v10, v24, 0
	v_fma_mixlo_f16 v3, v10, v23, 0
	v_fma_mixhi_f16 v3, v10, v22, 0
	v_fma_mixhi_f16 v2, v10, v21, 0
	v_fma_mixhi_f16 v1, v10, v20, 0
	v_fma_mixhi_f16 v0, v10, v19, 0
	global_store_dwordx4 v[8:9], v[0:3], off offset:512
	s_nop 0
	v_fma_mixlo_f16 v0, v10, v18, 0
	v_fma_mixlo_f16 v1, v10, v17, 0
	v_fma_mixlo_f16 v2, v10, v16, 0
	v_fma_mixlo_f16 v3, v10, v15, 0
	v_fma_mixhi_f16 v3, v10, v14, 0
	v_fma_mixhi_f16 v2, v10, v13, 0
	v_fma_mixhi_f16 v1, v10, v12, 0
	v_fma_mixhi_f16 v0, v10, v11, 0
	global_store_dwordx4 v[8:9], v[0:3], off offset:768
.LBB2_66:                               ; %.loopexit
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
		.amdhsa_group_segment_fixed_size 52736
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 52
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 120
		.amdhsa_next_free_sgpr 98
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif,"axG",@progbits,_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif,comdat
.Lfunc_end2:
	.size	_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif, .Lfunc_end2-_Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
                                        ; -- End function
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.num_vgpr, 120
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.num_agpr, 0
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.numbered_sgpr, 23
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.private_seg_size, 0
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.uses_vcc, 1
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.uses_flat_scratch, 0
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.has_dyn_sized_stack, 0
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.has_recursion, 0
	.set _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4392
; TotalNumSgprs: 27
; NumVgprs: 120
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 52736 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 29
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 120
; Occupancy: 2
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:
	s_add_u32 s0, s0, s8
	s_load_dwordx4 s[8:11], s[4:5], 0x28
	s_load_dwordx4 s[12:15], s[4:5], 0x8
	s_load_dwordx2 s[20:21], s[4:5], 0x18
	s_addc_u32 s1, s1, 0
	v_lshl_or_b32 v34, s7, 6, v0
	s_waitcnt lgkmcnt(0)
	s_ashr_i32 s7, s8, 31
	s_mul_i32 s16, s10, s6
	s_mul_hi_i32 s17, s10, s6
	s_mul_i32 s6, s16, s7
	s_mul_hi_u32 s7, s16, s8
	s_add_i32 s6, s7, s6
	s_mul_i32 s7, s17, s8
	s_add_i32 s7, s6, s7
	s_mul_i32 s6, s16, s8
                                        ; implicit-def: $vgpr124 : SGPR spill to VGPR lane
	v_cmp_gt_i32_e64 s[48:49], s8, v34
	v_writelane_b32 v124, s6, 0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
	v_writelane_b32 v124, s7, 1
	s_and_saveexec_b64 s[6:7], s[48:49]
	s_cbranch_execz .LBB3_10
; %bb.1:
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mad_i64_i32 v[1:2], s[18:19], s10, v34, 0
	v_readlane_b32 s18, v124, 0
	v_readlane_b32 s19, v124, 1
	s_lshl_b64 s[18:19], s[18:19], 1
	v_lshlrev_b64 v[1:2], 1, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s18
	s_addc_u32 s5, s5, s19
	v_mov_b32_e32 v3, s5
	v_add_co_u32_e32 v29, vcc, s4, v1
	s_cmp_lt_i32 s10, 1
	v_addc_co_u32_e32 v30, vcc, v3, v2, vcc
	s_cbranch_scc1 .LBB3_510
; %bb.2:
	global_load_dwordx4 v[1:4], v[29:30], off
	s_cmp_lt_i32 s10, 9
	s_cbranch_scc1 .LBB3_511
.LBB3_3:
	global_load_dwordx4 v[5:8], v[29:30], off offset:16
	s_cmp_lt_i32 s10, 17
	s_cbranch_scc0 .LBB3_512
.LBB3_4:
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v9, 0
	s_cmp_lt_i32 s10, 25
	s_cbranch_scc0 .LBB3_513
.LBB3_5:
	v_mov_b32_e32 v16, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v13, 0
	s_cmp_lt_i32 s10, 33
	s_cbranch_scc0 .LBB3_514
.LBB3_6:
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v19, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v17, 0
	s_cmp_lt_i32 s10, 41
	s_cbranch_scc0 .LBB3_515
.LBB3_7:
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v21, 0
	s_cmp_lt_i32 s10, 49
	s_cbranch_scc0 .LBB3_516
.LBB3_8:
	v_mov_b32_e32 v28, 0
	v_mov_b32_e32 v27, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v25, 0
	s_cmp_lt_i32 s10, 57
	s_cbranch_scc0 .LBB3_517
.LBB3_9:
	v_mov_b32_e32 v29, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v31, 0
	v_mov_b32_e32 v32, 0
.LBB3_10:                               ; %Flow1364
	s_or_b64 exec, exec, s[6:7]
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc1 .LBB3_518
.LBB3_11:                               ; %.preheader222.lr.ph
	s_ashr_i32 s4, s10, 31
	s_lshr_b32 s4, s4, 29
	s_add_i32 s22, s10, s4
	s_ashr_i32 s4, s9, 31
	s_mul_hi_u32 s5, s16, s9
	s_mul_i32 s4, s16, s4
	s_add_i32 s4, s5, s4
	s_mul_i32 s17, s17, s9
	s_ashr_i32 s8, s22, 3
	s_add_i32 s5, s4, s17
	s_mul_i32 s4, s16, s9
	s_sub_i32 s67, 0, s8
	s_lshl_b32 s33, s8, 4
	s_lshl_b64 s[4:5], s[4:5], 1
	s_add_u32 s52, s12, s4
	s_addc_u32 s53, s13, s5
	s_add_u32 s54, s14, s4
	s_addc_u32 s55, s15, s5
	s_cmp_gt_i32 s10, 0
	s_cselect_b64 s[6:7], -1, 0
	s_cmp_gt_i32 s10, 8
	s_cselect_b64 s[30:31], -1, 0
	s_cmp_gt_i32 s10, 16
	s_cselect_b64 s[42:43], -1, 0
	s_cmp_gt_i32 s10, 24
	s_cselect_b64 s[12:13], -1, 0
	s_cmp_gt_i32 s10, 32
	s_cselect_b64 s[14:15], -1, 0
	s_cmp_gt_i32 s10, 40
	s_cselect_b64 s[16:17], -1, 0
	s_cmp_gt_i32 s10, 48
	v_writelane_b32 v124, s20, 2
	s_cselect_b64 s[18:19], -1, 0
	s_cmp_gt_i32 s10, 56
	v_writelane_b32 v124, s21, 3
	s_cselect_b64 s[20:21], -1, 0
	s_cmp_gt_i32 s10, 1
	s_cselect_b64 s[56:57], -1, 0
	s_cmp_gt_i32 s10, 2
	s_cselect_b64 s[58:59], -1, 0
	s_cmp_gt_i32 s10, 3
	s_cselect_b64 s[60:61], -1, 0
	s_cmp_gt_i32 s10, 4
	s_cselect_b64 s[62:63], -1, 0
	s_cmp_gt_i32 s10, 5
	s_cselect_b64 s[64:65], -1, 0
	s_cmp_gt_i32 s10, 6
	s_cselect_b64 s[68:69], -1, 0
	s_cmp_gt_i32 s10, 7
	s_cselect_b64 s[70:71], -1, 0
	s_cmp_gt_i32 s10, 9
	s_cselect_b64 s[72:73], -1, 0
	s_cmp_gt_i32 s10, 10
	s_cselect_b64 s[76:77], -1, 0
	s_cmp_gt_i32 s10, 11
	s_cselect_b64 s[78:79], -1, 0
	s_cmp_gt_i32 s10, 12
	s_cselect_b64 s[82:83], -1, 0
	s_cmp_gt_i32 s10, 13
	s_cselect_b64 s[84:85], -1, 0
	s_cmp_gt_i32 s10, 14
	s_cselect_b64 s[86:87], -1, 0
	s_cmp_gt_i32 s10, 15
	s_cselect_b64 s[88:89], -1, 0
	s_cmp_gt_i32 s10, 17
	s_cselect_b64 s[90:91], -1, 0
	s_cmp_gt_i32 s10, 18
	s_cselect_b64 s[96:97], -1, 0
	s_cmp_gt_i32 s10, 19
	s_cselect_b64 s[92:93], -1, 0
	s_cmp_gt_i32 s10, 20
	s_cselect_b64 s[28:29], -1, 0
	s_cmp_gt_i32 s10, 21
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 4
	s_cmp_gt_i32 s10, 22
	v_writelane_b32 v124, s5, 5
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 6
	s_cmp_gt_i32 s10, 23
	v_writelane_b32 v124, s5, 7
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 8
	s_cmp_gt_i32 s10, 25
	v_writelane_b32 v124, s5, 9
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 10
	s_cmp_gt_i32 s10, 26
	v_writelane_b32 v124, s5, 11
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 12
	s_cmp_gt_i32 s10, 27
	v_writelane_b32 v124, s5, 13
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 14
	s_cmp_gt_i32 s10, 28
	v_writelane_b32 v124, s5, 15
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 16
	s_cmp_gt_i32 s10, 29
	v_writelane_b32 v124, s5, 17
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 18
	s_cmp_gt_i32 s10, 30
	v_writelane_b32 v124, s5, 19
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 20
	s_cmp_gt_i32 s10, 31
	v_writelane_b32 v124, s5, 21
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 22
	s_cmp_gt_i32 s10, 33
	v_writelane_b32 v124, s5, 23
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 24
	s_cmp_gt_i32 s10, 34
	v_writelane_b32 v124, s5, 25
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 26
	s_cmp_gt_i32 s10, 35
	v_writelane_b32 v124, s5, 27
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 28
	s_cmp_gt_i32 s10, 36
	v_writelane_b32 v124, s5, 29
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 30
	s_cmp_gt_i32 s10, 37
	v_writelane_b32 v124, s5, 31
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 32
	s_cmp_gt_i32 s10, 38
	v_writelane_b32 v124, s5, 33
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 34
	s_cmp_gt_i32 s10, 39
	v_writelane_b32 v124, s5, 35
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 36
	s_cmp_gt_i32 s10, 41
	v_writelane_b32 v124, s5, 37
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 38
	s_cmp_gt_i32 s10, 42
	v_writelane_b32 v124, s5, 39
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 40
	s_cmp_gt_i32 s10, 43
	v_writelane_b32 v124, s5, 41
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 42
	s_cmp_gt_i32 s10, 44
	v_writelane_b32 v124, s5, 43
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 44
	s_cmp_gt_i32 s10, 45
	v_writelane_b32 v124, s5, 45
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 46
	s_cmp_gt_i32 s10, 46
	v_writelane_b32 v124, s5, 47
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 48
	s_cmp_gt_i32 s10, 47
	v_writelane_b32 v124, s5, 49
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 50
	s_cmp_gt_i32 s10, 49
	v_writelane_b32 v124, s5, 51
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 52
	s_cmp_gt_i32 s10, 50
	v_writelane_b32 v124, s5, 53
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 54
	s_cmp_gt_i32 s10, 51
	v_writelane_b32 v124, s5, 55
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 56
	s_cmp_gt_i32 s10, 52
	v_writelane_b32 v124, s5, 57
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 58
	s_cmp_gt_i32 s10, 53
	v_writelane_b32 v124, s5, 59
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 60
	s_cmp_gt_i32 s10, 54
	v_writelane_b32 v124, s5, 61
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v124, s4, 62
	s_cmp_gt_i32 s10, 55
	v_writelane_b32 v124, s5, 63
	s_cselect_b64 s[4:5], -1, 0
                                        ; implicit-def: $vgpr123 : SGPR spill to VGPR lane
	s_cmp_gt_i32 s10, 57
	v_writelane_b32 v123, s4, 0
	v_writelane_b32 v123, s5, 1
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v123, s4, 2
	s_cmp_gt_i32 s10, 58
	v_writelane_b32 v123, s5, 3
	s_cselect_b64 s[4:5], -1, 0
	v_writelane_b32 v123, s4, 4
	s_cmp_gt_i32 s10, 59
	v_writelane_b32 v123, s5, 5
	s_cselect_b64 s[4:5], -1, 0
	s_cmp_gt_i32 s10, 60
	v_writelane_b32 v123, s4, 6
	s_cselect_b64 s[74:75], -1, 0
	s_cmp_gt_i32 s10, 61
	v_writelane_b32 v123, s5, 7
	s_cselect_b64 s[4:5], -1, 0
	s_cmp_gt_i32 s10, 62
	v_writelane_b32 v123, s4, 8
	s_cselect_b64 s[80:81], -1, 0
	s_cmp_gt_i32 s10, 63
	v_writelane_b32 v123, s5, 9
	s_cselect_b64 s[4:5], -1, 0
	s_abs_i32 s8, s8
	v_cvt_f32_u32_e32 v33, s8
	v_writelane_b32 v123, s4, 10
	v_writelane_b32 v123, s5, 11
	s_sub_i32 s4, 0, s8
	v_rcp_iflag_f32_e32 v33, v33
	s_ashr_i32 s50, s22, 31
	v_lshlrev_b32_e32 v36, 4, v0
	v_mov_b32_e32 v102, 0
	v_mul_f32_e32 v33, 0x4f7ffffe, v33
	v_cvt_u32_f32_e32 v33, v33
	v_mov_b32_e32 v105, 0xff800000
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v91, 0
	v_mul_lo_u32 v35, s4, v33
	s_lshl_b32 s4, s50, 7
	v_subrev_u32_e32 v100, s4, v36
	s_mov_b32 s4, s9
	v_writelane_b32 v123, s4, 12
	v_cmp_gt_i32_e64 s[4:5], s33, v0
	v_writelane_b32 v123, s4, 13
	v_writelane_b32 v123, s5, 14
	v_writelane_b32 v123, s58, 15
	v_writelane_b32 v123, s59, 16
	v_writelane_b32 v123, s62, 17
	v_writelane_b32 v123, s63, 18
	v_writelane_b32 v123, s68, 19
	v_writelane_b32 v123, s69, 20
	v_writelane_b32 v123, s76, 21
	v_writelane_b32 v123, s77, 22
	v_writelane_b32 v123, s82, 23
	v_writelane_b32 v123, s83, 24
	v_writelane_b32 v123, s86, 25
	v_writelane_b32 v123, s87, 26
	v_writelane_b32 v123, s96, 27
	v_writelane_b32 v123, s97, 28
	v_writelane_b32 v123, s48, 29
	v_writelane_b32 v123, s49, 30
	v_writelane_b32 v123, s52, 31
	v_writelane_b32 v123, s53, 32
	v_writelane_b32 v123, s54, 33
	v_writelane_b32 v123, s55, 34
	v_writelane_b32 v123, s56, 35
	v_writelane_b32 v123, s57, 36
	v_writelane_b32 v123, s60, 37
	v_writelane_b32 v123, s61, 38
	v_writelane_b32 v123, s64, 39
	v_writelane_b32 v123, s65, 40
	v_writelane_b32 v123, s70, 41
	v_writelane_b32 v123, s71, 42
	v_writelane_b32 v123, s72, 43
	v_writelane_b32 v123, s73, 44
	v_writelane_b32 v123, s78, 45
	v_writelane_b32 v123, s79, 46
	v_writelane_b32 v123, s84, 47
	v_writelane_b32 v123, s85, 48
	v_writelane_b32 v123, s88, 49
	v_writelane_b32 v123, s89, 50
	v_mul_hi_u32 v35, v33, v35
	v_writelane_b32 v123, s90, 51
	v_writelane_b32 v123, s91, 52
	v_writelane_b32 v123, s92, 53
	v_writelane_b32 v123, s93, 54
	v_add_u32_e32 v101, v33, v35
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v99, 0
	s_mov_b32 s51, 0
	v_writelane_b32 v123, s28, 55
	v_writelane_b32 v123, s29, 56
	s_branch .LBB3_14
.LBB3_12:                               ; %Flow1347
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_fmac_f32_e32 v104, v99, v105
	v_readlane_b32 s22, v123, 57
	v_mov_b32_e32 v105, v103
	v_mov_b32_e32 v99, v104
	v_readlane_b32 s23, v123, 58
.LBB3_13:                               ; %Flow1358
                                        ;   in Loop: Header=BB3_14 Depth=1
	s_or_b64 exec, exec, s[22:23]
	v_readlane_b32 s4, v123, 12
	s_add_i32 s51, s51, 16
	s_add_i32 s4, s4, -16
	s_cmp_ge_i32 s51, s9
	; wave barrier
	v_writelane_b32 v123, s4, 12
	s_cbranch_scc1 .LBB3_508
.LBB3_14:                               ; %.preheader222
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_17 Depth 2
                                        ;     Child Loop BB3_24 Depth 2
                                        ;     Child Loop BB3_156 Depth 2
                                        ;     Child Loop BB3_175 Depth 2
                                        ;     Child Loop BB3_179 Depth 2
                                        ;     Child Loop BB3_184 Depth 2
                                        ;     Child Loop BB3_444 Depth 2
	s_mov_b64 s[4:5], exec
	v_readlane_b32 s22, v123, 13
	v_readlane_b32 s23, v123, 14
	s_and_b64 s[22:23], s[4:5], s[22:23]
	s_mov_b64 exec, s[22:23]
	s_cbranch_execz .LBB3_19
; %bb.15:                               ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	s_mov_b64 s[22:23], 0
	v_mov_b32_e32 v103, v100
	v_mov_b32_e32 v33, v0
	s_branch .LBB3_17
.LBB3_16:                               ;   in Loop: Header=BB3_17 Depth=2
	s_or_b64 exec, exec, s[24:25]
	v_add_u32_e32 v33, 64, v33
	v_cmp_le_i32_e32 vcc, s33, v33
	s_or_b64 s[22:23], vcc, s[22:23]
	v_add_u32_e32 v103, 0x400, v103
	s_andn2_b64 exec, exec, s[22:23]
	s_cbranch_execz .LBB3_19
.LBB3_17:                               ; %.lr.ph
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v104, v33, v101
	v_mul_lo_u32 v106, v104, s8
	v_add_u32_e32 v107, 1, v104
	v_sub_u32_e32 v106, v33, v106
	v_subrev_u32_e32 v108, s8, v106
	v_cmp_le_u32_e32 vcc, s8, v106
	v_cndmask_b32_e32 v104, v104, v107, vcc
	v_cndmask_b32_e32 v106, v106, v108, vcc
	v_add_u32_e32 v107, 1, v104
	v_cmp_le_u32_e32 vcc, s8, v106
	v_cndmask_b32_e32 v104, v104, v107, vcc
	v_xor_b32_e32 v104, s50, v104
	v_subrev_u32_e32 v106, s50, v104
	v_add_u32_e32 v107, s51, v106
	v_cmp_gt_i32_e32 vcc, s9, v107
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB3_16
; %bb.18:                               ;   in Loop: Header=BB3_17 Depth=2
	v_mad_i64_i32 v[107:108], s[26:27], v107, s10, 0
	v_mad_u64_u32 v[109:110], s[26:27], s67, v106, v[33:34]
	v_lshlrev_b64 v[111:112], 1, v[107:108]
	v_mov_b32_e32 v110, v102
	v_mov_b32_e32 v107, s53
	v_add_co_u32_e32 v108, vcc, s52, v111
	v_lshlrev_b64 v[113:114], 4, v[109:110]
	v_addc_co_u32_e32 v115, vcc, v107, v112, vcc
	v_add_co_u32_e32 v107, vcc, v108, v113
	v_addc_co_u32_e32 v108, vcc, v115, v114, vcc
	v_mov_b32_e32 v115, s55
	v_add_co_u32_e32 v111, vcc, s54, v111
	v_addc_co_u32_e32 v112, vcc, v115, v112, vcc
	v_add_co_u32_e32 v111, vcc, v111, v113
	global_load_dwordx4 v[107:110], v[107:108], off
	v_addc_co_u32_e32 v112, vcc, v112, v114, vcc
	global_load_dwordx4 v[111:114], v[111:112], off
	v_mul_lo_u32 v106, s33, v106
	v_lshlrev_b32_e32 v104, 7, v104
	v_sub_u32_e32 v104, v104, v106
	v_add_u32_e32 v104, v103, v104
	s_waitcnt vmcnt(1)
	ds_write_b128 v104, v[107:110]
	s_waitcnt vmcnt(0)
	ds_write_b128 v104, v[111:114] offset:2048
	s_branch .LBB3_16
.LBB3_19:                               ; %Flow1360
                                        ;   in Loop: Header=BB3_14 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_and_saveexec_b64 s[22:23], s[48:49]
	s_cbranch_execz .LBB3_13
; %bb.20:                               ;   in Loop: Header=BB3_14 Depth=1
	v_readlane_b32 s4, v123, 12
	v_med3_i32 v33, s4, 1, 16
	v_readfirstlane_b32 s4, v33
	s_and_b32 s44, s4, 7
	s_cmp_gt_i32 s9, s51
	s_cselect_b64 s[40:41], -1, 0
	s_cmp_le_i32 s9, s51
	v_mov_b32_e32 v103, 0xff800000
	s_cbranch_scc1 .LBB3_172
; %bb.21:                               ; %.preheader.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_readlane_b32 s4, v123, 12
	s_cmp_lt_i32 s4, 8
	s_cbranch_scc1 .LBB3_152
; %bb.22:                               ; %.preheader.preheader.new
                                        ;   in Loop: Header=BB3_14 Depth=1
	s_mov_b64 s[94:95], s[22:23]
	v_and_b32_e32 v104, 24, v33
	s_mov_b32 s45, 0
	v_mov_b32_e32 v103, 0xff800000
	s_waitcnt vmcnt(0)
	s_branch .LBB3_24
.LBB3_23:                               ;   in Loop: Header=BB3_24 Depth=2
	v_mul_f32_e32 v106, s11, v106
	v_mul_f32_e32 v107, s11, v107
	v_max3_f32 v103, v103, v106, v107
	v_add_f32_e32 v106, v115, v116
	v_mul_f32_e32 v108, s11, v108
	v_mul_f32_e32 v109, s11, v109
	v_add_f32_e32 v106, v114, v106
	v_mul_f32_e32 v110, s11, v110
	v_mul_f32_e32 v111, s11, v111
	v_max3_f32 v103, v103, v108, v109
	v_add_f32_e32 v106, v113, v106
	s_add_i32 s45, s45, 8
	v_mul_f32_e32 v112, s11, v112
	v_max3_f32 v103, v103, v110, v111
	v_mul_f32_e32 v107, s11, v106
	v_cmp_eq_u32_e32 vcc, s45, v104
	v_fma_mixlo_f16 v106, s11, v106, 0
	v_mov_b32_e32 v108, s46
	v_max3_f32 v103, v103, v112, v107
	buffer_store_short v106, v108, s[0:3], 0 offen offset:14
	s_cbranch_vccnz .LBB3_153
.LBB3_24:                               ; %.preheader
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_and_b64 vcc, exec, s[6:7]
	s_cbranch_vccz .LBB3_144
; %bb.25:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v106, s4
	ds_read_b128 v[109:112], v106
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v1, v109, 0
	v_dot2_f32_f16 v108, v2, v110, 0
	v_dot2_f32_f16 v107, v3, v111, 0
	v_dot2_f32_f16 v106, v4, v112, 0
	v_cndmask_b32_e64 v110, 0, 1, s[30:31]
	v_cmp_ne_u32_e64 s[4:5], 1, v110
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccnz .LBB3_27
.LBB3_26:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s22, s45, 7
	v_mov_b32_e32 v110, s22
	ds_read_b128 v[110:113], v110 offset:16
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v5, v110, v109
	v_dot2_f32_f16 v108, v6, v111, v108
	v_dot2_f32_f16 v107, v7, v112, v107
	v_dot2_f32_f16 v106, v8, v113, v106
.LBB3_27:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[42:43]
	v_cmp_ne_u32_e64 s[22:23], 1, v110
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccz .LBB3_103
; %bb.28:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[12:13]
	v_cmp_ne_u32_e64 s[24:25], 1, v110
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccz .LBB3_104
.LBB3_29:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[14:15]
	v_cmp_ne_u32_e64 s[26:27], 1, v110
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccz .LBB3_105
.LBB3_30:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[16:17]
	v_cmp_ne_u32_e64 s[28:29], 1, v110
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB3_106
.LBB3_31:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[18:19]
	v_cmp_ne_u32_e64 s[34:35], 1, v110
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccz .LBB3_107
.LBB3_32:                               ;   in Loop: Header=BB3_24 Depth=2
	v_cndmask_b32_e64 v110, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[36:37], 1, v110
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccnz .LBB3_34
.LBB3_33:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s38, s45, 7
	v_mov_b32_e32 v110, s38
	ds_read_b128 v[110:113], v110 offset:112
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v29, v110, v109
	v_dot2_f32_f16 v108, v30, v111, v108
	v_dot2_f32_f16 v107, v31, v112, v107
	v_dot2_f32_f16 v106, v32, v113, v106
.LBB3_34:                               ; %.preheader.1
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v108, v108, v109
	v_add_f32_e32 v107, v107, v108
	v_add_f32_e32 v106, v106, v107
	s_lshl_b32 s46, s45, 1
	v_cndmask_b32_e64 v109, 0, 1, s[6:7]
	v_fma_mixlo_f16 v107, s11, v106, 0
	v_mov_b32_e32 v108, s46
	v_cmp_ne_u32_e64 s[38:39], 1, v109
	s_andn2_b64 vcc, exec, s[6:7]
	buffer_store_short v107, v108, s[0:3], 0 offen
	s_cbranch_vccnz .LBB3_145
; %bb.35:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v107, s47
	ds_read_b128 v[110:113], v107 offset:128
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v1, v110, 0
	v_dot2_f32_f16 v109, v2, v111, 0
	v_dot2_f32_f16 v108, v3, v112, 0
	v_dot2_f32_f16 v107, v4, v113, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_37
.LBB3_36:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:144
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v5, v111, v110
	v_dot2_f32_f16 v109, v6, v112, v109
	v_dot2_f32_f16 v108, v7, v113, v108
	v_dot2_f32_f16 v107, v8, v114, v107
.LBB3_37:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_108
; %bb.38:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_109
.LBB3_39:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_110
.LBB3_40:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_111
.LBB3_41:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_112
.LBB3_42:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_44
.LBB3_43:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:240
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v29, v111, v110
	v_dot2_f32_f16 v109, v30, v112, v109
	v_dot2_f32_f16 v108, v31, v113, v108
	v_dot2_f32_f16 v107, v32, v114, v107
.LBB3_44:                               ; %.preheader.2
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v109, v109, v110
	v_add_f32_e32 v108, v108, v109
	v_add_f32_e32 v107, v107, v108
	v_fma_mixlo_f16 v108, s11, v107, 0
	v_mov_b32_e32 v109, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v108, v109, s[0:3], 0 offen offset:2
	s_cbranch_vccnz .LBB3_146
; %bb.45:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v108, s47
	ds_read_b128 v[111:114], v108 offset:256
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v1, v111, 0
	v_dot2_f32_f16 v110, v2, v112, 0
	v_dot2_f32_f16 v109, v3, v113, 0
	v_dot2_f32_f16 v108, v4, v114, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_47
.LBB3_46:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:272
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v5, v112, v111
	v_dot2_f32_f16 v110, v6, v113, v110
	v_dot2_f32_f16 v109, v7, v114, v109
	v_dot2_f32_f16 v108, v8, v115, v108
.LBB3_47:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_113
; %bb.48:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_114
.LBB3_49:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_115
.LBB3_50:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_116
.LBB3_51:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_117
.LBB3_52:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_54
.LBB3_53:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:368
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v29, v112, v111
	v_dot2_f32_f16 v110, v30, v113, v110
	v_dot2_f32_f16 v109, v31, v114, v109
	v_dot2_f32_f16 v108, v32, v115, v108
.LBB3_54:                               ; %.preheader.3
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v110, v110, v111
	v_add_f32_e32 v109, v109, v110
	v_add_f32_e32 v108, v108, v109
	v_fma_mixlo_f16 v109, s11, v108, 0
	v_mov_b32_e32 v110, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v109, v110, s[0:3], 0 offen offset:4
	s_cbranch_vccnz .LBB3_147
; %bb.55:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v109, s47
	ds_read_b128 v[112:115], v109 offset:384
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v1, v112, 0
	v_dot2_f32_f16 v111, v2, v113, 0
	v_dot2_f32_f16 v110, v3, v114, 0
	v_dot2_f32_f16 v109, v4, v115, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_57
.LBB3_56:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:400
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v5, v113, v112
	v_dot2_f32_f16 v111, v6, v114, v111
	v_dot2_f32_f16 v110, v7, v115, v110
	v_dot2_f32_f16 v109, v8, v116, v109
.LBB3_57:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_118
; %bb.58:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_119
.LBB3_59:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_120
.LBB3_60:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_121
.LBB3_61:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_122
.LBB3_62:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_64
.LBB3_63:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:496
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v29, v113, v112
	v_dot2_f32_f16 v111, v30, v114, v111
	v_dot2_f32_f16 v110, v31, v115, v110
	v_dot2_f32_f16 v109, v32, v116, v109
.LBB3_64:                               ; %.preheader.4
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v111, v111, v112
	v_add_f32_e32 v110, v110, v111
	v_add_f32_e32 v109, v109, v110
	v_fma_mixlo_f16 v110, s11, v109, 0
	v_mov_b32_e32 v111, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v110, v111, s[0:3], 0 offen offset:6
	s_cbranch_vccnz .LBB3_148
; %bb.65:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v110, s47
	ds_read_b128 v[113:116], v110 offset:512
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v1, v113, 0
	v_dot2_f32_f16 v112, v2, v114, 0
	v_dot2_f32_f16 v111, v3, v115, 0
	v_dot2_f32_f16 v110, v4, v116, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_67
.LBB3_66:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:528
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v5, v114, v113
	v_dot2_f32_f16 v112, v6, v115, v112
	v_dot2_f32_f16 v111, v7, v116, v111
	v_dot2_f32_f16 v110, v8, v117, v110
.LBB3_67:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_123
; %bb.68:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_124
.LBB3_69:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_125
.LBB3_70:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_126
.LBB3_71:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_127
.LBB3_72:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_74
.LBB3_73:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:624
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v29, v114, v113
	v_dot2_f32_f16 v112, v30, v115, v112
	v_dot2_f32_f16 v111, v31, v116, v111
	v_dot2_f32_f16 v110, v32, v117, v110
.LBB3_74:                               ; %.preheader.5
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v112, v112, v113
	v_add_f32_e32 v111, v111, v112
	v_add_f32_e32 v110, v110, v111
	v_fma_mixlo_f16 v111, s11, v110, 0
	v_mov_b32_e32 v112, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v111, v112, s[0:3], 0 offen offset:8
	s_cbranch_vccnz .LBB3_149
; %bb.75:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[114:117], v111 offset:640
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v1, v114, 0
	v_dot2_f32_f16 v113, v2, v115, 0
	v_dot2_f32_f16 v112, v3, v116, 0
	v_dot2_f32_f16 v111, v4, v117, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_77
.LBB3_76:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:656
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v5, v115, v114
	v_dot2_f32_f16 v113, v6, v116, v113
	v_dot2_f32_f16 v112, v7, v117, v112
	v_dot2_f32_f16 v111, v8, v118, v111
.LBB3_77:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_128
; %bb.78:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_129
.LBB3_79:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_130
.LBB3_80:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_131
.LBB3_81:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_132
.LBB3_82:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_84
.LBB3_83:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:752
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v29, v115, v114
	v_dot2_f32_f16 v113, v30, v116, v113
	v_dot2_f32_f16 v112, v31, v117, v112
	v_dot2_f32_f16 v111, v32, v118, v111
.LBB3_84:                               ; %.preheader.6
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v113, v113, v114
	v_add_f32_e32 v112, v112, v113
	v_add_f32_e32 v111, v111, v112
	v_fma_mixlo_f16 v112, s11, v111, 0
	v_mov_b32_e32 v113, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v112, v113, s[0:3], 0 offen offset:10
	s_cbranch_vccnz .LBB3_150
; %bb.85:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[115:118], v112 offset:768
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v1, v115, 0
	v_dot2_f32_f16 v114, v2, v116, 0
	v_dot2_f32_f16 v113, v3, v117, 0
	v_dot2_f32_f16 v112, v4, v118, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_87
.LBB3_86:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:784
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v5, v116, v115
	v_dot2_f32_f16 v114, v6, v117, v114
	v_dot2_f32_f16 v113, v7, v118, v113
	v_dot2_f32_f16 v112, v8, v119, v112
.LBB3_87:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_133
; %bb.88:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_134
.LBB3_89:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_135
.LBB3_90:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_136
.LBB3_91:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_137
.LBB3_92:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_94
.LBB3_93:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:880
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v29, v116, v115
	v_dot2_f32_f16 v114, v30, v117, v114
	v_dot2_f32_f16 v113, v31, v118, v113
	v_dot2_f32_f16 v112, v32, v119, v112
.LBB3_94:                               ; %.preheader.7
                                        ;   in Loop: Header=BB3_24 Depth=2
	v_add_f32_e32 v114, v114, v115
	v_add_f32_e32 v113, v113, v114
	v_add_f32_e32 v112, v112, v113
	v_fma_mixlo_f16 v113, s11, v112, 0
	v_mov_b32_e32 v114, s46
	s_and_b64 vcc, exec, s[38:39]
	buffer_store_short v113, v114, s[0:3], 0 offen offset:12
	s_cbranch_vccnz .LBB3_151
; %bb.95:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s38, s45, 7
	v_mov_b32_e32 v113, s38
	ds_read_b128 v[116:119], v113 offset:896
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v1, v116, 0
	v_dot2_f32_f16 v115, v2, v117, 0
	v_dot2_f32_f16 v114, v3, v118, 0
	v_dot2_f32_f16 v113, v4, v119, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_97
.LBB3_96:                               ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:912
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v5, v117, v116
	v_dot2_f32_f16 v115, v6, v118, v115
	v_dot2_f32_f16 v114, v7, v119, v114
	v_dot2_f32_f16 v113, v8, v120, v113
.LBB3_97:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_138
; %bb.98:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_139
.LBB3_99:                               ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_140
.LBB3_100:                              ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_141
.LBB3_101:                              ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_142
.LBB3_102:                              ;   in Loop: Header=BB3_24 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_23
	s_branch .LBB3_143
.LBB3_103:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s24, s45, 7
	v_mov_b32_e32 v110, s24
	ds_read_b128 v[110:113], v110 offset:32
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v9, v110, v109
	v_dot2_f32_f16 v108, v10, v111, v108
	v_dot2_f32_f16 v107, v11, v112, v107
	v_dot2_f32_f16 v106, v12, v113, v106
	v_cndmask_b32_e64 v110, 0, 1, s[12:13]
	v_cmp_ne_u32_e64 s[24:25], 1, v110
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_29
.LBB3_104:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s26, s45, 7
	v_mov_b32_e32 v110, s26
	ds_read_b128 v[110:113], v110 offset:48
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v13, v110, v109
	v_dot2_f32_f16 v108, v14, v111, v108
	v_dot2_f32_f16 v107, v15, v112, v107
	v_dot2_f32_f16 v106, v16, v113, v106
	v_cndmask_b32_e64 v110, 0, 1, s[14:15]
	v_cmp_ne_u32_e64 s[26:27], 1, v110
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccnz .LBB3_30
.LBB3_105:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s28, s45, 7
	v_mov_b32_e32 v110, s28
	ds_read_b128 v[110:113], v110 offset:64
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v17, v110, v109
	v_dot2_f32_f16 v108, v18, v111, v108
	v_dot2_f32_f16 v107, v19, v112, v107
	v_dot2_f32_f16 v106, v20, v113, v106
	v_cndmask_b32_e64 v110, 0, 1, s[16:17]
	v_cmp_ne_u32_e64 s[28:29], 1, v110
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz .LBB3_31
.LBB3_106:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s34, s45, 7
	v_mov_b32_e32 v110, s34
	ds_read_b128 v[110:113], v110 offset:80
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v21, v110, v109
	v_dot2_f32_f16 v108, v22, v111, v108
	v_dot2_f32_f16 v107, v23, v112, v107
	v_dot2_f32_f16 v106, v24, v113, v106
	v_cndmask_b32_e64 v110, 0, 1, s[18:19]
	v_cmp_ne_u32_e64 s[34:35], 1, v110
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB3_32
.LBB3_107:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s36, s45, 7
	v_mov_b32_e32 v110, s36
	ds_read_b128 v[110:113], v110 offset:96
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v109, v25, v110, v109
	v_dot2_f32_f16 v108, v26, v111, v108
	v_dot2_f32_f16 v107, v27, v112, v107
	v_dot2_f32_f16 v106, v28, v113, v106
	v_cndmask_b32_e64 v110, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[36:37], 1, v110
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccz .LBB3_33
	s_branch .LBB3_34
.LBB3_108:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:160
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v9, v111, v110
	v_dot2_f32_f16 v109, v10, v112, v109
	v_dot2_f32_f16 v108, v11, v113, v108
	v_dot2_f32_f16 v107, v12, v114, v107
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_39
.LBB3_109:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:176
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v13, v111, v110
	v_dot2_f32_f16 v109, v14, v112, v109
	v_dot2_f32_f16 v108, v15, v113, v108
	v_dot2_f32_f16 v107, v16, v114, v107
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_40
.LBB3_110:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:192
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v17, v111, v110
	v_dot2_f32_f16 v109, v18, v112, v109
	v_dot2_f32_f16 v108, v19, v113, v108
	v_dot2_f32_f16 v107, v20, v114, v107
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_41
.LBB3_111:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:208
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v21, v111, v110
	v_dot2_f32_f16 v109, v22, v112, v109
	v_dot2_f32_f16 v108, v23, v113, v108
	v_dot2_f32_f16 v107, v24, v114, v107
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_42
.LBB3_112:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v111, s47
	ds_read_b128 v[111:114], v111 offset:224
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v25, v111, v110
	v_dot2_f32_f16 v109, v26, v112, v109
	v_dot2_f32_f16 v108, v27, v113, v108
	v_dot2_f32_f16 v107, v28, v114, v107
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_43
	s_branch .LBB3_44
.LBB3_113:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:288
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v9, v112, v111
	v_dot2_f32_f16 v110, v10, v113, v110
	v_dot2_f32_f16 v109, v11, v114, v109
	v_dot2_f32_f16 v108, v12, v115, v108
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_49
.LBB3_114:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:304
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v13, v112, v111
	v_dot2_f32_f16 v110, v14, v113, v110
	v_dot2_f32_f16 v109, v15, v114, v109
	v_dot2_f32_f16 v108, v16, v115, v108
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_50
.LBB3_115:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:320
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v17, v112, v111
	v_dot2_f32_f16 v110, v18, v113, v110
	v_dot2_f32_f16 v109, v19, v114, v109
	v_dot2_f32_f16 v108, v20, v115, v108
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_51
.LBB3_116:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:336
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v21, v112, v111
	v_dot2_f32_f16 v110, v22, v113, v110
	v_dot2_f32_f16 v109, v23, v114, v109
	v_dot2_f32_f16 v108, v24, v115, v108
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_52
.LBB3_117:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v112, s47
	ds_read_b128 v[112:115], v112 offset:352
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v111, v25, v112, v111
	v_dot2_f32_f16 v110, v26, v113, v110
	v_dot2_f32_f16 v109, v27, v114, v109
	v_dot2_f32_f16 v108, v28, v115, v108
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_53
	s_branch .LBB3_54
.LBB3_118:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:416
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v9, v113, v112
	v_dot2_f32_f16 v111, v10, v114, v111
	v_dot2_f32_f16 v110, v11, v115, v110
	v_dot2_f32_f16 v109, v12, v116, v109
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_59
.LBB3_119:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:432
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v13, v113, v112
	v_dot2_f32_f16 v111, v14, v114, v111
	v_dot2_f32_f16 v110, v15, v115, v110
	v_dot2_f32_f16 v109, v16, v116, v109
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_60
.LBB3_120:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:448
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v17, v113, v112
	v_dot2_f32_f16 v111, v18, v114, v111
	v_dot2_f32_f16 v110, v19, v115, v110
	v_dot2_f32_f16 v109, v20, v116, v109
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_61
.LBB3_121:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:464
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v21, v113, v112
	v_dot2_f32_f16 v111, v22, v114, v111
	v_dot2_f32_f16 v110, v23, v115, v110
	v_dot2_f32_f16 v109, v24, v116, v109
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_62
.LBB3_122:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v113, s47
	ds_read_b128 v[113:116], v113 offset:480
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v112, v25, v113, v112
	v_dot2_f32_f16 v111, v26, v114, v111
	v_dot2_f32_f16 v110, v27, v115, v110
	v_dot2_f32_f16 v109, v28, v116, v109
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_63
	s_branch .LBB3_64
.LBB3_123:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:544
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v9, v114, v113
	v_dot2_f32_f16 v112, v10, v115, v112
	v_dot2_f32_f16 v111, v11, v116, v111
	v_dot2_f32_f16 v110, v12, v117, v110
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_69
.LBB3_124:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:560
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v13, v114, v113
	v_dot2_f32_f16 v112, v14, v115, v112
	v_dot2_f32_f16 v111, v15, v116, v111
	v_dot2_f32_f16 v110, v16, v117, v110
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_70
.LBB3_125:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:576
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v17, v114, v113
	v_dot2_f32_f16 v112, v18, v115, v112
	v_dot2_f32_f16 v111, v19, v116, v111
	v_dot2_f32_f16 v110, v20, v117, v110
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_71
.LBB3_126:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:592
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v21, v114, v113
	v_dot2_f32_f16 v112, v22, v115, v112
	v_dot2_f32_f16 v111, v23, v116, v111
	v_dot2_f32_f16 v110, v24, v117, v110
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_72
.LBB3_127:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v114, s47
	ds_read_b128 v[114:117], v114 offset:608
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v113, v25, v114, v113
	v_dot2_f32_f16 v112, v26, v115, v112
	v_dot2_f32_f16 v111, v27, v116, v111
	v_dot2_f32_f16 v110, v28, v117, v110
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_73
	s_branch .LBB3_74
.LBB3_128:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:672
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v9, v115, v114
	v_dot2_f32_f16 v113, v10, v116, v113
	v_dot2_f32_f16 v112, v11, v117, v112
	v_dot2_f32_f16 v111, v12, v118, v111
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_79
.LBB3_129:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:688
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v13, v115, v114
	v_dot2_f32_f16 v113, v14, v116, v113
	v_dot2_f32_f16 v112, v15, v117, v112
	v_dot2_f32_f16 v111, v16, v118, v111
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_80
.LBB3_130:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:704
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v17, v115, v114
	v_dot2_f32_f16 v113, v18, v116, v113
	v_dot2_f32_f16 v112, v19, v117, v112
	v_dot2_f32_f16 v111, v20, v118, v111
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_81
.LBB3_131:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:720
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v21, v115, v114
	v_dot2_f32_f16 v113, v22, v116, v113
	v_dot2_f32_f16 v112, v23, v117, v112
	v_dot2_f32_f16 v111, v24, v118, v111
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_82
.LBB3_132:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v115, s47
	ds_read_b128 v[115:118], v115 offset:736
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v114, v25, v115, v114
	v_dot2_f32_f16 v113, v26, v116, v113
	v_dot2_f32_f16 v112, v27, v117, v112
	v_dot2_f32_f16 v111, v28, v118, v111
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_83
	s_branch .LBB3_84
.LBB3_133:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:800
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v9, v116, v115
	v_dot2_f32_f16 v114, v10, v117, v114
	v_dot2_f32_f16 v113, v11, v118, v113
	v_dot2_f32_f16 v112, v12, v119, v112
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_89
.LBB3_134:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:816
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v13, v116, v115
	v_dot2_f32_f16 v114, v14, v117, v114
	v_dot2_f32_f16 v113, v15, v118, v113
	v_dot2_f32_f16 v112, v16, v119, v112
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_90
.LBB3_135:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:832
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v17, v116, v115
	v_dot2_f32_f16 v114, v18, v117, v114
	v_dot2_f32_f16 v113, v19, v118, v113
	v_dot2_f32_f16 v112, v20, v119, v112
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_91
.LBB3_136:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:848
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v21, v116, v115
	v_dot2_f32_f16 v114, v22, v117, v114
	v_dot2_f32_f16 v113, v23, v118, v113
	v_dot2_f32_f16 v112, v24, v119, v112
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_92
.LBB3_137:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s47, s45, 7
	v_mov_b32_e32 v116, s47
	ds_read_b128 v[116:119], v116 offset:864
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v115, v25, v116, v115
	v_dot2_f32_f16 v114, v26, v117, v114
	v_dot2_f32_f16 v113, v27, v118, v113
	v_dot2_f32_f16 v112, v28, v119, v112
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_93
	s_branch .LBB3_94
.LBB3_138:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:928
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v9, v117, v116
	v_dot2_f32_f16 v115, v10, v118, v115
	v_dot2_f32_f16 v114, v11, v119, v114
	v_dot2_f32_f16 v113, v12, v120, v113
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_99
.LBB3_139:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:944
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v13, v117, v116
	v_dot2_f32_f16 v115, v14, v118, v115
	v_dot2_f32_f16 v114, v15, v119, v114
	v_dot2_f32_f16 v113, v16, v120, v113
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_100
.LBB3_140:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:960
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v17, v117, v116
	v_dot2_f32_f16 v115, v18, v118, v115
	v_dot2_f32_f16 v114, v19, v119, v114
	v_dot2_f32_f16 v113, v20, v120, v113
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_101
.LBB3_141:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:976
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v21, v117, v116
	v_dot2_f32_f16 v115, v22, v118, v115
	v_dot2_f32_f16 v114, v23, v119, v114
	v_dot2_f32_f16 v113, v24, v120, v113
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_102
.LBB3_142:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:992
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v25, v117, v116
	v_dot2_f32_f16 v115, v26, v118, v115
	v_dot2_f32_f16 v114, v27, v119, v114
	v_dot2_f32_f16 v113, v28, v120, v113
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_23
.LBB3_143:                              ;   in Loop: Header=BB3_24 Depth=2
	s_lshl_b32 s4, s45, 7
	v_mov_b32_e32 v117, s4
	ds_read_b128 v[117:120], v117 offset:1008
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v116, v29, v117, v116
	v_dot2_f32_f16 v115, v30, v118, v115
	v_dot2_f32_f16 v114, v31, v119, v114
	v_dot2_f32_f16 v113, v32, v120, v113
	s_branch .LBB3_23
.LBB3_144:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v109, 0
	v_cndmask_b32_e64 v110, 0, 1, s[30:31]
	v_cmp_ne_u32_e64 s[4:5], 1, v110
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccz .LBB3_26
	s_branch .LBB3_27
.LBB3_145:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v110, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_36
	s_branch .LBB3_37
.LBB3_146:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v111, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_46
	s_branch .LBB3_47
.LBB3_147:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v112, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_56
	s_branch .LBB3_57
.LBB3_148:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v113, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_66
	s_branch .LBB3_67
.LBB3_149:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v114, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_76
	s_branch .LBB3_77
.LBB3_150:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v115, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_86
	s_branch .LBB3_87
.LBB3_151:                              ;   in Loop: Header=BB3_24 Depth=2
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v116, 0
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_96
	s_branch .LBB3_97
.LBB3_152:                              ;   in Loop: Header=BB3_14 Depth=1
	v_mov_b32_e32 v103, 0xff800000
	v_mov_b32_e32 v104, 0
	v_and_b32_e32 v106, 7, v33
	v_cmp_eq_u32_e32 vcc, 0, v106
	s_cbranch_vccz .LBB3_154
	s_branch .LBB3_172
.LBB3_153:                              ; %Flow1355
                                        ;   in Loop: Header=BB3_14 Depth=1
	s_mov_b64 s[22:23], s[94:95]
	v_and_b32_e32 v106, 7, v33
	v_cmp_eq_u32_e32 vcc, 0, v106
	s_cbranch_vccnz .LBB3_172
.LBB3_154:                              ; %.preheader.epil.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_lshlrev_b32_e32 v106, 7, v104
	v_lshlrev_b32_e32 v104, 1, v104
	s_mov_b32 s4, s44
	s_waitcnt vmcnt(0)
	s_branch .LBB3_156
.LBB3_155:                              ;   in Loop: Header=BB3_156 Depth=2
	v_add_f32_e32 v109, v109, v110
	v_add_f32_e32 v108, v108, v109
	v_add_f32_e32 v107, v107, v108
	v_mul_f32_e32 v108, s11, v107
	v_fma_mixlo_f16 v107, s11, v107, 0
	v_max_f32_e32 v103, v103, v103
	s_add_i32 s4, s4, -1
	buffer_store_short v107, v104, s[0:3], 0 offen
	v_max_f32_e32 v103, v103, v108
	v_add_u32_e32 v106, 0x80, v106
	s_cmp_lg_u32 s4, 0
	v_add_u32_e32 v104, 2, v104
	s_cbranch_scc0 .LBB3_172
.LBB3_156:                              ; %.preheader.epil
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_andn2_b64 vcc, exec, s[6:7]
	s_cbranch_vccnz .LBB3_171
; %bb.157:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[110:113], v106
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v1, v110, 0
	v_dot2_f32_f16 v109, v2, v111, 0
	v_dot2_f32_f16 v108, v3, v112, 0
	v_dot2_f32_f16 v107, v4, v113, 0
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccnz .LBB3_159
.LBB3_158:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:16
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v5, v111, v110
	v_dot2_f32_f16 v109, v6, v112, v109
	v_dot2_f32_f16 v108, v7, v113, v108
	v_dot2_f32_f16 v107, v8, v114, v107
.LBB3_159:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccz .LBB3_165
; %bb.160:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccz .LBB3_166
.LBB3_161:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccz .LBB3_167
.LBB3_162:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccz .LBB3_168
.LBB3_163:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccz .LBB3_169
.LBB3_164:                              ;   in Loop: Header=BB3_156 Depth=2
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccnz .LBB3_155
	s_branch .LBB3_170
.LBB3_165:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:32
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v9, v111, v110
	v_dot2_f32_f16 v109, v10, v112, v109
	v_dot2_f32_f16 v108, v11, v113, v108
	v_dot2_f32_f16 v107, v12, v114, v107
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_161
.LBB3_166:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:48
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v13, v111, v110
	v_dot2_f32_f16 v109, v14, v112, v109
	v_dot2_f32_f16 v108, v15, v113, v108
	v_dot2_f32_f16 v107, v16, v114, v107
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccnz .LBB3_162
.LBB3_167:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:64
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v17, v111, v110
	v_dot2_f32_f16 v109, v18, v112, v109
	v_dot2_f32_f16 v108, v19, v113, v108
	v_dot2_f32_f16 v107, v20, v114, v107
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz .LBB3_163
.LBB3_168:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:80
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v21, v111, v110
	v_dot2_f32_f16 v109, v22, v112, v109
	v_dot2_f32_f16 v108, v23, v113, v108
	v_dot2_f32_f16 v107, v24, v114, v107
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB3_164
.LBB3_169:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:96
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v25, v111, v110
	v_dot2_f32_f16 v109, v26, v112, v109
	v_dot2_f32_f16 v108, v27, v113, v108
	v_dot2_f32_f16 v107, v28, v114, v107
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccnz .LBB3_155
.LBB3_170:                              ;   in Loop: Header=BB3_156 Depth=2
	ds_read_b128 v[111:114], v106 offset:112
	s_waitcnt lgkmcnt(0)
	v_dot2_f32_f16 v110, v29, v111, v110
	v_dot2_f32_f16 v109, v30, v112, v109
	v_dot2_f32_f16 v108, v31, v113, v108
	v_dot2_f32_f16 v107, v32, v114, v107
	s_branch .LBB3_155
.LBB3_171:                              ;   in Loop: Header=BB3_156 Depth=2
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v110, 0
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccz .LBB3_158
	s_branch .LBB3_159
.LBB3_172:                              ; %Flow1357
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_writelane_b32 v123, s22, 57
	v_writelane_b32 v123, s23, 58
	v_max_f32_e32 v103, v103, v103
	v_max_f32_e32 v104, v105, v105
	v_max_f32_e32 v103, v104, v103
	v_cndmask_b32_e64 v104, 0, 1, s[40:41]
	v_readlane_b32 s28, v123, 55
	v_cmp_ne_u32_e64 s[4:5], 1, v104
	s_andn2_b64 vcc, exec, s[40:41]
	v_mov_b32_e32 v104, 0
	v_readlane_b32 s29, v123, 56
	s_cbranch_vccnz .LBB3_180
; %bb.173:                              ; %.lr.ph237.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_readlane_b32 s22, v123, 12
	s_cmp_lt_i32 s22, 8
	s_cbranch_scc1 .LBB3_177
; %bb.174:                              ; %.lr.ph237.preheader.new
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_and_b32_e32 v106, -8, v33
	s_mov_b32 s22, 0
	s_mov_b32 s23, 0
	v_mov_b32_e32 v104, 0
.LBB3_175:                              ; %.lr.ph237
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v107, s22
	buffer_load_dword v108, v107, s[0:3], 0 offen
	buffer_load_dword v109, v107, s[0:3], 0 offen offset:4
	buffer_load_dword v110, v107, s[0:3], 0 offen offset:8
	buffer_load_dword v111, v107, s[0:3], 0 offen offset:12
	s_add_i32 s23, s23, 8
	v_cmp_eq_u32_e32 vcc, s23, v106
	s_add_i32 s22, s22, 16
	s_and_b64 vcc, exec, vcc
	s_waitcnt vmcnt(3)
	v_cvt_f32_f16_e32 v112, v108
	v_cvt_f32_f16_sdwa v108, v108 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(2)
	v_cvt_f32_f16_e32 v113, v109
	v_cvt_f32_f16_sdwa v109, v109 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v115, v111
	v_cvt_f32_f16_sdwa v111, v111 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v114, v110
	v_cvt_f32_f16_sdwa v110, v110 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_sub_f32_e32 v112, v112, v103
	v_sub_f32_e32 v108, v108, v103
	v_mul_f32_e32 v112, 0x3fb8aa3b, v112
	v_sub_f32_e32 v113, v113, v103
	v_mul_f32_e32 v108, 0x3fb8aa3b, v108
	v_exp_f32_e32 v112, v112
	v_sub_f32_e32 v109, v109, v103
	v_sub_f32_e32 v115, v115, v103
	v_sub_f32_e32 v111, v111, v103
	v_mul_f32_e32 v113, 0x3fb8aa3b, v113
	v_exp_f32_e32 v108, v108
	v_sub_f32_e32 v114, v114, v103
	v_sub_f32_e32 v110, v110, v103
	v_mul_f32_e32 v109, 0x3fb8aa3b, v109
	v_mul_f32_e32 v115, 0x3fb8aa3b, v115
	v_mul_f32_e32 v111, 0x3fb8aa3b, v111
	v_exp_f32_e32 v113, v113
	v_mul_f32_e32 v114, 0x3fb8aa3b, v114
	v_mul_f32_e32 v110, 0x3fb8aa3b, v110
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v110, v110
	v_add_f32_e32 v104, v104, v112
	v_add_f32_e32 v104, v104, v108
	v_add_f32_e32 v104, v104, v113
	v_cvt_f16_f32_e32 v116, v112
	v_cvt_f16_f32_e32 v112, v108
	v_cvt_f16_f32_e32 v121, v115
	v_cvt_f16_f32_e32 v122, v111
	v_add_f32_e32 v104, v104, v109
	v_cvt_f16_f32_e32 v117, v113
	v_cvt_f16_f32_e32 v118, v109
	v_cvt_f16_f32_e32 v119, v114
	v_cvt_f16_f32_e32 v120, v110
	v_add_f32_e32 v104, v104, v114
	v_add_f32_e32 v104, v104, v110
	v_add_f32_e32 v104, v104, v115
	v_pack_b32_f16 v108, v116, v112
	v_pack_b32_f16 v113, v121, v122
	v_add_f32_e32 v104, v104, v111
	v_pack_b32_f16 v109, v117, v118
	v_pack_b32_f16 v112, v119, v120
	buffer_store_dword v108, v107, s[0:3], 0 offen
	buffer_store_dword v109, v107, s[0:3], 0 offen offset:4
	buffer_store_dword v112, v107, s[0:3], 0 offen offset:8
	buffer_store_dword v113, v107, s[0:3], 0 offen offset:12
	s_cbranch_vccz .LBB3_175
; %bb.176:                              ; %._crit_edge238.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_and_b32_e32 v107, 7, v33
	v_cmp_eq_u32_e32 vcc, 0, v107
	s_cbranch_vccz .LBB3_178
	s_branch .LBB3_180
.LBB3_177:                              ;   in Loop: Header=BB3_14 Depth=1
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v106, 0
	v_and_b32_e32 v107, 7, v33
	v_cmp_eq_u32_e32 vcc, 0, v107
	s_cbranch_vccnz .LBB3_180
.LBB3_178:                              ; %.lr.ph237.epil.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_lshlrev_b32_e32 v106, 1, v106
.LBB3_179:                              ; %.lr.ph237.epil
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	buffer_load_ushort v107, v106, s[0:3], 0 offen
	s_add_i32 s44, s44, -1
	s_cmp_lg_u32 s44, 0
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v107, v107
	v_sub_f32_e32 v107, v107, v103
	v_mul_f32_e32 v107, 0x3fb8aa3b, v107
	v_exp_f32_e32 v107, v107
	v_cvt_f16_f32_e32 v108, v107
	v_add_f32_e32 v104, v104, v107
	buffer_store_short v108, v106, s[0:3], 0 offen
	v_add_u32_e32 v106, 2, v106
	s_cbranch_scc1 .LBB3_179
.LBB3_180:                              ; %._crit_edge238
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_sub_f32_e32 v105, v105, v103
	v_mul_f32_e32 v105, 0x3fb8aa3b, v105
	v_exp_f32_e32 v105, v105
	v_cmp_lt_f32_e32 vcc, 0, v99
	v_readlane_b32 s22, v124, 4
	v_readlane_b32 s23, v124, 5
	v_cndmask_b32_e32 v105, 0, v105, vcc
	v_mul_f32_e32 v106, v105, v98
	v_cndmask_b32_e64 v98, v98, v106, s[6:7]
	v_mul_f32_e32 v106, v105, v97
	v_cndmask_b32_e64 v97, v97, v106, s[58:59]
	v_mul_f32_e32 v106, v105, v92
	v_cndmask_b32_e64 v92, v92, v106, s[60:61]
	v_mul_f32_e32 v106, v105, v96
	v_cndmask_b32_e64 v96, v96, v106, s[62:63]
	v_mul_f32_e32 v106, v105, v93
	v_cndmask_b32_e64 v93, v93, v106, s[64:65]
	v_mul_f32_e32 v106, v105, v95
	v_cndmask_b32_e64 v95, v95, v106, s[68:69]
	v_mul_f32_e32 v106, v105, v94
	v_cndmask_b32_e64 v94, v94, v106, s[70:71]
	v_mul_f32_e32 v106, v105, v90
	v_cndmask_b32_e64 v90, v90, v106, s[30:31]
	v_mul_f32_e32 v106, v105, v83
	v_cndmask_b32_e64 v83, v83, v106, s[72:73]
	v_mul_f32_e32 v106, v105, v89
	v_cndmask_b32_e64 v89, v89, v106, s[76:77]
	v_mul_f32_e32 v106, v105, v84
	v_cndmask_b32_e64 v84, v84, v106, s[78:79]
	v_mul_f32_e32 v106, v105, v88
	v_cndmask_b32_e64 v88, v88, v106, s[82:83]
	v_mul_f32_e32 v106, v105, v85
	v_cndmask_b32_e64 v85, v85, v106, s[84:85]
	v_mul_f32_e32 v106, v105, v87
	v_cndmask_b32_e64 v87, v87, v106, s[86:87]
	v_mul_f32_e32 v106, v105, v86
	v_cndmask_b32_e64 v86, v86, v106, s[88:89]
	v_mul_f32_e32 v106, v105, v82
	v_cndmask_b32_e64 v82, v82, v106, s[42:43]
	v_mul_f32_e32 v106, v105, v75
	v_cndmask_b32_e64 v75, v75, v106, s[90:91]
	v_mul_f32_e32 v106, v105, v81
	v_cndmask_b32_e64 v81, v81, v106, s[96:97]
	v_mul_f32_e32 v106, v105, v76
	v_cndmask_b32_e64 v76, v76, v106, s[92:93]
	v_mul_f32_e32 v106, v105, v80
	v_cndmask_b32_e64 v80, v80, v106, s[28:29]
	v_mul_f32_e32 v106, v105, v77
	v_cndmask_b32_e64 v77, v77, v106, s[22:23]
	v_readlane_b32 s22, v124, 6
	v_mul_f32_e32 v106, v105, v79
	v_readlane_b32 s23, v124, 7
	v_cndmask_b32_e64 v79, v79, v106, s[22:23]
	v_readlane_b32 s22, v124, 8
	v_mul_f32_e32 v106, v105, v78
	v_readlane_b32 s23, v124, 9
	v_cndmask_b32_e64 v78, v78, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v74
	v_readlane_b32 s22, v124, 10
	v_cndmask_b32_e64 v74, v74, v106, s[12:13]
	v_mul_f32_e32 v106, v105, v67
	v_readlane_b32 s23, v124, 11
	v_cndmask_b32_e64 v67, v67, v106, s[22:23]
	v_readlane_b32 s22, v124, 12
	v_mul_f32_e32 v106, v105, v73
	v_readlane_b32 s23, v124, 13
	v_cndmask_b32_e64 v73, v73, v106, s[22:23]
	v_readlane_b32 s22, v124, 14
	v_mul_f32_e32 v106, v105, v68
	v_readlane_b32 s23, v124, 15
	v_cndmask_b32_e64 v68, v68, v106, s[22:23]
	v_readlane_b32 s22, v124, 16
	v_mul_f32_e32 v106, v105, v72
	v_readlane_b32 s23, v124, 17
	v_cndmask_b32_e64 v72, v72, v106, s[22:23]
	v_readlane_b32 s22, v124, 18
	v_mul_f32_e32 v106, v105, v69
	v_readlane_b32 s23, v124, 19
	v_cndmask_b32_e64 v69, v69, v106, s[22:23]
	v_readlane_b32 s22, v124, 20
	v_mul_f32_e32 v106, v105, v71
	v_readlane_b32 s23, v124, 21
	v_cndmask_b32_e64 v71, v71, v106, s[22:23]
	v_readlane_b32 s22, v124, 22
	v_mul_f32_e32 v106, v105, v70
	v_readlane_b32 s23, v124, 23
	v_cndmask_b32_e64 v70, v70, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v66
	v_readlane_b32 s22, v124, 24
	v_cndmask_b32_e64 v66, v66, v106, s[14:15]
	v_mul_f32_e32 v106, v105, v59
	v_readlane_b32 s23, v124, 25
	v_cndmask_b32_e64 v59, v59, v106, s[22:23]
	v_readlane_b32 s22, v124, 26
	v_mul_f32_e32 v106, v105, v65
	v_readlane_b32 s23, v124, 27
	v_cndmask_b32_e64 v65, v65, v106, s[22:23]
	v_readlane_b32 s22, v124, 28
	v_mul_f32_e32 v106, v105, v60
	v_readlane_b32 s23, v124, 29
	v_cndmask_b32_e64 v60, v60, v106, s[22:23]
	v_readlane_b32 s22, v124, 30
	v_mul_f32_e32 v106, v105, v64
	v_readlane_b32 s23, v124, 31
	v_cndmask_b32_e64 v64, v64, v106, s[22:23]
	v_readlane_b32 s22, v124, 32
	v_mul_f32_e32 v106, v105, v61
	v_readlane_b32 s23, v124, 33
	v_cndmask_b32_e64 v61, v61, v106, s[22:23]
	v_readlane_b32 s22, v124, 34
	v_mul_f32_e32 v106, v105, v63
	v_readlane_b32 s23, v124, 35
	v_cndmask_b32_e64 v63, v63, v106, s[22:23]
	v_readlane_b32 s22, v124, 36
	v_mul_f32_e32 v106, v105, v62
	v_readlane_b32 s23, v124, 37
	v_cndmask_b32_e64 v62, v62, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v58
	v_readlane_b32 s22, v124, 38
	v_cndmask_b32_e64 v58, v58, v106, s[16:17]
	v_mul_f32_e32 v106, v105, v51
	v_readlane_b32 s23, v124, 39
	v_cndmask_b32_e64 v51, v51, v106, s[22:23]
	v_readlane_b32 s22, v124, 40
	v_mul_f32_e32 v106, v105, v57
	v_readlane_b32 s23, v124, 41
	v_cndmask_b32_e64 v57, v57, v106, s[22:23]
	v_readlane_b32 s22, v124, 42
	v_mul_f32_e32 v106, v105, v52
	v_readlane_b32 s23, v124, 43
	v_cndmask_b32_e64 v52, v52, v106, s[22:23]
	v_readlane_b32 s22, v124, 44
	v_mul_f32_e32 v106, v105, v56
	v_readlane_b32 s23, v124, 45
	v_cndmask_b32_e64 v56, v56, v106, s[22:23]
	v_readlane_b32 s22, v124, 46
	v_mul_f32_e32 v106, v105, v53
	v_readlane_b32 s23, v124, 47
	v_cndmask_b32_e64 v53, v53, v106, s[22:23]
	v_readlane_b32 s22, v124, 48
	v_mul_f32_e32 v106, v105, v55
	v_readlane_b32 s23, v124, 49
	v_cndmask_b32_e64 v55, v55, v106, s[22:23]
	v_readlane_b32 s22, v124, 50
	v_mul_f32_e32 v106, v105, v54
	v_readlane_b32 s23, v124, 51
	v_cndmask_b32_e64 v54, v54, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v50
	v_readlane_b32 s22, v124, 52
	v_cndmask_b32_e64 v50, v50, v106, s[18:19]
	v_mul_f32_e32 v106, v105, v43
	v_readlane_b32 s23, v124, 53
	v_cndmask_b32_e64 v43, v43, v106, s[22:23]
	v_readlane_b32 s22, v124, 54
	v_mul_f32_e32 v106, v105, v49
	v_readlane_b32 s23, v124, 55
	v_cndmask_b32_e64 v49, v49, v106, s[22:23]
	v_readlane_b32 s22, v124, 56
	v_mul_f32_e32 v106, v105, v44
	v_readlane_b32 s23, v124, 57
	v_cndmask_b32_e64 v44, v44, v106, s[22:23]
	v_readlane_b32 s22, v124, 58
	v_mul_f32_e32 v106, v105, v48
	v_readlane_b32 s23, v124, 59
	v_cndmask_b32_e64 v48, v48, v106, s[22:23]
	v_readlane_b32 s22, v124, 60
	v_mul_f32_e32 v106, v105, v45
	v_readlane_b32 s23, v124, 61
	v_cndmask_b32_e64 v45, v45, v106, s[22:23]
	v_readlane_b32 s22, v124, 62
	v_mul_f32_e32 v106, v105, v47
	v_readlane_b32 s23, v124, 63
	v_cndmask_b32_e64 v47, v47, v106, s[22:23]
	v_readlane_b32 s22, v123, 0
	v_mul_f32_e32 v106, v105, v46
	v_readlane_b32 s23, v123, 1
	v_cndmask_b32_e64 v46, v46, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v42
	v_readlane_b32 s22, v123, 2
	v_cndmask_b32_e64 v42, v42, v106, s[20:21]
	v_mul_f32_e32 v106, v105, v35
	v_readlane_b32 s23, v123, 3
	v_cndmask_b32_e64 v35, v35, v106, s[22:23]
	v_readlane_b32 s22, v123, 4
	v_mul_f32_e32 v106, v105, v41
	v_readlane_b32 s23, v123, 5
	v_cndmask_b32_e64 v41, v41, v106, s[22:23]
	v_readlane_b32 s22, v123, 6
	v_mul_f32_e32 v106, v105, v36
	v_readlane_b32 s23, v123, 7
	v_cndmask_b32_e64 v36, v36, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v40
	v_readlane_b32 s22, v123, 8
	v_cndmask_b32_e64 v40, v40, v106, s[74:75]
	v_mul_f32_e32 v106, v105, v37
	v_readlane_b32 s23, v123, 9
	v_cndmask_b32_e64 v37, v37, v106, s[22:23]
	v_mul_f32_e32 v106, v105, v39
	s_and_b64 vcc, exec, s[4:5]
	v_readlane_b32 s4, v123, 10
	v_mul_f32_e32 v107, v105, v91
	v_cndmask_b32_e64 v39, v39, v106, s[80:81]
	v_mul_f32_e32 v106, v105, v38
	v_readlane_b32 s5, v123, 11
	v_cndmask_b32_e64 v91, v91, v107, s[56:57]
	v_cndmask_b32_e64 v38, v38, v106, s[4:5]
	s_cbranch_vccnz .LBB3_12
; %bb.181:                              ; %.lr.ph243.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_readlane_b32 s4, v123, 12
	s_cmp_lt_i32 s4, 4
	v_mov_b32_e32 v106, 0
	s_cbranch_scc1 .LBB3_441
; %bb.182:                              ; %.lr.ph243.preheader.new
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_and_b32_e32 v106, -4, v33
	s_mov_b32 s56, 0
	s_mov_b32 s57, 0
	s_movk_i32 s66, 0x800
	s_branch .LBB3_184
.LBB3_183:                              ;   in Loop: Header=BB3_184 Depth=2
	s_add_i32 s57, s57, 4
	v_cmp_eq_u32_e32 vcc, s57, v106
	s_addk_i32 s66, 0x200
	s_add_i32 s56, s56, 8
	s_cbranch_vccnz .LBB3_440
.LBB3_184:                              ; %.lr.ph243
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v107, s56
	buffer_load_ushort v107, v107, s[0:3], 0 offen
	v_cndmask_b32_e64 v108, 0, 1, s[6:7]
	v_cmp_ne_u32_e64 s[92:93], 1, v108
	s_andn2_b64 vcc, exec, s[6:7]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v107, v107
	s_cbranch_vccnz .LBB3_186
; %bb.185:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v98, v107, v108, v98 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v107, v108, v91 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_186:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[58:59]
	v_cmp_ne_u32_e64 s[94:95], 1, v108
	s_andn2_b64 vcc, exec, s[58:59]
	s_cbranch_vccz .LBB3_349
; %bb.187:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[62:63]
	v_cmp_ne_u32_e64 s[98:99], 1, v108
	s_andn2_b64 vcc, exec, s[62:63]
	s_cbranch_vccz .LBB3_350
.LBB3_188:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[68:69]
	v_cmp_ne_u32_e64 s[26:27], 1, v108
	s_andn2_b64 vcc, exec, s[68:69]
	s_cbranch_vccz .LBB3_351
.LBB3_189:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[30:31]
	v_cmp_ne_u32_e64 s[36:37], 1, v108
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccz .LBB3_352
.LBB3_190:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[76:77]
	v_cmp_ne_u32_e64 s[38:39], 1, v108
	s_andn2_b64 vcc, exec, s[76:77]
	s_cbranch_vccz .LBB3_353
.LBB3_191:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[82:83]
	v_cmp_ne_u32_e64 s[46:47], 1, v108
	s_andn2_b64 vcc, exec, s[82:83]
	s_cbranch_vccz .LBB3_354
.LBB3_192:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[86:87]
	v_cmp_ne_u32_e64 s[52:53], 1, v108
	s_andn2_b64 vcc, exec, s[86:87]
	s_cbranch_vccz .LBB3_355
.LBB3_193:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[42:43]
	v_cmp_ne_u32_e64 s[60:61], 1, v108
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccz .LBB3_356
.LBB3_194:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[96:97]
	v_cmp_ne_u32_e64 s[64:65], 1, v108
	s_andn2_b64 vcc, exec, s[96:97]
	s_cbranch_vccz .LBB3_357
.LBB3_195:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[28:29]
	v_cmp_ne_u32_e64 s[70:71], 1, v108
	s_andn2_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_197
.LBB3_196:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:40
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v80, v107, v108, v80 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v77, v107, v108, v77 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_197:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s4, v124, 6
	v_readlane_b32 s5, v124, 7
	v_cndmask_b32_e64 v108, 0, 1, s[4:5]
	v_cmp_ne_u32_e64 s[78:79], 1, v108
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_199
; %bb.198:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:44
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v79, v107, v108, v79 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v78, v107, v108, v78 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_199:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[12:13]
	v_cmp_ne_u32_e64 s[84:85], 1, v108
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_201
; %bb.200:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:48
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v74, v107, v108, v74 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v67, v107, v108, v67 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_201:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s4, v124, 12
	v_readlane_b32 s5, v124, 13
	v_cndmask_b32_e64 v108, 0, 1, s[4:5]
	v_cmp_ne_u32_e64 s[88:89], 1, v108
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_203
; %bb.202:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:52
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v73, v107, v108, v73 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v68, v107, v108, v68 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_203:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 16
	v_readlane_b32 s23, v124, 17
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[4:5], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_205
; %bb.204:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:56
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v72, v107, v108, v72 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v69, v107, v108, v69 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_205:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 20
	v_readlane_b32 s23, v124, 21
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[24:25], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_207
; %bb.206:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:60
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v71, v107, v108, v71 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v70, v107, v108, v70 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_207:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[14:15]
	v_cmp_ne_u32_e64 s[28:29], 1, v108
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccnz .LBB3_209
; %bb.208:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:64
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v66, v107, v108, v66 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v59, v107, v108, v59 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_209:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 26
	v_readlane_b32 s23, v124, 27
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[34:35], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_211
; %bb.210:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:68
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v107, v108, v65 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v60, v107, v108, v60 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_211:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 30
	v_readlane_b32 s23, v124, 31
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[40:41], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_213
; %bb.212:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:72
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v64, v107, v108, v64 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v61, v107, v108, v61 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_213:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 34
	v_readlane_b32 s23, v124, 35
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[44:45], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_215
; %bb.214:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:76
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v63, v107, v108, v63 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v62, v107, v108, v62 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_215:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[16:17]
	v_cmp_ne_u32_e64 s[48:49], 1, v108
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz .LBB3_217
; %bb.216:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:80
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v58, v107, v108, v58 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v51, v107, v108, v51 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_217:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 40
	v_readlane_b32 s23, v124, 41
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[54:55], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_219
; %bb.218:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:84
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v57, v107, v108, v57 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v52, v107, v108, v52 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_219:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 44
	v_readlane_b32 s23, v124, 45
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[58:59], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_221
; %bb.220:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:88
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v56, v107, v108, v56 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v53, v107, v108, v53 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_221:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 48
	v_readlane_b32 s23, v124, 49
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[62:63], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_223
; %bb.222:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:92
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v55, v107, v108, v55 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v54, v107, v108, v54 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_223:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[18:19]
	v_cmp_ne_u32_e64 s[68:69], 1, v108
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB3_225
; %bb.224:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:96
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v50, v107, v108, v50 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v107, v108, v43 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_225:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 54
	v_readlane_b32 s23, v124, 55
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[72:73], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_227
; %bb.226:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:100
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v49, v107, v108, v49 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v107, v108, v44 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_227:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 58
	v_readlane_b32 s23, v124, 59
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[76:77], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_229
; %bb.228:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:104
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v48, v107, v108, v48 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v107, v108, v45 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_229:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v124, 62
	v_readlane_b32 s23, v124, 63
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[82:83], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_231
; %bb.230:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:108
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v47, v107, v108, v47 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v46, v107, v108, v46 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_231:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[86:87], 1, v108
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccnz .LBB3_233
; %bb.232:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:112
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v42, v107, v108, v42 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v107, v108, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_233:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s22, v123, 4
	v_readlane_b32 s23, v123, 5
	v_cndmask_b32_e64 v108, 0, 1, s[22:23]
	v_cmp_ne_u32_e64 s[90:91], 1, v108
	s_andn2_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_358
; %bb.234:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[74:75]
	v_cmp_ne_u32_e64 s[96:97], 1, v108
	s_andn2_b64 vcc, exec, s[74:75]
	s_cbranch_vccz .LBB3_359
.LBB3_235:                              ;   in Loop: Header=BB3_184 Depth=2
	v_cndmask_b32_e64 v108, 0, 1, s[80:81]
	v_cmp_ne_u32_e64 s[22:23], 1, v108
	s_andn2_b64 vcc, exec, s[80:81]
	s_cbranch_vccnz .LBB3_237
.LBB3_236:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:124
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v39, v107, v108, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v107, v108, v38 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_237:                              ; %.lr.ph243.1
                                        ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v107, s56
	buffer_load_ushort v107, v107, s[0:3], 0 offen offset:2
	s_and_b64 vcc, exec, s[92:93]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v107, v107
	s_cbranch_vccnz .LBB3_239
; %bb.238:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:128
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v98, v107, v108, v98 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v107, v108, v91 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_239:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[94:95]
	s_cbranch_vccz .LBB3_360
; %bb.240:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccz .LBB3_361
.LBB3_241:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_362
.LBB3_242:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_363
.LBB3_243:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccz .LBB3_364
.LBB3_244:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccz .LBB3_365
.LBB3_245:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccz .LBB3_366
.LBB3_246:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccz .LBB3_367
.LBB3_247:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccz .LBB3_368
.LBB3_248:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccz .LBB3_369
.LBB3_249:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccz .LBB3_370
.LBB3_250:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccz .LBB3_371
.LBB3_251:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccz .LBB3_372
.LBB3_252:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_373
.LBB3_253:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_374
.LBB3_254:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_375
.LBB3_255:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_376
.LBB3_256:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccz .LBB3_377
.LBB3_257:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[44:45]
	s_cbranch_vccz .LBB3_378
.LBB3_258:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccz .LBB3_379
.LBB3_259:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccz .LBB3_380
.LBB3_260:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccz .LBB3_381
.LBB3_261:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[62:63]
	s_cbranch_vccz .LBB3_382
.LBB3_262:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[68:69]
	s_cbranch_vccz .LBB3_383
.LBB3_263:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[72:73]
	s_cbranch_vccz .LBB3_384
.LBB3_264:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[76:77]
	s_cbranch_vccz .LBB3_385
.LBB3_265:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[82:83]
	s_cbranch_vccz .LBB3_386
.LBB3_266:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[86:87]
	s_cbranch_vccz .LBB3_387
.LBB3_267:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[90:91]
	s_cbranch_vccz .LBB3_388
.LBB3_268:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[96:97]
	s_cbranch_vccz .LBB3_389
.LBB3_269:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_271
.LBB3_270:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:252
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v39, v107, v108, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v107, v108, v38 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_271:                              ; %.lr.ph243.2
                                        ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v107, s56
	buffer_load_ushort v107, v107, s[0:3], 0 offen offset:4
	s_and_b64 vcc, exec, s[92:93]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v107, v107
	s_cbranch_vccnz .LBB3_273
; %bb.272:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:256
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v98, v107, v108, v98 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v107, v108, v91 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_273:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[94:95]
	s_cbranch_vccz .LBB3_390
; %bb.274:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccz .LBB3_391
.LBB3_275:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_392
.LBB3_276:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_393
.LBB3_277:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccz .LBB3_394
.LBB3_278:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccz .LBB3_395
.LBB3_279:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccz .LBB3_396
.LBB3_280:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccz .LBB3_397
.LBB3_281:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccz .LBB3_398
.LBB3_282:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccz .LBB3_399
.LBB3_283:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccz .LBB3_400
.LBB3_284:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccz .LBB3_401
.LBB3_285:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccz .LBB3_402
.LBB3_286:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_403
.LBB3_287:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_404
.LBB3_288:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_405
.LBB3_289:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_406
.LBB3_290:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccz .LBB3_407
.LBB3_291:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[44:45]
	s_cbranch_vccz .LBB3_408
.LBB3_292:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccz .LBB3_409
.LBB3_293:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccz .LBB3_410
.LBB3_294:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccz .LBB3_411
.LBB3_295:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[62:63]
	s_cbranch_vccz .LBB3_412
.LBB3_296:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[68:69]
	s_cbranch_vccz .LBB3_413
.LBB3_297:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[72:73]
	s_cbranch_vccz .LBB3_414
.LBB3_298:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[76:77]
	s_cbranch_vccz .LBB3_415
.LBB3_299:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[82:83]
	s_cbranch_vccz .LBB3_416
.LBB3_300:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[86:87]
	s_cbranch_vccz .LBB3_417
.LBB3_301:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[90:91]
	s_cbranch_vccz .LBB3_418
.LBB3_302:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[96:97]
	s_cbranch_vccz .LBB3_419
.LBB3_303:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_305
.LBB3_304:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:380
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v39, v107, v108, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v107, v108, v38 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_305:                              ; %.lr.ph243.3
                                        ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v107, s56
	buffer_load_ushort v107, v107, s[0:3], 0 offen offset:6
	s_and_b64 vcc, exec, s[92:93]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v107, v107
	s_cbranch_vccnz .LBB3_307
; %bb.306:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:384
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v98, v107, v108, v98 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v107, v108, v91 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_307:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[94:95]
	s_cbranch_vccz .LBB3_420
; %bb.308:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccz .LBB3_421
.LBB3_309:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccz .LBB3_422
.LBB3_310:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccz .LBB3_423
.LBB3_311:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccz .LBB3_424
.LBB3_312:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccz .LBB3_425
.LBB3_313:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccz .LBB3_426
.LBB3_314:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccz .LBB3_427
.LBB3_315:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccz .LBB3_428
.LBB3_316:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccz .LBB3_429
.LBB3_317:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccz .LBB3_430
.LBB3_318:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccz .LBB3_431
.LBB3_319:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccz .LBB3_432
.LBB3_320:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_433
.LBB3_321:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccz .LBB3_434
.LBB3_322:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_435
.LBB3_323:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccz .LBB3_436
.LBB3_324:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccnz .LBB3_326
.LBB3_325:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:456
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v64, v107, v108, v64 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v61, v107, v108, v61 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_326:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s28, v123, 55
	v_readlane_b32 s29, v123, 56
	s_and_b64 vcc, exec, s[44:45]
	s_cbranch_vccz .LBB3_437
; %bb.327:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccz .LBB3_438
.LBB3_328:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccz .LBB3_439
.LBB3_329:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccnz .LBB3_331
.LBB3_330:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:472
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v56, v107, v108, v56 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v53, v107, v108, v53 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_331:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s58, v123, 15
	v_readlane_b32 s59, v123, 16
	s_and_b64 vcc, exec, s[62:63]
	s_cbranch_vccnz .LBB3_333
; %bb.332:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:476
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v55, v107, v108, v55 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v54, v107, v108, v54 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_333:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s62, v123, 17
	v_readlane_b32 s63, v123, 18
	s_and_b64 vcc, exec, s[68:69]
	s_cbranch_vccnz .LBB3_335
; %bb.334:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:480
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v50, v107, v108, v50 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v107, v108, v43 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_335:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s68, v123, 19
	v_readlane_b32 s69, v123, 20
	s_and_b64 vcc, exec, s[72:73]
	s_cbranch_vccnz .LBB3_337
; %bb.336:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:484
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v49, v107, v108, v49 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v107, v108, v44 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_337:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[76:77]
	s_cbranch_vccnz .LBB3_339
; %bb.338:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:488
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v48, v107, v108, v48 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v107, v108, v45 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_339:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s76, v123, 21
	v_readlane_b32 s77, v123, 22
	s_and_b64 vcc, exec, s[82:83]
	s_cbranch_vccnz .LBB3_341
; %bb.340:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:492
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v47, v107, v108, v47 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v46, v107, v108, v46 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_341:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s82, v123, 23
	v_readlane_b32 s83, v123, 24
	s_and_b64 vcc, exec, s[86:87]
	s_cbranch_vccnz .LBB3_343
; %bb.342:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:496
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v42, v107, v108, v42 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v107, v108, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_343:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s86, v123, 25
	v_readlane_b32 s87, v123, 26
	s_and_b64 vcc, exec, s[90:91]
	s_cbranch_vccnz .LBB3_345
; %bb.344:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:500
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v107, v108, v41 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v107, v108, v36 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_345:                              ;   in Loop: Header=BB3_184 Depth=2
	s_and_b64 vcc, exec, s[96:97]
	s_cbranch_vccnz .LBB3_347
; %bb.346:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:504
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v40, v107, v108, v40 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v107, v108, v37 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_347:                              ;   in Loop: Header=BB3_184 Depth=2
	v_readlane_b32 s96, v123, 27
	v_readlane_b32 s97, v123, 28
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccnz .LBB3_183
; %bb.348:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:508
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v39, v107, v108, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v107, v108, v38 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_branch .LBB3_183
.LBB3_349:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:4
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v97, v107, v108, v97 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v107, v108, v92 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[62:63]
	v_cmp_ne_u32_e64 s[98:99], 1, v108
	s_andn2_b64 vcc, exec, s[62:63]
	s_cbranch_vccnz .LBB3_188
.LBB3_350:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:8
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v96, v107, v108, v96 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v107, v108, v93 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[68:69]
	v_cmp_ne_u32_e64 s[26:27], 1, v108
	s_andn2_b64 vcc, exec, s[68:69]
	s_cbranch_vccnz .LBB3_189
.LBB3_351:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:12
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v95, v107, v108, v95 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v94, v107, v108, v94 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[30:31]
	v_cmp_ne_u32_e64 s[36:37], 1, v108
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccnz .LBB3_190
.LBB3_352:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:16
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v90, v107, v108, v90 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v107, v108, v83 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[76:77]
	v_cmp_ne_u32_e64 s[38:39], 1, v108
	s_andn2_b64 vcc, exec, s[76:77]
	s_cbranch_vccnz .LBB3_191
.LBB3_353:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:20
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v89, v107, v108, v89 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v107, v108, v84 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[82:83]
	v_cmp_ne_u32_e64 s[46:47], 1, v108
	s_andn2_b64 vcc, exec, s[82:83]
	s_cbranch_vccnz .LBB3_192
.LBB3_354:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:24
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v88, v107, v108, v88 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v107, v108, v85 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[86:87]
	v_cmp_ne_u32_e64 s[52:53], 1, v108
	s_andn2_b64 vcc, exec, s[86:87]
	s_cbranch_vccnz .LBB3_193
.LBB3_355:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:28
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v87, v107, v108, v87 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v86, v107, v108, v86 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[42:43]
	v_cmp_ne_u32_e64 s[60:61], 1, v108
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccnz .LBB3_194
.LBB3_356:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:32
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v82, v107, v108, v82 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v75, v107, v108, v75 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[96:97]
	v_cmp_ne_u32_e64 s[64:65], 1, v108
	s_andn2_b64 vcc, exec, s[96:97]
	s_cbranch_vccnz .LBB3_195
.LBB3_357:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:36
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v81, v107, v108, v81 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v76, v107, v108, v76 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[28:29]
	v_cmp_ne_u32_e64 s[70:71], 1, v108
	s_andn2_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_196
	s_branch .LBB3_197
.LBB3_358:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:116
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v107, v108, v41 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v107, v108, v36 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[74:75]
	v_cmp_ne_u32_e64 s[96:97], 1, v108
	s_andn2_b64 vcc, exec, s[74:75]
	s_cbranch_vccnz .LBB3_235
.LBB3_359:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:120
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v40, v107, v108, v40 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v107, v108, v37 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_cndmask_b32_e64 v108, 0, 1, s[80:81]
	v_cmp_ne_u32_e64 s[22:23], 1, v108
	s_andn2_b64 vcc, exec, s[80:81]
	s_cbranch_vccz .LBB3_236
	s_branch .LBB3_237
.LBB3_360:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:132
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v97, v107, v108, v97 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v107, v108, v92 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccnz .LBB3_241
.LBB3_361:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:136
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v96, v107, v108, v96 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v107, v108, v93 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_242
.LBB3_362:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:140
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v95, v107, v108, v95 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v94, v107, v108, v94 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_243
.LBB3_363:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:144
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v90, v107, v108, v90 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v107, v108, v83 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccnz .LBB3_244
.LBB3_364:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:148
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v89, v107, v108, v89 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v107, v108, v84 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccnz .LBB3_245
.LBB3_365:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:152
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v88, v107, v108, v88 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v107, v108, v85 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccnz .LBB3_246
.LBB3_366:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:156
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v87, v107, v108, v87 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v86, v107, v108, v86 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccnz .LBB3_247
.LBB3_367:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:160
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v82, v107, v108, v82 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v75, v107, v108, v75 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccnz .LBB3_248
.LBB3_368:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:164
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v81, v107, v108, v81 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v76, v107, v108, v76 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccnz .LBB3_249
.LBB3_369:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:168
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v80, v107, v108, v80 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v77, v107, v108, v77 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccnz .LBB3_250
.LBB3_370:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:172
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v79, v107, v108, v79 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v78, v107, v108, v78 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccnz .LBB3_251
.LBB3_371:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:176
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v74, v107, v108, v74 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v67, v107, v108, v67 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccnz .LBB3_252
.LBB3_372:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:180
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v73, v107, v108, v73 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v68, v107, v108, v68 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_253
.LBB3_373:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:184
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v72, v107, v108, v72 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v69, v107, v108, v69 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_254
.LBB3_374:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:188
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v71, v107, v108, v71 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v70, v107, v108, v70 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_255
.LBB3_375:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:192
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v66, v107, v108, v66 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v59, v107, v108, v59 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_256
.LBB3_376:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:196
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v107, v108, v65 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v60, v107, v108, v60 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccnz .LBB3_257
.LBB3_377:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:200
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v64, v107, v108, v64 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v61, v107, v108, v61 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[44:45]
	s_cbranch_vccnz .LBB3_258
.LBB3_378:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:204
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v63, v107, v108, v63 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v62, v107, v108, v62 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccnz .LBB3_259
.LBB3_379:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:208
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v58, v107, v108, v58 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v51, v107, v108, v51 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccnz .LBB3_260
.LBB3_380:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:212
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v57, v107, v108, v57 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v52, v107, v108, v52 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccnz .LBB3_261
.LBB3_381:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:216
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v56, v107, v108, v56 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v53, v107, v108, v53 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[62:63]
	s_cbranch_vccnz .LBB3_262
.LBB3_382:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:220
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v55, v107, v108, v55 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v54, v107, v108, v54 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[68:69]
	s_cbranch_vccnz .LBB3_263
.LBB3_383:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:224
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v50, v107, v108, v50 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v107, v108, v43 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[72:73]
	s_cbranch_vccnz .LBB3_264
.LBB3_384:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:228
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v49, v107, v108, v49 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v107, v108, v44 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[76:77]
	s_cbranch_vccnz .LBB3_265
.LBB3_385:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:232
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v48, v107, v108, v48 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v107, v108, v45 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[82:83]
	s_cbranch_vccnz .LBB3_266
.LBB3_386:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:236
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v47, v107, v108, v47 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v46, v107, v108, v46 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[86:87]
	s_cbranch_vccnz .LBB3_267
.LBB3_387:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:240
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v42, v107, v108, v42 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v107, v108, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[90:91]
	s_cbranch_vccnz .LBB3_268
.LBB3_388:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:244
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v107, v108, v41 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v107, v108, v36 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[96:97]
	s_cbranch_vccnz .LBB3_269
.LBB3_389:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:248
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v40, v107, v108, v40 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v107, v108, v37 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_270
	s_branch .LBB3_271
.LBB3_390:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:260
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v97, v107, v108, v97 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v107, v108, v92 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccnz .LBB3_275
.LBB3_391:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:264
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v96, v107, v108, v96 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v107, v108, v93 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_276
.LBB3_392:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:268
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v95, v107, v108, v95 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v94, v107, v108, v94 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_277
.LBB3_393:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:272
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v90, v107, v108, v90 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v107, v108, v83 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccnz .LBB3_278
.LBB3_394:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:276
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v89, v107, v108, v89 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v107, v108, v84 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccnz .LBB3_279
.LBB3_395:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:280
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v88, v107, v108, v88 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v107, v108, v85 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccnz .LBB3_280
.LBB3_396:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:284
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v87, v107, v108, v87 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v86, v107, v108, v86 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccnz .LBB3_281
.LBB3_397:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:288
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v82, v107, v108, v82 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v75, v107, v108, v75 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccnz .LBB3_282
.LBB3_398:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:292
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v81, v107, v108, v81 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v76, v107, v108, v76 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccnz .LBB3_283
.LBB3_399:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:296
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v80, v107, v108, v80 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v77, v107, v108, v77 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccnz .LBB3_284
.LBB3_400:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:300
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v79, v107, v108, v79 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v78, v107, v108, v78 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccnz .LBB3_285
.LBB3_401:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:304
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v74, v107, v108, v74 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v67, v107, v108, v67 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccnz .LBB3_286
.LBB3_402:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:308
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v73, v107, v108, v73 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v68, v107, v108, v68 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_287
.LBB3_403:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:312
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v72, v107, v108, v72 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v69, v107, v108, v69 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_288
.LBB3_404:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:316
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v71, v107, v108, v71 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v70, v107, v108, v70 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_289
.LBB3_405:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:320
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v66, v107, v108, v66 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v59, v107, v108, v59 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_290
.LBB3_406:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:324
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v107, v108, v65 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v60, v107, v108, v60 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccnz .LBB3_291
.LBB3_407:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:328
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v64, v107, v108, v64 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v61, v107, v108, v61 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[44:45]
	s_cbranch_vccnz .LBB3_292
.LBB3_408:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:332
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v63, v107, v108, v63 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v62, v107, v108, v62 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccnz .LBB3_293
.LBB3_409:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:336
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v58, v107, v108, v58 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v51, v107, v108, v51 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccnz .LBB3_294
.LBB3_410:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:340
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v57, v107, v108, v57 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v52, v107, v108, v52 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccnz .LBB3_295
.LBB3_411:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:344
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v56, v107, v108, v56 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v53, v107, v108, v53 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[62:63]
	s_cbranch_vccnz .LBB3_296
.LBB3_412:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:348
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v55, v107, v108, v55 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v54, v107, v108, v54 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[68:69]
	s_cbranch_vccnz .LBB3_297
.LBB3_413:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:352
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v50, v107, v108, v50 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v107, v108, v43 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[72:73]
	s_cbranch_vccnz .LBB3_298
.LBB3_414:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:356
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v49, v107, v108, v49 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v107, v108, v44 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[76:77]
	s_cbranch_vccnz .LBB3_299
.LBB3_415:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:360
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v48, v107, v108, v48 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v107, v108, v45 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[82:83]
	s_cbranch_vccnz .LBB3_300
.LBB3_416:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:364
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v47, v107, v108, v47 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v46, v107, v108, v46 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[86:87]
	s_cbranch_vccnz .LBB3_301
.LBB3_417:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:368
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v42, v107, v108, v42 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v107, v108, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[90:91]
	s_cbranch_vccnz .LBB3_302
.LBB3_418:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:372
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v107, v108, v41 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v107, v108, v36 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[96:97]
	s_cbranch_vccnz .LBB3_303
.LBB3_419:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:376
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v40, v107, v108, v40 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v107, v108, v37 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[22:23]
	s_cbranch_vccz .LBB3_304
	s_branch .LBB3_305
.LBB3_420:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:388
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v97, v107, v108, v97 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v107, v108, v92 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[98:99]
	s_cbranch_vccnz .LBB3_309
.LBB3_421:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:392
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v96, v107, v108, v96 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v107, v108, v93 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[26:27]
	s_cbranch_vccnz .LBB3_310
.LBB3_422:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:396
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v95, v107, v108, v95 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v94, v107, v108, v94 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[36:37]
	s_cbranch_vccnz .LBB3_311
.LBB3_423:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:400
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v90, v107, v108, v90 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v107, v108, v83 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[38:39]
	s_cbranch_vccnz .LBB3_312
.LBB3_424:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:404
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v89, v107, v108, v89 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v107, v108, v84 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[46:47]
	s_cbranch_vccnz .LBB3_313
.LBB3_425:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:408
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v88, v107, v108, v88 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v107, v108, v85 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[52:53]
	s_cbranch_vccnz .LBB3_314
.LBB3_426:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:412
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v87, v107, v108, v87 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v86, v107, v108, v86 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[60:61]
	s_cbranch_vccnz .LBB3_315
.LBB3_427:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:416
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v82, v107, v108, v82 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v75, v107, v108, v75 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[64:65]
	s_cbranch_vccnz .LBB3_316
.LBB3_428:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:420
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v81, v107, v108, v81 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v76, v107, v108, v76 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[70:71]
	s_cbranch_vccnz .LBB3_317
.LBB3_429:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:424
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v80, v107, v108, v80 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v77, v107, v108, v77 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[78:79]
	s_cbranch_vccnz .LBB3_318
.LBB3_430:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:428
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v79, v107, v108, v79 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v78, v107, v108, v78 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[84:85]
	s_cbranch_vccnz .LBB3_319
.LBB3_431:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:432
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v74, v107, v108, v74 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v67, v107, v108, v67 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[88:89]
	s_cbranch_vccnz .LBB3_320
.LBB3_432:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:436
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v73, v107, v108, v73 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v68, v107, v108, v68 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_321
.LBB3_433:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:440
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v72, v107, v108, v72 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v69, v107, v108, v69 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[24:25]
	s_cbranch_vccnz .LBB3_322
.LBB3_434:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:444
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v71, v107, v108, v71 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v70, v107, v108, v70 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_323
.LBB3_435:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:448
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v66, v107, v108, v66 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v59, v107, v108, v59 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[34:35]
	s_cbranch_vccnz .LBB3_324
.LBB3_436:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:452
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v107, v108, v65 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v60, v107, v108, v60 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[40:41]
	s_cbranch_vccz .LBB3_325
	s_branch .LBB3_326
.LBB3_437:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:460
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v63, v107, v108, v63 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v62, v107, v108, v62 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[48:49]
	s_cbranch_vccnz .LBB3_328
.LBB3_438:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:464
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v58, v107, v108, v58 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v51, v107, v108, v51 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[54:55]
	s_cbranch_vccnz .LBB3_329
.LBB3_439:                              ;   in Loop: Header=BB3_184 Depth=2
	v_mov_b32_e32 v108, s66
	ds_read_b32 v108, v108 offset:468
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v57, v107, v108, v57 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v52, v107, v108, v52 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_and_b64 vcc, exec, s[58:59]
	s_cbranch_vccz .LBB3_330
	s_branch .LBB3_331
.LBB3_440:                              ; %Flow1345
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_readlane_b32 s48, v123, 29
	v_readlane_b32 s56, v123, 35
	v_readlane_b32 s60, v123, 37
	v_readlane_b32 s64, v123, 39
	v_readlane_b32 s70, v123, 41
	v_readlane_b32 s72, v123, 43
	v_readlane_b32 s78, v123, 45
	v_readlane_b32 s84, v123, 47
	v_readlane_b32 s88, v123, 49
	v_readlane_b32 s90, v123, 51
	v_readlane_b32 s92, v123, 53
	v_readlane_b32 s49, v123, 30
	v_readlane_b32 s52, v123, 31
	v_readlane_b32 s53, v123, 32
	v_readlane_b32 s54, v123, 33
	v_readlane_b32 s55, v123, 34
	v_readlane_b32 s57, v123, 36
	v_readlane_b32 s61, v123, 38
	v_readlane_b32 s65, v123, 40
	v_readlane_b32 s71, v123, 42
	v_readlane_b32 s73, v123, 44
	v_readlane_b32 s79, v123, 46
	v_readlane_b32 s85, v123, 48
	v_readlane_b32 s89, v123, 50
	v_readlane_b32 s91, v123, 52
	v_readlane_b32 s93, v123, 54
.LBB3_441:                              ; %._crit_edge244.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_and_b32_e32 v33, 3, v33
	v_cmp_eq_u32_e32 vcc, 0, v33
	s_cbranch_vccnz .LBB3_12
; %bb.442:                              ; %.lr.ph243.epil.preheader
                                        ;   in Loop: Header=BB3_14 Depth=1
	v_lshlrev_b32_e32 v107, 7, v106
	v_add_u32_e32 v107, 0x800, v107
	v_lshlrev_b32_e32 v106, 1, v106
	s_branch .LBB3_444
.LBB3_443:                              ;   in Loop: Header=BB3_444 Depth=2
	v_add_u32_e32 v33, -1, v33
	v_cmp_ne_u32_e32 vcc, 0, v33
	v_add_u32_e32 v107, 0x80, v107
	v_add_u32_e32 v106, 2, v106
	s_cbranch_vccz .LBB3_12
.LBB3_444:                              ; %.lr.ph243.epil
                                        ;   Parent Loop BB3_14 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	buffer_load_ushort v108, v106, s[0:3], 0 offen
	s_andn2_b64 vcc, exec, s[6:7]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v108, v108
	s_cbranch_vccnz .LBB3_446
; %bb.445:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v98, v108, v109, v98 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v108, v109, v91 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_446:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[58:59]
	s_cbranch_vccz .LBB3_496
; %bb.447:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[62:63]
	s_cbranch_vccz .LBB3_497
.LBB3_448:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[68:69]
	s_cbranch_vccz .LBB3_498
.LBB3_449:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccz .LBB3_499
.LBB3_450:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[76:77]
	s_cbranch_vccz .LBB3_500
.LBB3_451:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[82:83]
	s_cbranch_vccz .LBB3_501
.LBB3_452:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[86:87]
	s_cbranch_vccz .LBB3_502
.LBB3_453:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccz .LBB3_503
.LBB3_454:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[96:97]
	s_cbranch_vccz .LBB3_504
.LBB3_455:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[28:29]
	s_cbranch_vccnz .LBB3_457
.LBB3_456:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:40
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v80, v108, v109, v80 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v77, v108, v109, v77 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_457:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 6
	v_readlane_b32 s5, v124, 7
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_459
; %bb.458:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:44
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v79, v108, v109, v79 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v78, v108, v109, v78 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_459:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[12:13]
	s_cbranch_vccnz .LBB3_461
; %bb.460:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:48
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v74, v108, v109, v74 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v67, v108, v109, v67 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_461:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 12
	v_readlane_b32 s5, v124, 13
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_463
; %bb.462:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:52
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v73, v108, v109, v73 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v68, v108, v109, v68 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_463:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 16
	v_readlane_b32 s5, v124, 17
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_465
; %bb.464:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:56
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v72, v108, v109, v72 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v69, v108, v109, v69 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_465:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 20
	v_readlane_b32 s5, v124, 21
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_467
; %bb.466:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:60
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v71, v108, v109, v71 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v70, v108, v109, v70 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_467:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[14:15]
	s_cbranch_vccnz .LBB3_469
; %bb.468:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:64
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v66, v108, v109, v66 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v59, v108, v109, v59 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_469:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 26
	v_readlane_b32 s5, v124, 27
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_471
; %bb.470:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:68
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v65, v108, v109, v65 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v60, v108, v109, v60 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_471:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 30
	v_readlane_b32 s5, v124, 31
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_473
; %bb.472:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:72
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v64, v108, v109, v64 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v61, v108, v109, v61 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_473:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 34
	v_readlane_b32 s5, v124, 35
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_475
; %bb.474:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:76
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v63, v108, v109, v63 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v62, v108, v109, v62 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_475:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[16:17]
	s_cbranch_vccnz .LBB3_477
; %bb.476:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:80
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v58, v108, v109, v58 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v51, v108, v109, v51 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_477:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 40
	v_readlane_b32 s5, v124, 41
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_479
; %bb.478:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:84
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v57, v108, v109, v57 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v52, v108, v109, v52 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_479:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 44
	v_readlane_b32 s5, v124, 45
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_481
; %bb.480:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:88
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v56, v108, v109, v56 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v53, v108, v109, v53 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_481:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 48
	v_readlane_b32 s5, v124, 49
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_483
; %bb.482:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:92
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v55, v108, v109, v55 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v54, v108, v109, v54 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_483:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[18:19]
	s_cbranch_vccnz .LBB3_485
; %bb.484:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:96
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v50, v108, v109, v50 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v43, v108, v109, v43 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_485:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 54
	v_readlane_b32 s5, v124, 55
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_487
; %bb.486:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:100
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v49, v108, v109, v49 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v44, v108, v109, v44 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_487:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 58
	v_readlane_b32 s5, v124, 59
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_489
; %bb.488:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:104
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v48, v108, v109, v48 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v45, v108, v109, v45 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_489:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v124, 62
	v_readlane_b32 s5, v124, 63
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccnz .LBB3_491
; %bb.490:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:108
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v47, v108, v109, v47 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v46, v108, v109, v46 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_491:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[20:21]
	s_cbranch_vccnz .LBB3_493
; %bb.492:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:112
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v42, v108, v109, v42 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v35, v108, v109, v35 op_sel:[0,1,0] op_sel_hi:[0,1,0]
.LBB3_493:                              ;   in Loop: Header=BB3_444 Depth=2
	v_readlane_b32 s4, v123, 4
	v_readlane_b32 s5, v123, 5
	s_andn2_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_505
; %bb.494:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[74:75]
	s_cbranch_vccz .LBB3_506
.LBB3_495:                              ;   in Loop: Header=BB3_444 Depth=2
	s_andn2_b64 vcc, exec, s[80:81]
	s_cbranch_vccnz .LBB3_443
	s_branch .LBB3_507
.LBB3_496:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:4
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v97, v108, v109, v97 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v108, v109, v92 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[62:63]
	s_cbranch_vccnz .LBB3_448
.LBB3_497:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:8
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v96, v108, v109, v96 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v108, v109, v93 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[68:69]
	s_cbranch_vccnz .LBB3_449
.LBB3_498:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:12
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v95, v108, v109, v95 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v94, v108, v109, v94 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[30:31]
	s_cbranch_vccnz .LBB3_450
.LBB3_499:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:16
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v90, v108, v109, v90 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v108, v109, v83 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[76:77]
	s_cbranch_vccnz .LBB3_451
.LBB3_500:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:20
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v89, v108, v109, v89 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v108, v109, v84 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[82:83]
	s_cbranch_vccnz .LBB3_452
.LBB3_501:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:24
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v88, v108, v109, v88 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v108, v109, v85 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[86:87]
	s_cbranch_vccnz .LBB3_453
.LBB3_502:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:28
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v87, v108, v109, v87 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v86, v108, v109, v86 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[42:43]
	s_cbranch_vccnz .LBB3_454
.LBB3_503:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:32
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v82, v108, v109, v82 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v75, v108, v109, v75 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[96:97]
	s_cbranch_vccnz .LBB3_455
.LBB3_504:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:36
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v81, v108, v109, v81 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v76, v108, v109, v76 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[28:29]
	s_cbranch_vccz .LBB3_456
	s_branch .LBB3_457
.LBB3_505:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:116
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v41, v108, v109, v41 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v36, v108, v109, v36 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[74:75]
	s_cbranch_vccnz .LBB3_495
.LBB3_506:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:120
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v40, v108, v109, v40 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v37, v108, v109, v37 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_andn2_b64 vcc, exec, s[80:81]
	s_cbranch_vccnz .LBB3_443
.LBB3_507:                              ;   in Loop: Header=BB3_444 Depth=2
	ds_read_b32 v109, v107 offset:124
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v39, v108, v109, v39 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v38, v108, v109, v38 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_branch .LBB3_443
.LBB3_508:                              ; %Flow1361
	v_readlane_b32 s20, v124, 2
	v_readlane_b32 s21, v124, 3
	v_cmp_lt_f32_e32 vcc, 0, v99
	s_and_b64 s[4:5], s[48:49], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execnz .LBB3_519
.LBB3_509:                              ; %.loopexit
	s_endpgm
.LBB3_510:
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v1, 0
	s_cmp_lt_i32 s10, 9
	s_cbranch_scc0 .LBB3_3
.LBB3_511:
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v5, 0
	s_cmp_lt_i32 s10, 17
	s_cbranch_scc1 .LBB3_4
.LBB3_512:
	global_load_dwordx4 v[9:12], v[29:30], off offset:32
	s_cmp_lt_i32 s10, 25
	s_cbranch_scc1 .LBB3_5
.LBB3_513:
	global_load_dwordx4 v[13:16], v[29:30], off offset:48
	s_cmp_lt_i32 s10, 33
	s_cbranch_scc1 .LBB3_6
.LBB3_514:
	global_load_dwordx4 v[17:20], v[29:30], off offset:64
	s_cmp_lt_i32 s10, 41
	s_cbranch_scc1 .LBB3_7
.LBB3_515:
	global_load_dwordx4 v[21:24], v[29:30], off offset:80
	s_cmp_lt_i32 s10, 49
	s_cbranch_scc1 .LBB3_8
.LBB3_516:
	global_load_dwordx4 v[25:28], v[29:30], off offset:96
	s_cmp_lt_i32 s10, 57
	s_cbranch_scc1 .LBB3_9
.LBB3_517:
	global_load_dwordx4 v[29:32], v[29:30], off offset:112
	s_or_b64 exec, exec, s[6:7]
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc0 .LBB3_11
.LBB3_518:
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v98, 0
	v_cmp_lt_f32_e32 vcc, 0, v99
	s_and_b64 s[4:5], s[48:49], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execz .LBB3_509
.LBB3_519:
	v_div_scale_f32 v0, s[4:5], v99, v99, 1.0
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v1, vcc, 1.0, v99, 1.0
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v3, -v0, v2, 1.0
	v_fmac_f32_e32 v2, v3, v2
	v_mul_f32_e32 v3, v1, v2
	v_fma_f32 v4, -v0, v3, v1
	v_fmac_f32_e32 v3, v4, v2
	v_fma_f32 v0, -v0, v3, v1
	v_div_fmas_f32 v2, v0, v2, v3
	v_mad_i64_i32 v[0:1], s[4:5], s10, v34, 0
	v_readlane_b32 s4, v124, 0
	v_readlane_b32 s5, v124, 1
	s_lshl_b64 s[4:5], s[4:5], 1
	s_add_u32 s4, s20, s4
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	s_addc_u32 s5, s21, s5
	v_mov_b32_e32 v3, s5
	v_add_co_u32_e32 v0, vcc, s4, v0
	v_addc_co_u32_e32 v1, vcc, v3, v1, vcc
	s_cmp_lt_i32 s10, 1
	v_div_fixup_f32 v2, v2, v99, 1.0
	s_cbranch_scc1 .LBB3_521
; %bb.520:
	v_fma_mixlo_f16 v3, v2, v98, 0
	v_fma_mixlo_f16 v4, v2, v97, 0
	v_fma_mixlo_f16 v5, v2, v96, 0
	v_fma_mixlo_f16 v6, v2, v95, 0
	v_fma_mixhi_f16 v6, v2, v94, 0
	v_fma_mixhi_f16 v5, v2, v93, 0
	v_fma_mixhi_f16 v4, v2, v92, 0
	v_fma_mixhi_f16 v3, v2, v91, 0
	global_store_dwordx4 v[0:1], v[3:6], off
.LBB3_521:
	s_cmp_lt_i32 s10, 9
	s_cbranch_scc0 .LBB3_528
; %bb.522:
	s_cmp_lt_i32 s10, 17
	s_cbranch_scc0 .LBB3_529
.LBB3_523:
	s_cmp_lt_i32 s10, 25
	s_cbranch_scc0 .LBB3_530
.LBB3_524:
	s_cmp_lt_i32 s10, 33
	s_cbranch_scc0 .LBB3_531
.LBB3_525:
	s_cmp_lt_i32 s10, 41
	s_cbranch_scc0 .LBB3_532
.LBB3_526:
	s_cmp_lt_i32 s10, 49
	s_cbranch_scc0 .LBB3_533
.LBB3_527:
	s_cmp_lt_i32 s10, 57
	s_cbranch_scc1 .LBB3_509
	s_branch .LBB3_534
.LBB3_528:
	v_fma_mixlo_f16 v3, v2, v90, 0
	v_fma_mixlo_f16 v4, v2, v89, 0
	v_fma_mixlo_f16 v5, v2, v88, 0
	v_fma_mixlo_f16 v6, v2, v87, 0
	v_fma_mixhi_f16 v6, v2, v86, 0
	v_fma_mixhi_f16 v5, v2, v85, 0
	v_fma_mixhi_f16 v4, v2, v84, 0
	v_fma_mixhi_f16 v3, v2, v83, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:16
	s_cmp_lt_i32 s10, 17
	s_cbranch_scc1 .LBB3_523
.LBB3_529:
	v_fma_mixlo_f16 v3, v2, v82, 0
	v_fma_mixlo_f16 v4, v2, v81, 0
	v_fma_mixlo_f16 v5, v2, v80, 0
	v_fma_mixlo_f16 v6, v2, v79, 0
	v_fma_mixhi_f16 v6, v2, v78, 0
	v_fma_mixhi_f16 v5, v2, v77, 0
	v_fma_mixhi_f16 v4, v2, v76, 0
	v_fma_mixhi_f16 v3, v2, v75, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:32
	s_cmp_lt_i32 s10, 25
	s_cbranch_scc1 .LBB3_524
.LBB3_530:
	v_fma_mixlo_f16 v3, v2, v74, 0
	v_fma_mixlo_f16 v4, v2, v73, 0
	v_fma_mixlo_f16 v5, v2, v72, 0
	v_fma_mixlo_f16 v6, v2, v71, 0
	v_fma_mixhi_f16 v6, v2, v70, 0
	v_fma_mixhi_f16 v5, v2, v69, 0
	v_fma_mixhi_f16 v4, v2, v68, 0
	v_fma_mixhi_f16 v3, v2, v67, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:48
	s_cmp_lt_i32 s10, 33
	s_cbranch_scc1 .LBB3_525
.LBB3_531:
	v_fma_mixlo_f16 v3, v2, v66, 0
	v_fma_mixlo_f16 v4, v2, v65, 0
	v_fma_mixlo_f16 v5, v2, v64, 0
	v_fma_mixlo_f16 v6, v2, v63, 0
	v_fma_mixhi_f16 v6, v2, v62, 0
	v_fma_mixhi_f16 v5, v2, v61, 0
	v_fma_mixhi_f16 v4, v2, v60, 0
	v_fma_mixhi_f16 v3, v2, v59, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:64
	s_cmp_lt_i32 s10, 41
	s_cbranch_scc1 .LBB3_526
.LBB3_532:
	v_fma_mixlo_f16 v3, v2, v58, 0
	v_fma_mixlo_f16 v4, v2, v57, 0
	v_fma_mixlo_f16 v5, v2, v56, 0
	v_fma_mixlo_f16 v6, v2, v55, 0
	v_fma_mixhi_f16 v6, v2, v54, 0
	v_fma_mixhi_f16 v5, v2, v53, 0
	v_fma_mixhi_f16 v4, v2, v52, 0
	v_fma_mixhi_f16 v3, v2, v51, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:80
	s_cmp_lt_i32 s10, 49
	s_cbranch_scc1 .LBB3_527
.LBB3_533:
	v_fma_mixlo_f16 v3, v2, v50, 0
	v_fma_mixlo_f16 v4, v2, v49, 0
	v_fma_mixlo_f16 v5, v2, v48, 0
	v_fma_mixlo_f16 v6, v2, v47, 0
	v_fma_mixhi_f16 v6, v2, v46, 0
	v_fma_mixhi_f16 v5, v2, v45, 0
	v_fma_mixhi_f16 v4, v2, v44, 0
	v_fma_mixhi_f16 v3, v2, v43, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:96
	s_cmp_lt_i32 s10, 57
	s_cbranch_scc1 .LBB3_509
.LBB3_534:
	v_fma_mixlo_f16 v3, v2, v42, 0
	v_fma_mixlo_f16 v4, v2, v41, 0
	v_fma_mixlo_f16 v5, v2, v40, 0
	v_fma_mixlo_f16 v6, v2, v39, 0
	v_fma_mixhi_f16 v6, v2, v38, 0
	v_fma_mixhi_f16 v5, v2, v37, 0
	v_fma_mixhi_f16 v4, v2, v36, 0
	v_fma_mixhi_f16 v3, v2, v35, 0
	global_store_dwordx4 v[0:1], v[3:6], off offset:112
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 48
		.amdhsa_kernarg_size 56
		.amdhsa_user_sgpr_count 6
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 125
		.amdhsa_next_free_sgpr 100
		.amdhsa_reserve_vcc 1
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.section	.text._Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end3:
	.size	_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end3-_Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 125
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 100
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 48
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 1
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20512
; TotalNumSgprs: 104
; NumVgprs: 125
; ScratchSize: 48
; MemoryBound: 1
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 104
; NumVGPRsForWavesPerEU: 125
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.section	.AMDGPU.csdata,"",@progbits
	.type	__hip_cuid_cbacdf6d3c0100d3,@object ; @__hip_cuid_cbacdf6d3c0100d3
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_cbacdf6d3c0100d3
__hip_cuid_cbacdf6d3c0100d3:
	.byte	0                               ; 0x0
	.size	__hip_cuid_cbacdf6d3c0100d3, 1

	.ident	"Ubuntu clang version 21.1.8 (6ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_cbacdf6d3c0100d3
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .actual_access:  read_only
        .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 52
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif
    .private_segment_fixed_size: 48
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z16attn_pair_gfx906ILi4ELi64EEvPK6__halfS2_S2_PS0_iiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     60
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .actual_access:  read_only
        .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 8192
    .kernarg_segment_align: 8
    .kernarg_segment_size: 52
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif
    .private_segment_fixed_size: 48
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         _Z16attn_pair_gfx906ILi4ELi128EEvPK6__halfS2_S2_PS0_iiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     88
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .actual_access:  read_only
        .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 52736
    .kernarg_segment_align: 8
    .kernarg_segment_size: 52
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 512
    .name:           _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         _Z16attn_d512_gfx906ILi32ELi16EEvPK6__halfS2_S2_PS0_iiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     120
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .actual_access:  read_only
        .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  read_only
        .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .actual_access:  write_only
        .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         36
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 48
    .sgpr_count:     104
    .sgpr_spill_count: 124
    .symbol:         _Z17attn_tiled_gfx906ILi0EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     125
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
