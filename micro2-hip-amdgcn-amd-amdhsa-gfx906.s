	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.amdhsa_code_object_version 6
	.section	.text._Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:
	s_load_dword s0, s[4:5], 0x2c
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s0, 1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph.preheader
	s_mov_b32 s1, 0
.LBB0_2:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s1, s1, 64
	s_cmp_lt_i32 s1, s0
	; wave barrier
	; wave barrier
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
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
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 1
		.amdhsa_next_free_sgpr 6
		.amdhsa_reserve_vcc 0
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
	.section	.text._Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end0:
	.size	_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end0-_Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 6
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 40
; TotalNumSgprs: 10
; NumVgprs: 0
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 10
; NumVGPRsForWavesPerEU: 1
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:                                ; %.loopexit
	s_load_dword s0, s[4:5], 0x2c
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s0, 1
	s_cbranch_scc1 .LBB1_3
; %bb.1:                                ; %.lr.ph.preheader
	s_mov_b32 s1, 0
.LBB1_2:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_add_i32 s1, s1, 64
	s_cmp_lt_i32 s1, s0
	; wave barrier
	; wave barrier
	s_cbranch_scc1 .LBB1_2
.LBB1_3:                                ; %._crit_edge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
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
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 1
		.amdhsa_next_free_sgpr 6
		.amdhsa_reserve_vcc 0
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
	.section	.text._Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end1:
	.size	_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end1-_Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 6
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 40
; TotalNumSgprs: 10
; NumVgprs: 0
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 10
; NumVGPRsForWavesPerEU: 1
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:                                ; %.loopexit
	s_load_dwordx4 s[8:11], s[4:5], 0x28
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc1 .LBB2_8
; %bb.1:                                ; %.preheader.lr.ph
	s_load_dwordx4 s[0:3], s[4:5], 0x8
	s_ashr_i32 s4, s10, 31
	s_lshr_b32 s5, s4, 29
	s_add_i32 s7, s10, s5
	s_mul_hi_i32 s5, s8, s6
	s_mul_i32 s6, s8, s6
	s_mul_i32 s4, s6, s4
	s_mul_hi_u32 s8, s6, s10
	s_add_i32 s4, s8, s4
	s_mul_i32 s5, s5, s10
	s_ashr_i32 s19, s7, 3
	s_add_i32 s5, s4, s5
	s_mul_i32 s4, s6, s10
	s_sub_i32 s11, 0, s19
	s_lshl_b32 s8, s19, 6
	s_lshl_b64 s[4:5], s[4:5], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s0, s4
	s_addc_u32 s13, s1, s5
	s_add_u32 s14, s2, s4
	s_addc_u32 s15, s3, s5
	s_abs_i32 s16, s19
	v_cvt_f32_u32_e32 v1, s16
	s_sub_i32 s0, 0, s16
	s_ashr_i32 s18, s7, 31
	s_mov_b32 s17, 0
	v_rcp_iflag_f32_e32 v1, v1
	v_cmp_gt_i32_e32 vcc, s8, v0
	v_mov_b32_e32 v3, 0
	s_lshl_b32 s19, s19, 4
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_lo_u32 v2, s0, v1
	s_lshl_b32 s0, s18, 7
	v_mul_hi_u32 v2, v1, v2
	v_add_u32_e32 v2, v1, v2
	v_lshlrev_b32_e32 v1, 4, v0
	v_subrev_u32_e32 v4, s0, v1
	s_branch .LBB2_3
.LBB2_2:                                ; %Flow107
                                        ;   in Loop: Header=BB2_3 Depth=1
	s_or_b64 exec, exec, s[2:3]
	s_add_i32 s17, s17, 64
	s_cmp_ge_i32 s17, s9
	s_waitcnt lgkmcnt(0)
	; wave barrier
	; wave barrier
	s_cbranch_scc1 .LBB2_8
.LBB2_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_6 Depth 2
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz .LBB2_2
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB2_3 Depth=1
	s_mov_b64 s[4:5], 0
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v1, v0
	s_branch .LBB2_6
.LBB2_5:                                ;   in Loop: Header=BB2_6 Depth=2
	s_or_b64 exec, exec, s[6:7]
	v_add_u32_e32 v1, 64, v1
	v_cmp_le_i32_e64 s[0:1], s8, v1
	s_or_b64 s[4:5], s[0:1], s[4:5]
	v_add_u32_e32 v5, 0x400, v5
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz .LBB2_2
.LBB2_6:                                ; %.lr.ph
                                        ;   Parent Loop BB2_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v6, v1, v2
	v_mul_lo_u32 v7, v6, s16
	v_add_u32_e32 v8, 1, v6
	v_sub_u32_e32 v7, v1, v7
	v_cmp_le_u32_e64 s[0:1], s16, v7
	v_cndmask_b32_e64 v6, v6, v8, s[0:1]
	v_subrev_u32_e32 v8, s16, v7
	v_cndmask_b32_e64 v7, v7, v8, s[0:1]
	v_add_u32_e32 v8, 1, v6
	v_cmp_le_u32_e64 s[0:1], s16, v7
	v_cndmask_b32_e64 v6, v6, v8, s[0:1]
	v_xor_b32_e32 v6, s18, v6
	v_subrev_u32_e32 v7, s18, v6
	v_add_u32_e32 v8, s17, v7
	v_cmp_gt_i32_e64 s[0:1], s9, v8
	s_and_saveexec_b64 s[6:7], s[0:1]
	s_cbranch_execz .LBB2_5
; %bb.7:                                ;   in Loop: Header=BB2_6 Depth=2
	v_mad_i64_i32 v[8:9], s[0:1], v8, s10, 0
	v_mad_u64_u32 v[10:11], s[0:1], s11, v7, v[1:2]
	v_lshlrev_b64 v[12:13], 1, v[8:9]
	v_mov_b32_e32 v11, v3
	v_mov_b32_e32 v8, s13
	v_add_co_u32_e64 v9, s[0:1], s12, v12
	v_lshlrev_b64 v[14:15], 4, v[10:11]
	v_addc_co_u32_e64 v16, s[0:1], v8, v13, s[0:1]
	v_add_co_u32_e64 v8, s[0:1], v9, v14
	v_addc_co_u32_e64 v9, s[0:1], v16, v15, s[0:1]
	v_mov_b32_e32 v16, s15
	v_add_co_u32_e64 v12, s[0:1], s14, v12
	v_addc_co_u32_e64 v13, s[0:1], v16, v13, s[0:1]
	v_add_co_u32_e64 v12, s[0:1], v12, v14
	global_load_dwordx4 v[8:11], v[8:9], off
	v_addc_co_u32_e64 v13, s[0:1], v13, v15, s[0:1]
	global_load_dwordx4 v[12:15], v[12:13], off
	v_mul_lo_u32 v7, s19, v7
	v_lshlrev_b32_e32 v6, 7, v6
	v_sub_u32_e32 v6, v6, v7
	v_add_u32_e32 v6, v5, v6
	s_waitcnt vmcnt(1)
	ds_write_b128 v6, v[8:11]
	s_waitcnt vmcnt(0)
	ds_write_b128 v6, v[12:15] offset:8192
	s_branch .LBB2_5
.LBB2_8:                                ; %._crit_edge95
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 16384
		.amdhsa_private_segment_fixed_size 0
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
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 129
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
	.section	.text._Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end2:
	.size	_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end2-_Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 17
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 20
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 0
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 1
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 548
; TotalNumSgprs: 24
; NumVgprs: 17
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 16384 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 32
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 129
; Occupancy: 1
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:
	s_load_dwordx4 s[12:15], s[4:5], 0x28
	s_add_u32 s0, s0, s8
	s_addc_u32 s1, s1, 0
	v_lshl_or_b32 v13, s7, 6, v0
	v_mov_b32_e32 v14, 0
	s_waitcnt lgkmcnt(0)
	s_mul_hi_i32 s7, s12, s6
	s_mul_i32 s6, s12, s6
	s_ashr_i32 s8, s14, 31
	s_mul_i32 s8, s6, s8
	s_mul_hi_u32 s9, s6, s14
	s_add_i32 s8, s9, s8
	s_mul_i32 s7, s7, s14
	s_add_i32 s11, s8, s7
	s_mul_i32 s10, s6, s14
	v_cmp_gt_i32_e64 s[8:9], s12, v13
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
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v112, 0
	s_and_saveexec_b64 s[6:7], s[8:9]
	s_cbranch_execz .LBB3_2
; %bb.1:                                ; %.loopexit195.loopexit
	s_load_dwordx2 s[16:17], s[4:5], 0x0
	v_mad_i64_i32 v[1:2], s[18:19], s14, v13, 0
	s_lshl_b64 s[18:19], s[10:11], 1
	v_lshlrev_b64 v[1:2], 1, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s16, s18
	s_addc_u32 s16, s17, s19
	v_mov_b32_e32 v3, s16
	v_add_co_u32_e32 v15, vcc, s12, v1
	v_addc_co_u32_e32 v16, vcc, v3, v2, vcc
	global_load_dwordx4 v[1:4], v[15:16], off
	global_load_dwordx4 v[5:8], v[15:16], off offset:16
	global_load_dwordx4 v[9:12], v[15:16], off offset:32
	global_load_dwordx4 v[44:47], v[15:16], off offset:48
	global_load_dwordx4 v[59:62], v[15:16], off offset:64
	global_load_dwordx4 v[75:78], v[15:16], off offset:80
	global_load_dwordx4 v[90:93], v[15:16], off offset:96
	global_load_dwordx4 v[106:109], v[15:16], off offset:112
	s_waitcnt vmcnt(7)
	v_cvt_f32_f16_e32 v15, v1
	v_cvt_f32_f16_sdwa v16, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v17, v2
	v_cvt_f32_f16_sdwa v18, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v19, v3
	v_cvt_f32_f16_sdwa v20, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v21, v4
	v_cvt_f32_f16_sdwa v22, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v23, v5
	v_cvt_f32_f16_sdwa v24, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v25, v6
	v_cvt_f32_f16_sdwa v26, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v27, v7
	v_cvt_f32_f16_sdwa v28, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v29, v8
	v_cvt_f32_f16_sdwa v30, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v31, v9
	v_cvt_f32_f16_sdwa v32, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v33, v10
	v_cvt_f32_f16_sdwa v34, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v35, v11
	v_cvt_f32_f16_sdwa v36, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v37, v12
	v_cvt_f32_f16_sdwa v38, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(4)
	v_cvt_f32_f16_e32 v39, v44
	v_cvt_f32_f16_sdwa v40, v44 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v41, v45
	v_cvt_f32_f16_sdwa v42, v45 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v44, v46
	v_cvt_f32_f16_sdwa v46, v46 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v48, v47
	v_cvt_f32_f16_sdwa v50, v47 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(3)
	v_cvt_f32_f16_e32 v52, v59
	v_cvt_f32_f16_sdwa v55, v59 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v57, v60
	v_cvt_f32_f16_sdwa v58, v60 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v59, v61
	v_cvt_f32_f16_sdwa v61, v61 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v63, v62
	v_cvt_f32_f16_sdwa v65, v62 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(2)
	v_cvt_f32_f16_e32 v67, v75
	v_cvt_f32_f16_sdwa v70, v75 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v73, v76
	v_cvt_f32_f16_sdwa v74, v76 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v75, v77
	v_cvt_f32_f16_sdwa v77, v77 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v79, v78
	v_cvt_f32_f16_sdwa v81, v78 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(1)
	v_cvt_f32_f16_e32 v83, v90
	v_cvt_f32_f16_sdwa v85, v90 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v88, v91
	v_cvt_f32_f16_sdwa v90, v91 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v91, v92
	v_cvt_f32_f16_sdwa v92, v92 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v94, v93
	v_cvt_f32_f16_sdwa v96, v93 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v98, v106
	v_cvt_f32_f16_sdwa v100, v106 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v103, v107
	v_cvt_f32_f16_sdwa v106, v107 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v107, v108
	v_cvt_f32_f16_sdwa v108, v108 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v110, v109
	v_cvt_f32_f16_sdwa v112, v109 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
.LBB3_2:                                ; %.loopexit195
	s_or_b64 exec, exec, s[6:7]
	s_load_dwordx2 s[16:17], s[4:5], 0x18
	s_cmp_lt_i32 s13, 1
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v139, 0
	s_cbranch_scc1 .LBB3_28
; %bb.3:                                ; %.preheader194.lr.ph
	s_load_dwordx4 s[24:27], s[4:5], 0x8
	s_ashr_i32 s4, s14, 31
	s_lshr_b32 s4, s4, 29
	s_add_i32 s18, s14, s4
	s_ashr_i32 s19, s18, 3
	s_sub_i32 s12, 0, s19
	s_lshl_b32 s22, s19, 6
	s_lshl_b64 s[4:5], s[10:11], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s23, s24, s4
	s_addc_u32 s24, s25, s5
	s_add_u32 s25, s26, s4
	s_addc_u32 s26, s27, s5
	s_abs_i32 s27, s19
	v_cvt_f32_u32_e32 v1, s27
	s_sub_i32 s4, 0, s27
	s_ashr_i32 s29, s18, 31
	v_lshlrev_b32_e32 v2, 4, v0
	v_rcp_iflag_f32_e32 v1, v1
	s_mov_b32 s28, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v146, 0xff800000
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mov_b32_e32 v139, 0
	v_cmp_gt_i32_e64 s[6:7], s22, v0
	s_lshl_b32 s30, s19, 4
	v_mul_lo_u32 v3, s4, v1
	s_lshl_b32 s4, s29, 7
	v_subrev_u32_e32 v144, s4, v2
	v_mov_b32_e32 v128, 0
	v_mul_hi_u32 v3, v1, v3
	v_mov_b32_e32 v142, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v141, 0
	v_add_u32_e32 v145, v1, v3
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v136, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v78, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v49, 0
	s_mov_b32 s31, s13
	v_mov_b32_e32 v14, 0
	s_branch .LBB3_6
.LBB3_4:                                ; %._crit_edge211
                                        ;   in Loop: Header=BB3_6 Depth=1
	v_sub_f32_e32 v3, v146, v1
	v_mul_f32_e32 v3, 0x3fb8aa3b, v3
	v_exp_f32_e32 v3, v3
	v_cmp_lt_f32_e32 vcc, 0, v14
	v_mov_b32_e32 v146, v1
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_fmac_f32_e32 v2, v14, v3
	v_mul_f32_e32 v139, v3, v139
	v_mul_f32_e32 v128, v3, v128
	v_mul_f32_e32 v142, v3, v142
	v_mul_f32_e32 v129, v3, v129
	v_mul_f32_e32 v141, v3, v141
	v_mul_f32_e32 v130, v3, v130
	v_mul_f32_e32 v140, v3, v140
	v_mul_f32_e32 v131, v3, v131
	v_mul_f32_e32 v138, v3, v138
	v_mul_f32_e32 v124, v3, v124
	v_mul_f32_e32 v137, v3, v137
	v_mul_f32_e32 v125, v3, v125
	v_mul_f32_e32 v136, v3, v136
	v_mul_f32_e32 v126, v3, v126
	v_mul_f32_e32 v135, v3, v135
	v_mul_f32_e32 v127, v3, v127
	v_mul_f32_e32 v134, v3, v134
	v_mul_f32_e32 v119, v3, v119
	v_mul_f32_e32 v133, v3, v133
	v_mul_f32_e32 v120, v3, v120
	v_mul_f32_e32 v132, v3, v132
	v_mul_f32_e32 v121, v3, v121
	v_mul_f32_e32 v123, v3, v123
	v_mul_f32_e32 v122, v3, v122
	v_mul_f32_e32 v118, v3, v118
	v_mul_f32_e32 v109, v3, v109
	v_mul_f32_e32 v117, v3, v117
	v_mul_f32_e32 v111, v3, v111
	v_mul_f32_e32 v116, v3, v116
	v_mul_f32_e32 v113, v3, v113
	v_mul_f32_e32 v115, v3, v115
	v_mul_f32_e32 v114, v3, v114
	v_mul_f32_e32 v105, v3, v105
	v_mul_f32_e32 v93, v3, v93
	v_mul_f32_e32 v104, v3, v104
	v_mul_f32_e32 v95, v3, v95
	v_mul_f32_e32 v102, v3, v102
	v_mul_f32_e32 v97, v3, v97
	v_mul_f32_e32 v101, v3, v101
	v_mul_f32_e32 v99, v3, v99
	v_mul_f32_e32 v89, v3, v89
	v_mul_f32_e32 v76, v3, v76
	v_mul_f32_e32 v87, v3, v87
	v_mul_f32_e32 v78, v3, v78
	v_mul_f32_e32 v86, v3, v86
	v_mul_f32_e32 v80, v3, v80
	v_mul_f32_e32 v84, v3, v84
	v_mul_f32_e32 v82, v3, v82
	v_mul_f32_e32 v72, v3, v72
	v_mul_f32_e32 v60, v3, v60
	v_mul_f32_e32 v71, v3, v71
	v_mul_f32_e32 v62, v3, v62
	v_mul_f32_e32 v69, v3, v69
	v_mul_f32_e32 v64, v3, v64
	v_mul_f32_e32 v68, v3, v68
	v_mul_f32_e32 v66, v3, v66
	v_mul_f32_e32 v56, v3, v56
	v_mul_f32_e32 v43, v3, v43
	v_mul_f32_e32 v54, v3, v54
	v_mul_f32_e32 v45, v3, v45
	v_mul_f32_e32 v53, v3, v53
	v_mul_f32_e32 v47, v3, v47
	v_mul_f32_e32 v51, v3, v51
	v_mul_f32_e32 v49, v3, v49
	v_mov_b32_e32 v14, v2
.LBB3_5:                                ; %Flow853
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s28, s28, 64
	s_sub_i32 s31, s31, 64
	s_cmp_ge_i32 s28, s13
	; wave barrier
	s_cbranch_scc1 .LBB3_28
.LBB3_6:                                ; %.preheader194
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_9 Depth 2
                                        ;     Child Loop BB3_15 Depth 2
                                        ;     Child Loop BB3_19 Depth 2
                                        ;     Child Loop BB3_23 Depth 2
                                        ;     Child Loop BB3_27 Depth 2
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB3_11
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_mov_b64 s[18:19], 0
	v_mov_b32_e32 v2, v144
	v_mov_b32_e32 v1, v0
	s_branch .LBB3_9
.LBB3_8:                                ;   in Loop: Header=BB3_9 Depth=2
	s_or_b64 exec, exec, s[20:21]
	v_add_u32_e32 v1, 64, v1
	v_cmp_le_i32_e32 vcc, s22, v1
	s_or_b64 s[18:19], vcc, s[18:19]
	v_add_u32_e32 v2, 0x400, v2
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execz .LBB3_11
.LBB3_9:                                ; %.lr.ph
                                        ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v3, v1, v145
	v_mul_lo_u32 v4, v3, s27
	v_add_u32_e32 v5, 1, v3
	v_sub_u32_e32 v4, v1, v4
	v_cmp_le_u32_e32 vcc, s27, v4
	v_cndmask_b32_e32 v3, v3, v5, vcc
	v_subrev_u32_e32 v5, s27, v4
	v_cndmask_b32_e32 v4, v4, v5, vcc
	v_add_u32_e32 v5, 1, v3
	v_cmp_le_u32_e32 vcc, s27, v4
	v_cndmask_b32_e32 v3, v3, v5, vcc
	v_xor_b32_e32 v3, s29, v3
	v_subrev_u32_e32 v4, s29, v3
	v_add_u32_e32 v5, s28, v4
	v_cmp_gt_i32_e32 vcc, s13, v5
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB3_8
; %bb.10:                               ;   in Loop: Header=BB3_9 Depth=2
	v_mad_i64_i32 v[5:6], s[34:35], v5, s14, 0
	v_mad_u64_u32 v[7:8], s[34:35], s12, v4, v[1:2]
	v_lshlrev_b64 v[9:10], 1, v[5:6]
	v_mov_b32_e32 v8, v143
	v_mov_b32_e32 v5, s24
	v_add_co_u32_e32 v6, vcc, s23, v9
	v_lshlrev_b64 v[11:12], 4, v[7:8]
	v_addc_co_u32_e32 v147, vcc, v5, v10, vcc
	v_add_co_u32_e32 v5, vcc, v6, v11
	v_addc_co_u32_e32 v6, vcc, v147, v12, vcc
	v_mov_b32_e32 v147, s26
	v_add_co_u32_e32 v9, vcc, s25, v9
	v_addc_co_u32_e32 v10, vcc, v147, v10, vcc
	v_add_co_u32_e32 v9, vcc, v9, v11
	global_load_dwordx4 v[5:8], v[5:6], off
	v_addc_co_u32_e32 v10, vcc, v10, v12, vcc
	global_load_dwordx4 v[9:12], v[9:10], off
	v_mul_lo_u32 v4, s30, v4
	v_lshlrev_b32_e32 v3, 7, v3
	v_sub_u32_e32 v3, v3, v4
	v_add_u32_e32 v3, v2, v3
	s_waitcnt vmcnt(1)
	ds_write_b128 v3, v[5:8]
	s_waitcnt vmcnt(0)
	ds_write_b128 v3, v[9:12] offset:8192
	s_branch .LBB3_8
.LBB3_11:                               ; %Flow855
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB3_5
; %bb.12:                               ;   in Loop: Header=BB3_6 Depth=1
	v_med3_i32 v1, s31, 1, 64
	v_readfirstlane_b32 s21, v1
	s_and_b32 s20, s21, 7
	s_cmp_gt_i32 s13, s28
	s_cselect_b64 s[18:19], -1, 0
	s_cmp_le_i32 s13, s28
	v_mov_b32_e32 v1, 0xff800000
	s_cbranch_scc1 .LBB3_20
; %bb.13:                               ; %.preheader.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_cmp_lt_i32 s31, 8
	s_cbranch_scc1 .LBB3_17
; %bb.14:                               ; %.preheader.preheader.new
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_and_b32 s33, s21, 0x78
	s_mov_b32 s34, 0
	v_mov_b32_e32 v1, 0xff800000
.LBB3_15:                               ; %.preheader
                                        ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_lshl_b32 s35, s34, 7
	v_mov_b32_e32 v147, s35
	ds_read_b128 v[2:5], v147
	ds_read_b128 v[6:9], v147 offset:16
	ds_read_b128 v[148:151], v147 offset:32
	ds_read_b128 v[152:155], v147 offset:48
	s_lshl_b32 s35, s34, 2
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v156
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v156, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v156
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v148 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v148, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v153, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v46, v8
	v_fma_mix_f32 v2, v44, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v50, v9
	v_fma_mix_f32 v2, v48, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:64
	s_add_i32 s34, s34, 8
	s_cmp_lg_u32 s34, s33
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v55, v10
	v_fma_mix_f32 v2, v52, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v61, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v65, v148
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:80
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v70, v10
	v_fma_mix_f32 v2, v67, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v74, v11
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v77, v12
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v81, v148
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:96
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v85, v10
	v_fma_mix_f32 v2, v83, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v90, v11
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v92, v12
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v96, v148
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:112
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v100, v10
	v_fma_mix_f32 v2, v98, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v106, v11
	v_fma_mix_f32 v3, v103, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v108, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v107, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v112, v148
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v110, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v6, s15, v2
	ds_read_b128 v[2:5], v147 offset:128
	v_mov_b32_e32 v148, s35
	buffer_store_dword v6, v148, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v7, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v7, v16, v7
	v_fma_mix_f32 v2, v15, v2, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, 0, v2
	v_mul_f32_e32 v2, v18, v8
	v_fma_mix_f32 v2, v17, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, 0, v2
	v_mul_f32_e32 v2, v20, v9
	v_fma_mix_f32 v2, v19, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, 0, v2
	v_mul_f32_e32 v2, v22, v10
	v_fma_mix_f32 v2, v21, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, 0, v2
	ds_read_b128 v[2:5], v147 offset:144
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v2, v23, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v26, v12
	v_fma_mix_f32 v2, v25, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v28, v149
	v_fma_mix_f32 v2, v27, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v30, v150
	v_fma_mix_f32 v2, v29, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:160
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v32, v11
	v_fma_mix_f32 v2, v31, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v34, v12
	v_fma_mix_f32 v2, v33, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v36, v149
	v_fma_mix_f32 v2, v35, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v38, v150
	v_fma_mix_f32 v2, v37, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:176
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v40, v11
	v_fma_mix_f32 v2, v39, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v42, v12
	v_fma_mix_f32 v2, v41, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v46, v149
	v_fma_mix_f32 v2, v44, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v50, v150
	v_fma_mix_f32 v2, v48, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:192
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v55, v11
	v_fma_mix_f32 v2, v52, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v61, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v65, v150
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:208
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v70, v11
	v_fma_mix_f32 v2, v67, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v74, v12
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v77, v149
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v81, v150
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:224
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v85, v11
	v_fma_mix_f32 v2, v83, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v90, v12
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v92, v149
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v96, v150
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:240
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v100, v11
	v_fma_mix_f32 v2, v98, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v7, v2
	v_mul_f32_e32 v7, v106, v12
	v_fma_mix_f32 v3, v103, v3, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v108, v149
	v_add_f32_e32 v3, v8, v3
	v_fma_mix_f32 v4, v107, v4, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v112, v150
	v_add_f32_e32 v4, v9, v4
	v_fma_mix_f32 v5, v110, v5, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v10, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:4
	v_max3_f32 v1, v1, v6, v2
	ds_read_b128 v[2:5], v147 offset:256
	ds_read_b128 v[6:9], v147 offset:272
	ds_read_b128 v[149:152], v147 offset:288
	ds_read_b128 v[153:156], v147 offset:304
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v157
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v157
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v46, v8
	v_fma_mix_f32 v2, v44, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v50, v9
	v_fma_mix_f32 v2, v48, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:320
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v55, v10
	v_fma_mix_f32 v2, v52, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v61, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v65, v149
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:336
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v70, v10
	v_fma_mix_f32 v2, v67, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v74, v11
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v77, v12
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v81, v149
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:352
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v85, v10
	v_fma_mix_f32 v2, v83, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v90, v11
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v92, v12
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v96, v149
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:368
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v100, v10
	v_fma_mix_f32 v2, v98, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v106, v11
	v_fma_mix_f32 v3, v103, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v108, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v107, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v112, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v110, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v6, s15, v2
	ds_read_b128 v[2:5], v147 offset:384
	buffer_store_dword v6, v148, s[0:3], 0 offen offset:8
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v7, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v7, v16, v7
	v_fma_mix_f32 v2, v15, v2, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, 0, v2
	v_mul_f32_e32 v2, v18, v8
	v_fma_mix_f32 v2, v17, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, 0, v2
	v_mul_f32_e32 v2, v20, v9
	v_fma_mix_f32 v2, v19, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, 0, v2
	v_mul_f32_e32 v2, v22, v10
	v_fma_mix_f32 v2, v21, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, 0, v2
	ds_read_b128 v[2:5], v147 offset:400
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v2, v23, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v26, v12
	v_fma_mix_f32 v2, v25, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v28, v149
	v_fma_mix_f32 v2, v27, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v30, v150
	v_fma_mix_f32 v2, v29, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:416
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v32, v11
	v_fma_mix_f32 v2, v31, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v34, v12
	v_fma_mix_f32 v2, v33, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v36, v149
	v_fma_mix_f32 v2, v35, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v38, v150
	v_fma_mix_f32 v2, v37, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:432
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v40, v11
	v_fma_mix_f32 v2, v39, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v42, v12
	v_fma_mix_f32 v2, v41, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v46, v149
	v_fma_mix_f32 v2, v44, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v50, v150
	v_fma_mix_f32 v2, v48, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:448
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v55, v11
	v_fma_mix_f32 v2, v52, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v61, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v65, v150
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:464
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v70, v11
	v_fma_mix_f32 v2, v67, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v74, v12
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v77, v149
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v81, v150
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:480
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v85, v11
	v_fma_mix_f32 v2, v83, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v90, v12
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v92, v149
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v96, v150
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:496
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v100, v11
	v_fma_mix_f32 v2, v98, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v7, v2
	v_mul_f32_e32 v7, v106, v12
	v_fma_mix_f32 v3, v103, v3, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v108, v149
	v_add_f32_e32 v3, v8, v3
	v_fma_mix_f32 v4, v107, v4, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v112, v150
	v_add_f32_e32 v4, v9, v4
	v_fma_mix_f32 v5, v110, v5, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v10, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:12
	v_max3_f32 v149, v1, v6, v2
	ds_read_b128 v[1:4], v147 offset:512
	ds_read_b128 v[5:8], v147 offset:528
	ds_read_b128 v[9:12], v147 offset:544
	ds_read_b128 v[150:153], v147 offset:560
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v154, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v155, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v154, v16, v154
	v_fma_mix_f32 v1, v15, v1, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v18, v155
	v_fma_mix_f32 v2, v17, v2, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v20, v156
	v_fma_mix_f32 v3, v19, v3, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v22, v157
	v_fma_mix_f32 v4, v21, v4, v154 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v154, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v155, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v1, 0, v1
	v_mul_f32_e32 v154, v24, v154
	v_fma_mix_f32 v5, v23, v5, v154 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v1, v1, v5
	v_mul_f32_e32 v5, v26, v155
	v_add_f32_e32 v2, 0, v2
	v_fma_mix_f32 v5, v25, v6, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v5, v28, v156
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v5, v27, v7, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v5
	v_mul_f32_e32 v5, v30, v157
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v5, v29, v8, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v5
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v5, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v6, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v5, v32, v5
	v_fma_mix_f32 v5, v31, v9, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v1, v5
	v_mul_f32_e32 v5, v34, v6
	v_fma_mix_f32 v5, v33, v10, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v5, v36, v7
	v_fma_mix_f32 v5, v35, v11, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v5
	v_mul_f32_e32 v5, v38, v8
	v_fma_mix_f32 v5, v37, v12, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v5
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v5, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v6, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v5, v40, v5
	v_fma_mix_f32 v5, v39, v150, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v1, v5
	v_mul_f32_e32 v1, v42, v6
	v_fma_mix_f32 v1, v41, v151, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v1
	v_mul_f32_e32 v1, v46, v7
	v_fma_mix_f32 v1, v44, v152, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v1
	v_mul_f32_e32 v1, v50, v8
	v_fma_mix_f32 v1, v48, v153, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v1
	ds_read_b128 v[1:4], v147 offset:576
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v55, v9
	v_fma_mix_f32 v1, v52, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v58, v10
	v_fma_mix_f32 v1, v57, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v61, v11
	v_fma_mix_f32 v1, v59, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v65, v12
	v_fma_mix_f32 v1, v63, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:592
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v70, v9
	v_fma_mix_f32 v1, v67, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v74, v10
	v_fma_mix_f32 v1, v73, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v77, v11
	v_fma_mix_f32 v1, v75, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v81, v12
	v_fma_mix_f32 v1, v79, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:608
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v85, v9
	v_fma_mix_f32 v1, v83, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v90, v10
	v_fma_mix_f32 v1, v88, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v92, v11
	v_fma_mix_f32 v1, v91, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v96, v12
	v_fma_mix_f32 v1, v94, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:624
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v100, v9
	v_fma_mix_f32 v1, v98, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v106, v10
	v_fma_mix_f32 v2, v103, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v108, v11
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v107, v3, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v112, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v110, v4, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v8, v4
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mul_f32_e32 v150, s15, v1
	buffer_store_dword v150, v148, s[0:3], 0 offen offset:16
	ds_read_b128 v[151:154], v147 offset:640
	ds_read_b128 v[9:12], v147 offset:656
	ds_read_b128 v[5:8], v147 offset:672
	ds_read_b128 v[1:4], v147 offset:688
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v155, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v155, v16, v155
	v_fma_mix_f32 v151, v15, v151, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v18, v156
	v_fma_mix_f32 v152, v17, v152, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v20, v157
	v_fma_mix_f32 v153, v19, v153, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v22, v158
	v_fma_mix_f32 v154, v21, v154, v155 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v155, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v155, v24, v155
	v_add_f32_e32 v151, 0, v151
	v_fma_mix_f32 v9, v23, v9, v155 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v151, v9
	v_mul_f32_e32 v151, v26, v156
	v_fma_mix_f32 v10, v25, v10, v151 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v151, v28, v157
	v_fma_mix_f32 v11, v27, v11, v151 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v151, v30, v158
	v_fma_mix_f32 v12, v29, v12, v151 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v151, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v152, 0, v152
	v_add_f32_e32 v153, 0, v153
	v_add_f32_e32 v10, v152, v10
	v_cvt_f32_f16_sdwa v152, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v154, 0, v154
	v_add_f32_e32 v11, v153, v11
	v_cvt_f32_f16_sdwa v153, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v12, v154, v12
	v_cvt_f32_f16_sdwa v154, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v151, v32, v151
	v_fma_mix_f32 v5, v31, v5, v151 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v9, v5
	v_mul_f32_e32 v9, v34, v152
	v_fma_mix_f32 v6, v33, v6, v9 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v9, v36, v153
	v_fma_mix_f32 v7, v35, v7, v9 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v9, v38, v154
	v_fma_mix_f32 v8, v37, v8, v9 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v6, v10, v6
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v7, v11, v7
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v40, v9
	v_add_f32_e32 v8, v12, v8
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_fma_mix_f32 v1, v39, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v42, v10
	v_fma_mix_f32 v2, v41, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v46, v11
	v_fma_mix_f32 v3, v44, v3, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v7, v3
	v_mul_f32_e32 v3, v50, v12
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v48, v4, v3 op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v147 offset:704
	v_add_f32_e32 v8, v8, v3
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v3, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v3, v55, v3
	v_fma_mix_f32 v3, v52, v4, v3 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v1, v3
	v_mul_f32_e32 v1, v58, v10
	v_fma_mix_f32 v1, v57, v5, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v2, v1
	v_mul_f32_e32 v1, v61, v11
	v_fma_mix_f32 v1, v59, v6, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v9, v1
	v_mul_f32_e32 v1, v65, v12
	v_fma_mix_f32 v1, v63, v7, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v8, v1
	ds_read_b128 v[5:8], v147 offset:720
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v70, v9
	v_fma_mix_f32 v5, v67, v5, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v4, v5
	v_mul_f32_e32 v4, v74, v10
	v_fma_mix_f32 v4, v73, v6, v4 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v3, v4
	v_mul_f32_e32 v3, v77, v11
	v_fma_mix_f32 v3, v75, v7, v3 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v2, v3
	v_mul_f32_e32 v2, v81, v12
	v_fma_mix_f32 v2, v79, v8, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v1, v2
	ds_read_b128 v[1:4], v147 offset:736
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v85, v9
	v_fma_mix_f32 v1, v83, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v90, v10
	v_fma_mix_f32 v1, v88, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v92, v11
	v_fma_mix_f32 v1, v91, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v96, v12
	v_fma_mix_f32 v1, v94, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:752
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v100, v9
	v_fma_mix_f32 v1, v98, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v106, v10
	v_fma_mix_f32 v2, v103, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v108, v11
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v107, v3, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v112, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v110, v4, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v8, v4
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mul_f32_e32 v1, s15, v1
	buffer_store_dword v1, v148, s[0:3], 0 offen offset:20
	v_max3_f32 v1, v149, v150, v1
	ds_read_b128 v[2:5], v147 offset:768
	ds_read_b128 v[6:9], v147 offset:784
	ds_read_b128 v[149:152], v147 offset:800
	ds_read_b128 v[153:156], v147 offset:816
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v157
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v157
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v46, v8
	v_fma_mix_f32 v2, v44, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v50, v9
	v_fma_mix_f32 v2, v48, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:832
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v55, v10
	v_fma_mix_f32 v2, v52, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v61, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v65, v149
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:848
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v70, v10
	v_fma_mix_f32 v2, v67, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v74, v11
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v77, v12
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v81, v149
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:864
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v85, v10
	v_fma_mix_f32 v2, v83, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v90, v11
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v92, v12
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v96, v149
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:880
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v100, v10
	v_fma_mix_f32 v2, v98, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v106, v11
	v_fma_mix_f32 v3, v103, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v108, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v107, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v112, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v110, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v10, s15, v2
	buffer_store_dword v10, v148, s[0:3], 0 offen offset:24
	ds_read_b128 v[2:5], v147 offset:896
	ds_read_b128 v[6:9], v147 offset:912
	ds_read_b128 v[149:152], v147 offset:928
	ds_read_b128 v[153:156], v147 offset:944
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v16, v11
	v_fma_mix_f32 v2, v15, v2, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v18, v12
	v_fma_mix_f32 v3, v17, v3, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v20, v157
	v_fma_mix_f32 v4, v19, v4, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v22, v158
	v_fma_mix_f32 v5, v21, v5, v11 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v6, v23, v6, v11 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v158, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v12
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v157
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v158
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v46, v8
	v_fma_mix_f32 v2, v44, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v50, v9
	v_fma_mix_f32 v2, v48, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:960
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v55, v11
	v_fma_mix_f32 v2, v52, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v61, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v65, v150
	v_fma_mix_f32 v2, v63, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:976
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v70, v11
	v_fma_mix_f32 v2, v67, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v74, v12
	v_fma_mix_f32 v2, v73, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v77, v149
	v_fma_mix_f32 v2, v75, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v81, v150
	v_fma_mix_f32 v2, v79, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:992
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v85, v11
	v_fma_mix_f32 v2, v83, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v90, v12
	v_fma_mix_f32 v2, v88, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v92, v149
	v_fma_mix_f32 v2, v91, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v96, v150
	v_fma_mix_f32 v2, v94, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:1008
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v147, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v100, v11
	v_fma_mix_f32 v2, v98, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v106, v12
	v_fma_mix_f32 v3, v103, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v108, v147
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v107, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v112, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v110, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	v_max3_f32 v1, v1, v10, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:28
	s_cbranch_scc1 .LBB3_15
; %bb.16:                               ; %._crit_edge206.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_and_b32 s34, s21, 7
	s_cmp_eq_u32 s34, 0
	s_cbranch_scc0 .LBB3_18
	s_branch .LBB3_20
.LBB3_17:                               ;   in Loop: Header=BB3_6 Depth=1
	v_mov_b32_e32 v1, 0xff800000
	s_mov_b32 s33, 0
	s_and_b32 s34, s21, 7
	s_cmp_eq_u32 s34, 0
	s_cbranch_scc1 .LBB3_20
.LBB3_18:                               ; %.preheader.epil.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_lshl_b32 s34, s33, 2
	s_lshl_b32 s33, s33, 7
	s_mov_b32 s35, s20
.LBB3_19:                               ; %.preheader.epil
                                        ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v163, s33
	v_max_f32_e32 v168, v1, v1
	ds_read_b128 v[1:4], v163
	ds_read_b128 v[5:8], v163 offset:16
	ds_read_b128 v[9:12], v163 offset:32
	ds_read_b128 v[147:150], v163 offset:48
	ds_read_b128 v[151:154], v163 offset:64
	ds_read_b128 v[155:158], v163 offset:80
	ds_read_b128 v[159:162], v163 offset:96
	ds_read_b128 v[163:166], v163 offset:112
	s_waitcnt lgkmcnt(7)
	v_cvt_f32_f16_sdwa v169, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v170, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v171, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(6)
	v_cvt_f32_f16_sdwa v173, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v174, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v172, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v175, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(5)
	v_cvt_f32_f16_sdwa v177, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v178, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v176, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v179, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(4)
	v_cvt_f32_f16_sdwa v181, v147 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v182, v148 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v180, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v183, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v185, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v186, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v169, v16, v169
	v_mul_f32_e32 v170, v18, v170
	v_cvt_f32_f16_sdwa v184, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v187, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v189, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v190, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v171, v20, v171
	v_mul_f32_e32 v173, v24, v173
	v_mul_f32_e32 v174, v26, v174
	v_fma_mix_f32 v1, v15, v1, v169 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v2, v17, v2, v170 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v188, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v191, v157 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v193, v159 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v194, v160 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v172, v22, v172
	v_mul_f32_e32 v175, v28, v175
	v_mul_f32_e32 v177, v32, v177
	v_mul_f32_e32 v178, v34, v178
	v_fma_mix_f32 v3, v19, v3, v171 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v5, v23, v5, v173 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v6, v25, v6, v174 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, 0, v1
	v_add_f32_e32 v2, 0, v2
	v_cvt_f32_f16_sdwa v192, v158 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v195, v161 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v197, v163 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v198, v164 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v176, v30, v176
	v_mul_f32_e32 v179, v36, v179
	v_mul_f32_e32 v181, v40, v181
	v_mul_f32_e32 v182, v42, v182
	v_fma_mix_f32 v4, v21, v4, v172 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v7, v27, v7, v175 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v9, v31, v9, v177 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v10, v33, v10, v178 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, 0, v3
	v_add_f32_e32 v1, v1, v5
	v_add_f32_e32 v2, v2, v6
	v_cvt_f32_f16_sdwa v196, v162 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v199, v165 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v180, v38, v180
	v_mul_f32_e32 v183, v46, v183
	v_mul_f32_e32 v185, v55, v185
	v_mul_f32_e32 v186, v58, v186
	v_fma_mix_f32 v8, v29, v8, v176 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v35, v11, v179 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v147, v39, v147, v181 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v148, v41, v148, v182 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, 0, v4
	v_add_f32_e32 v3, v3, v7
	v_add_f32_e32 v1, v1, v9
	v_add_f32_e32 v2, v2, v10
	v_cvt_f32_f16_sdwa v200, v166 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v184, v50, v184
	v_mul_f32_e32 v187, v61, v187
	v_mul_f32_e32 v189, v70, v189
	v_mul_f32_e32 v190, v74, v190
	v_fma_mix_f32 v12, v37, v12, v180 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v149, v44, v149, v183 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v151, v52, v151, v185 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v152, v57, v152, v186 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v8
	v_add_f32_e32 v3, v3, v11
	v_add_f32_e32 v1, v1, v147
	v_add_f32_e32 v2, v2, v148
	v_mul_f32_e32 v188, v65, v188
	v_mul_f32_e32 v191, v77, v191
	v_mul_f32_e32 v193, v85, v193
	v_mul_f32_e32 v194, v90, v194
	v_fma_mix_f32 v150, v48, v150, v184 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v153, v59, v153, v187 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v155, v67, v155, v189 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v156, v73, v156, v190 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v12
	v_add_f32_e32 v3, v3, v149
	v_add_f32_e32 v1, v1, v151
	v_add_f32_e32 v2, v2, v152
	v_mul_f32_e32 v192, v81, v192
	v_mul_f32_e32 v195, v92, v195
	v_mul_f32_e32 v197, v100, v197
	v_mul_f32_e32 v198, v106, v198
	v_fma_mix_f32 v154, v63, v154, v188 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v157, v75, v157, v191 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v159, v83, v159, v193 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v160, v88, v160, v194 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v150
	v_add_f32_e32 v3, v3, v153
	v_add_f32_e32 v1, v1, v155
	v_add_f32_e32 v2, v2, v156
	v_mul_f32_e32 v196, v96, v196
	v_mul_f32_e32 v199, v108, v199
	v_fma_mix_f32 v158, v79, v158, v192 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v161, v91, v161, v195 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v163, v98, v163, v197 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v164, v103, v164, v198 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v154
	v_add_f32_e32 v3, v3, v157
	v_add_f32_e32 v1, v1, v159
	v_add_f32_e32 v2, v2, v160
	v_mul_f32_e32 v200, v112, v200
	v_fma_mix_f32 v162, v94, v162, v196 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v165, v107, v165, v199 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v158
	v_add_f32_e32 v3, v3, v161
	v_add_f32_e32 v1, v1, v163
	v_add_f32_e32 v2, v2, v164
	v_fma_mix_f32 v166, v110, v166, v200 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v162
	v_add_f32_e32 v3, v3, v165
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v4, v166
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mov_b32_e32 v167, s34
	s_add_i32 s34, s34, 4
	s_addk_i32 s33, 0x80
	s_add_i32 s35, s35, -1
	v_mul_f32_e32 v1, s15, v1
	s_cmp_lg_u32 s35, 0
	buffer_store_dword v1, v167, s[0:3], 0 offen
	v_max_f32_e32 v1, v168, v1
	s_cbranch_scc1 .LBB3_19
.LBB3_20:                               ; %._crit_edge206
                                        ;   in Loop: Header=BB3_6 Depth=1
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v2, v146, v146
	v_max_f32_e32 v1, v2, v1
	s_andn2_b64 vcc, exec, s[18:19]
	v_mov_b32_e32 v2, 0
	s_cbranch_vccnz .LBB3_4
; %bb.21:                               ; %.lr.ph210.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_cmp_lt_i32 s31, 8
	s_cbranch_scc1 .LBB3_25
; %bb.22:                               ; %.lr.ph210.preheader.new
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_and_b32 s18, s21, -8
	s_mov_b32 s19, 0
	v_mov_b32_e32 v2, 0
	s_mov_b32 s33, 0
.LBB3_23:                               ; %.lr.ph210
                                        ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v3, s19
	buffer_load_dword v4, v3, s[0:3], 0 offen
	buffer_load_dword v5, v3, s[0:3], 0 offen offset:4
	buffer_load_dword v6, v3, s[0:3], 0 offen offset:8
	buffer_load_dword v7, v3, s[0:3], 0 offen offset:12
	buffer_load_dword v8, v3, s[0:3], 0 offen offset:16
	buffer_load_dword v9, v3, s[0:3], 0 offen offset:20
	buffer_load_dword v10, v3, s[0:3], 0 offen offset:24
	buffer_load_dword v11, v3, s[0:3], 0 offen offset:28
	s_add_i32 s33, s33, 8
	s_add_i32 s19, s19, 32
	s_cmp_eq_u32 s18, s33
	s_waitcnt vmcnt(7)
	v_sub_f32_e32 v4, v4, v1
	s_waitcnt vmcnt(6)
	v_sub_f32_e32 v5, v5, v1
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	s_waitcnt vmcnt(5)
	v_sub_f32_e32 v6, v6, v1
	v_mul_f32_e32 v5, 0x3fb8aa3b, v5
	v_exp_f32_e32 v4, v4
	s_waitcnt vmcnt(4)
	v_sub_f32_e32 v7, v7, v1
	v_mul_f32_e32 v6, 0x3fb8aa3b, v6
	v_exp_f32_e32 v5, v5
	s_waitcnt vmcnt(3)
	v_sub_f32_e32 v8, v8, v1
	v_mul_f32_e32 v7, 0x3fb8aa3b, v7
	v_exp_f32_e32 v6, v6
	s_waitcnt vmcnt(2)
	v_sub_f32_e32 v9, v9, v1
	v_mul_f32_e32 v8, 0x3fb8aa3b, v8
	v_exp_f32_e32 v7, v7
	s_waitcnt vmcnt(1)
	v_sub_f32_e32 v10, v10, v1
	v_mul_f32_e32 v9, 0x3fb8aa3b, v9
	v_exp_f32_e32 v8, v8
	v_add_f32_e32 v2, v2, v4
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v11, v11, v1
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	v_exp_f32_e32 v9, v9
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v11, 0x3fb8aa3b, v11
	v_exp_f32_e32 v10, v10
	v_add_f32_e32 v2, v2, v6
	v_exp_f32_e32 v11, v11
	v_add_f32_e32 v2, v2, v7
	v_add_f32_e32 v2, v2, v8
	v_add_f32_e32 v2, v2, v9
	v_add_f32_e32 v2, v2, v10
	v_add_f32_e32 v2, v2, v11
	buffer_store_dword v4, v3, s[0:3], 0 offen
	buffer_store_dword v5, v3, s[0:3], 0 offen offset:4
	buffer_store_dword v6, v3, s[0:3], 0 offen offset:8
	buffer_store_dword v7, v3, s[0:3], 0 offen offset:12
	buffer_store_dword v8, v3, s[0:3], 0 offen offset:16
	buffer_store_dword v9, v3, s[0:3], 0 offen offset:20
	buffer_store_dword v10, v3, s[0:3], 0 offen offset:24
	buffer_store_dword v11, v3, s[0:3], 0 offen offset:28
	s_cbranch_scc0 .LBB3_23
; %bb.24:                               ; %._crit_edge211.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_and_b32 s19, s21, 7
	s_cmp_eq_u32 s19, 0
	s_cbranch_scc0 .LBB3_26
	s_branch .LBB3_4
.LBB3_25:                               ;   in Loop: Header=BB3_6 Depth=1
	s_mov_b32 s18, 0
	v_mov_b32_e32 v2, 0
	s_and_b32 s19, s21, 7
	s_cmp_eq_u32 s19, 0
	s_cbranch_scc1 .LBB3_4
.LBB3_26:                               ; %.lr.ph210.epil.preheader
                                        ;   in Loop: Header=BB3_6 Depth=1
	s_lshl_b32 s18, s18, 2
.LBB3_27:                               ; %.lr.ph210.epil
                                        ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v3, s18
	buffer_load_dword v4, v3, s[0:3], 0 offen
	s_add_i32 s18, s18, 4
	s_add_i32 s20, s20, -1
	s_cmp_lg_u32 s20, 0
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v4, v4, v1
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	v_exp_f32_e32 v4, v4
	v_add_f32_e32 v2, v2, v4
	buffer_store_dword v4, v3, s[0:3], 0 offen
	s_cbranch_scc1 .LBB3_27
	s_branch .LBB3_4
.LBB3_28:                               ; %._crit_edge217
	v_cmp_lt_f32_e32 vcc, 0, v14
	s_and_b64 s[4:5], s[8:9], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execz .LBB3_30
; %bb.29:                               ; %.loopexit.loopexit
	v_div_scale_f32 v0, s[4:5], v14, v14, 1.0
	v_div_scale_f32 v1, vcc, 1.0, v14, 1.0
	s_lshl_b64 s[4:5], s[10:11], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v3, -v0, v2, 1.0
	v_fmac_f32_e32 v2, v3, v2
	v_mul_f32_e32 v3, v1, v2
	v_fma_f32 v4, -v0, v3, v1
	v_fmac_f32_e32 v3, v4, v2
	v_fma_f32 v0, -v0, v3, v1
	v_div_fmas_f32 v2, v0, v2, v3
	v_mad_i64_i32 v[0:1], s[6:7], s14, v13, 0
	v_mov_b32_e32 v3, s5
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_add_co_u32_e32 v12, vcc, s4, v0
	v_addc_co_u32_e32 v13, vcc, v3, v1, vcc
	v_div_fixup_f32 v14, v2, v14, 1.0
	v_fma_mixlo_f16 v0, v14, v139, 0
	v_fma_mixlo_f16 v1, v14, v142, 0
	v_fma_mixlo_f16 v2, v14, v141, 0
	v_fma_mixlo_f16 v3, v14, v140, 0
	v_fma_mixlo_f16 v4, v14, v138, 0
	v_fma_mixlo_f16 v5, v14, v137, 0
	v_fma_mixlo_f16 v6, v14, v136, 0
	v_fma_mixlo_f16 v7, v14, v135, 0
	v_fma_mixhi_f16 v3, v14, v131, 0
	v_fma_mixhi_f16 v2, v14, v130, 0
	v_fma_mixhi_f16 v1, v14, v129, 0
	v_fma_mixhi_f16 v0, v14, v128, 0
	v_fma_mixhi_f16 v7, v14, v127, 0
	v_fma_mixhi_f16 v6, v14, v126, 0
	v_fma_mixhi_f16 v5, v14, v125, 0
	v_fma_mixhi_f16 v4, v14, v124, 0
	global_store_dwordx4 v[12:13], v[0:3], off
	global_store_dwordx4 v[12:13], v[4:7], off offset:16
	v_fma_mixlo_f16 v0, v14, v118, 0
	v_fma_mixlo_f16 v1, v14, v117, 0
	v_fma_mixlo_f16 v2, v14, v116, 0
	v_fma_mixlo_f16 v3, v14, v115, 0
	v_fma_mixhi_f16 v3, v14, v114, 0
	v_fma_mixhi_f16 v2, v14, v113, 0
	v_fma_mixhi_f16 v1, v14, v111, 0
	v_fma_mixhi_f16 v0, v14, v109, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:48
	v_fma_mixlo_f16 v8, v14, v134, 0
	v_fma_mixlo_f16 v0, v14, v105, 0
	v_fma_mixlo_f16 v1, v14, v104, 0
	v_fma_mixlo_f16 v2, v14, v102, 0
	v_fma_mixlo_f16 v3, v14, v101, 0
	v_fma_mixhi_f16 v3, v14, v99, 0
	v_fma_mixhi_f16 v2, v14, v97, 0
	v_fma_mixhi_f16 v1, v14, v95, 0
	v_fma_mixhi_f16 v0, v14, v93, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:64
	v_fma_mixlo_f16 v9, v14, v133, 0
	v_fma_mixlo_f16 v0, v14, v89, 0
	v_fma_mixlo_f16 v1, v14, v87, 0
	v_fma_mixlo_f16 v2, v14, v86, 0
	v_fma_mixlo_f16 v3, v14, v84, 0
	v_fma_mixhi_f16 v3, v14, v82, 0
	v_fma_mixhi_f16 v2, v14, v80, 0
	v_fma_mixhi_f16 v1, v14, v78, 0
	v_fma_mixhi_f16 v0, v14, v76, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:80
	v_fma_mixlo_f16 v10, v14, v132, 0
	v_fma_mixlo_f16 v0, v14, v72, 0
	v_fma_mixlo_f16 v1, v14, v71, 0
	v_fma_mixlo_f16 v2, v14, v69, 0
	v_fma_mixlo_f16 v3, v14, v68, 0
	v_fma_mixhi_f16 v3, v14, v66, 0
	v_fma_mixhi_f16 v2, v14, v64, 0
	v_fma_mixhi_f16 v1, v14, v62, 0
	v_fma_mixhi_f16 v0, v14, v60, 0
	v_fma_mixlo_f16 v11, v14, v123, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:96
	v_fma_mixhi_f16 v11, v14, v122, 0
	v_fma_mixlo_f16 v0, v14, v56, 0
	v_fma_mixlo_f16 v1, v14, v54, 0
	v_fma_mixlo_f16 v2, v14, v53, 0
	v_fma_mixlo_f16 v3, v14, v51, 0
	v_fma_mixhi_f16 v10, v14, v121, 0
	v_fma_mixhi_f16 v9, v14, v120, 0
	v_fma_mixhi_f16 v8, v14, v119, 0
	v_fma_mixhi_f16 v3, v14, v49, 0
	v_fma_mixhi_f16 v2, v14, v47, 0
	v_fma_mixhi_f16 v1, v14, v45, 0
	v_fma_mixhi_f16 v0, v14, v43, 0
	global_store_dwordx4 v[12:13], v[8:11], off offset:32
	global_store_dwordx4 v[12:13], v[0:3], off offset:112
.LBB3_30:                               ; %.loopexit
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 16384
		.amdhsa_private_segment_fixed_size 272
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
		.amdhsa_next_free_vgpr 201
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
	.section	.text._Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end3:
	.size	_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end3-_Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 201
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 36
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 272
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 1
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11576
; TotalNumSgprs: 40
; NumVgprs: 201
; ScratchSize: 272
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 16384 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 50
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 201
; Occupancy: 1
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif,comdat
	.protected	_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif ; -- Begin function _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
	.globl	_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
	.p2align	8
	.type	_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif,@function
_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif: ; @_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
; %bb.0:
	s_load_dwordx4 s[12:15], s[4:5], 0x28
	s_add_u32 s0, s0, s8
	s_addc_u32 s1, s1, 0
	v_lshl_or_b32 v13, s7, 6, v0
	v_mov_b32_e32 v14, 0
	s_waitcnt lgkmcnt(0)
	s_mul_hi_i32 s7, s12, s6
	s_mul_i32 s6, s12, s6
	s_ashr_i32 s8, s14, 31
	s_mul_i32 s8, s6, s8
	s_mul_hi_u32 s9, s6, s14
	s_add_i32 s8, s9, s8
	s_mul_i32 s7, s7, s14
	s_add_i32 s11, s8, s7
	s_mul_i32 s10, s6, s14
	v_cmp_gt_i32_e64 s[8:9], s12, v13
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
	v_mov_b32_e32 v33, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v35, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v37, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v39, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v57, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v59, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v63, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v65, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v76, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v78, 0
	s_and_saveexec_b64 s[6:7], s[8:9]
	s_cbranch_execz .LBB4_2
; %bb.1:                                ; %.loopexit218.loopexit
	s_load_dwordx2 s[16:17], s[4:5], 0x0
	v_mad_i64_i32 v[1:2], s[18:19], s14, v13, 0
	s_lshl_b64 s[18:19], s[10:11], 1
	v_lshlrev_b64 v[1:2], 1, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_add_u32 s12, s16, s18
	s_addc_u32 s16, s17, s19
	v_mov_b32_e32 v3, s16
	v_add_co_u32_e32 v15, vcc, s12, v1
	v_addc_co_u32_e32 v16, vcc, v3, v2, vcc
	global_load_dwordx4 v[1:4], v[15:16], off
	global_load_dwordx4 v[5:8], v[15:16], off offset:16
	global_load_dwordx4 v[9:12], v[15:16], off offset:32
	global_load_dwordx4 v[43:46], v[15:16], off offset:48
	global_load_dwordx4 v[51:54], v[15:16], off offset:64
	global_load_dwordx4 v[59:62], v[15:16], off offset:80
	global_load_dwordx4 v[67:70], v[15:16], off offset:96
	global_load_dwordx4 v[75:78], v[15:16], off offset:112
	s_waitcnt vmcnt(7)
	v_cvt_f32_f16_e32 v15, v1
	v_cvt_f32_f16_sdwa v16, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v17, v2
	v_cvt_f32_f16_sdwa v18, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v19, v3
	v_cvt_f32_f16_sdwa v20, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v21, v4
	v_cvt_f32_f16_sdwa v22, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(6)
	v_cvt_f32_f16_e32 v23, v5
	v_cvt_f32_f16_sdwa v24, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v25, v6
	v_cvt_f32_f16_sdwa v26, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v27, v7
	v_cvt_f32_f16_sdwa v28, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v29, v8
	v_cvt_f32_f16_sdwa v30, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(5)
	v_cvt_f32_f16_e32 v31, v9
	v_cvt_f32_f16_sdwa v32, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v33, v10
	v_cvt_f32_f16_sdwa v34, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v35, v11
	v_cvt_f32_f16_sdwa v36, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v37, v12
	v_cvt_f32_f16_sdwa v38, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(4)
	v_cvt_f32_f16_e32 v39, v43
	v_cvt_f32_f16_sdwa v40, v43 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v41, v44
	v_cvt_f32_f16_sdwa v42, v44 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v43, v45
	v_cvt_f32_f16_sdwa v44, v45 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v45, v46
	v_cvt_f32_f16_sdwa v46, v46 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(3)
	v_cvt_f32_f16_e32 v47, v51
	v_cvt_f32_f16_sdwa v48, v51 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v49, v52
	v_cvt_f32_f16_sdwa v50, v52 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v51, v53
	v_cvt_f32_f16_sdwa v52, v53 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v53, v54
	v_cvt_f32_f16_sdwa v54, v54 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(2)
	v_cvt_f32_f16_e32 v55, v59
	v_cvt_f32_f16_sdwa v56, v59 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v57, v60
	v_cvt_f32_f16_sdwa v58, v60 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v59, v61
	v_cvt_f32_f16_sdwa v60, v61 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v61, v62
	v_cvt_f32_f16_sdwa v62, v62 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(1)
	v_cvt_f32_f16_e32 v63, v67
	v_cvt_f32_f16_sdwa v64, v67 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v65, v68
	v_cvt_f32_f16_sdwa v66, v68 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v67, v69
	v_cvt_f32_f16_sdwa v68, v69 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v69, v70
	v_cvt_f32_f16_sdwa v70, v70 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v71, v75
	v_cvt_f32_f16_sdwa v72, v75 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v73, v76
	v_cvt_f32_f16_sdwa v74, v76 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v75, v77
	v_cvt_f32_f16_sdwa v76, v77 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_e32 v77, v78
	v_cvt_f32_f16_sdwa v78, v78 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
.LBB4_2:                                ; %.loopexit218
	s_or_b64 exec, exec, s[6:7]
	s_load_dwordx2 s[16:17], s[4:5], 0x18
	s_cmp_lt_i32 s13, 1
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v144, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v142, 0
	s_cbranch_scc1 .LBB4_35
; %bb.3:                                ; %.preheader217.lr.ph
	s_load_dwordx4 s[24:27], s[4:5], 0x8
	s_ashr_i32 s4, s14, 31
	s_lshr_b32 s4, s4, 29
	s_add_i32 s18, s14, s4
	s_ashr_i32 s19, s18, 3
	s_sub_i32 s12, 0, s19
	s_lshl_b32 s22, s19, 6
	s_lshl_b64 s[4:5], s[10:11], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s23, s24, s4
	s_addc_u32 s24, s25, s5
	s_add_u32 s25, s26, s4
	s_addc_u32 s26, s27, s5
	s_abs_i32 s27, s19
	v_cvt_f32_u32_e32 v1, s27
	s_sub_i32 s4, 0, s27
	s_ashr_i32 s29, s18, 31
	v_lshlrev_b32_e32 v2, 4, v0
	v_rcp_iflag_f32_e32 v1, v1
	s_mov_b32 s28, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v146, 0xff800000
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mov_b32_e32 v142, 0
	v_cmp_gt_i32_e64 s[6:7], s22, v0
	s_lshl_b32 s30, s19, 4
	v_mul_lo_u32 v3, s4, v1
	s_lshl_b32 s4, s29, 7
	v_subrev_u32_e32 v136, s4, v2
	v_mov_b32_e32 v128, 0
	v_mul_hi_u32 v3, v1, v3
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v144, 0
	v_add_u32_e32 v137, v1, v3
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v141, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v140, 0
	v_mov_b32_e32 v126, 0
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v138, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v134, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v124, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v110, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v102, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v82, 0
	s_mov_b32 s31, s13
	v_mov_b32_e32 v14, 0
	s_branch .LBB4_6
.LBB4_4:                                ; %Flow1797
                                        ;   in Loop: Header=BB4_6 Depth=1
	v_fmac_f32_e32 v2, v14, v3
	v_mov_b32_e32 v146, v1
	v_mov_b32_e32 v14, v2
.LBB4_5:                                ; %Flow1808
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_or_b64 exec, exec, s[18:19]
	s_add_i32 s28, s28, 64
	s_sub_i32 s31, s31, 64
	s_cmp_ge_i32 s28, s13
	; wave barrier
	s_cbranch_scc1 .LBB4_35
.LBB4_6:                                ; %.preheader217
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_9 Depth 2
                                        ;     Child Loop BB4_15 Depth 2
                                        ;     Child Loop BB4_19 Depth 2
                                        ;     Child Loop BB4_23 Depth 2
                                        ;     Child Loop BB4_27 Depth 2
                                        ;     Child Loop BB4_31 Depth 2
                                        ;     Child Loop BB4_34 Depth 2
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB4_11
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_mov_b64 s[18:19], 0
	v_mov_b32_e32 v2, v136
	v_mov_b32_e32 v1, v0
	s_branch .LBB4_9
.LBB4_8:                                ;   in Loop: Header=BB4_9 Depth=2
	s_or_b64 exec, exec, s[20:21]
	v_add_u32_e32 v1, 64, v1
	v_cmp_le_i32_e32 vcc, s22, v1
	s_or_b64 s[18:19], vcc, s[18:19]
	v_add_u32_e32 v2, 0x400, v2
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execz .LBB4_11
.LBB4_9:                                ; %.lr.ph
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v3, v1, v137
	v_mul_lo_u32 v4, v3, s27
	v_add_u32_e32 v5, 1, v3
	v_sub_u32_e32 v4, v1, v4
	v_cmp_le_u32_e32 vcc, s27, v4
	v_cndmask_b32_e32 v3, v3, v5, vcc
	v_subrev_u32_e32 v5, s27, v4
	v_cndmask_b32_e32 v4, v4, v5, vcc
	v_add_u32_e32 v5, 1, v3
	v_cmp_le_u32_e32 vcc, s27, v4
	v_cndmask_b32_e32 v3, v3, v5, vcc
	v_xor_b32_e32 v3, s29, v3
	v_subrev_u32_e32 v4, s29, v3
	v_add_u32_e32 v5, s28, v4
	v_cmp_gt_i32_e32 vcc, s13, v5
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB4_8
; %bb.10:                               ;   in Loop: Header=BB4_9 Depth=2
	v_mad_i64_i32 v[5:6], s[34:35], v5, s14, 0
	v_mad_u64_u32 v[7:8], s[34:35], s12, v4, v[1:2]
	v_lshlrev_b64 v[9:10], 1, v[5:6]
	v_mov_b32_e32 v8, v122
	v_mov_b32_e32 v5, s24
	v_add_co_u32_e32 v6, vcc, s23, v9
	v_lshlrev_b64 v[11:12], 4, v[7:8]
	v_addc_co_u32_e32 v147, vcc, v5, v10, vcc
	v_add_co_u32_e32 v5, vcc, v6, v11
	v_addc_co_u32_e32 v6, vcc, v147, v12, vcc
	v_mov_b32_e32 v147, s26
	v_add_co_u32_e32 v9, vcc, s25, v9
	v_addc_co_u32_e32 v10, vcc, v147, v10, vcc
	v_add_co_u32_e32 v9, vcc, v9, v11
	global_load_dwordx4 v[5:8], v[5:6], off
	v_addc_co_u32_e32 v10, vcc, v10, v12, vcc
	global_load_dwordx4 v[9:12], v[9:10], off
	v_mul_lo_u32 v4, s30, v4
	v_lshlrev_b32_e32 v3, 7, v3
	v_sub_u32_e32 v3, v3, v4
	v_add_u32_e32 v3, v2, v3
	s_waitcnt vmcnt(1)
	ds_write_b128 v3, v[5:8]
	s_waitcnt vmcnt(0)
	ds_write_b128 v3, v[9:12] offset:8192
	s_branch .LBB4_8
.LBB4_11:                               ; %Flow1810
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt lgkmcnt(0)
	; wave barrier
	s_and_saveexec_b64 s[18:19], s[8:9]
	s_cbranch_execz .LBB4_5
; %bb.12:                               ;   in Loop: Header=BB4_6 Depth=1
	v_med3_i32 v1, s31, 1, 64
	v_readfirstlane_b32 s33, v1
	s_and_b32 s34, s33, 7
	s_cmp_gt_i32 s13, s28
	s_cselect_b64 s[20:21], -1, 0
	s_cmp_le_i32 s13, s28
	v_mov_b32_e32 v1, 0xff800000
	s_cbranch_scc1 .LBB4_20
; %bb.13:                               ; %.preheader.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_cmp_lt_i32 s31, 8
	s_cbranch_scc1 .LBB4_17
; %bb.14:                               ; %.preheader.preheader.new
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s4, s33, 0x78
	s_mov_b32 s5, 0
	v_mov_b32_e32 v1, 0xff800000
.LBB4_15:                               ; %.preheader
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_lshl_b32 s35, s5, 7
	v_mov_b32_e32 v147, s35
	ds_read_b128 v[2:5], v147
	ds_read_b128 v[6:9], v147 offset:16
	ds_read_b128 v[148:151], v147 offset:32
	ds_read_b128 v[152:155], v147 offset:48
	s_lshl_b32 s35, s5, 2
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v156
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v156, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v156
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v148 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v148, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v153, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v44, v8
	v_fma_mix_f32 v2, v43, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v46, v9
	v_fma_mix_f32 v2, v45, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:64
	s_add_i32 s5, s5, 8
	s_cmp_lg_u32 s5, s4
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v48, v10
	v_fma_mix_f32 v2, v47, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v50, v11
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v52, v12
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v54, v148
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:80
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v56, v10
	v_fma_mix_f32 v2, v55, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v60, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v62, v148
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:96
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v64, v10
	v_fma_mix_f32 v2, v63, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v66, v11
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v68, v12
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v70, v148
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:112
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v148, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v72, v10
	v_fma_mix_f32 v2, v71, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v74, v11
	v_fma_mix_f32 v3, v73, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v76, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v75, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v78, v148
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v77, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v6, s15, v2
	ds_read_b128 v[2:5], v147 offset:128
	v_mov_b32_e32 v148, s35
	buffer_store_dword v6, v148, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v7, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v7, v16, v7
	v_fma_mix_f32 v2, v15, v2, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, 0, v2
	v_mul_f32_e32 v2, v18, v8
	v_fma_mix_f32 v2, v17, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, 0, v2
	v_mul_f32_e32 v2, v20, v9
	v_fma_mix_f32 v2, v19, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, 0, v2
	v_mul_f32_e32 v2, v22, v10
	v_fma_mix_f32 v2, v21, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, 0, v2
	ds_read_b128 v[2:5], v147 offset:144
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v2, v23, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v26, v12
	v_fma_mix_f32 v2, v25, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v28, v149
	v_fma_mix_f32 v2, v27, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v30, v150
	v_fma_mix_f32 v2, v29, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:160
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v32, v11
	v_fma_mix_f32 v2, v31, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v34, v12
	v_fma_mix_f32 v2, v33, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v36, v149
	v_fma_mix_f32 v2, v35, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v38, v150
	v_fma_mix_f32 v2, v37, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:176
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v40, v11
	v_fma_mix_f32 v2, v39, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v42, v12
	v_fma_mix_f32 v2, v41, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v44, v149
	v_fma_mix_f32 v2, v43, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v46, v150
	v_fma_mix_f32 v2, v45, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:192
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v48, v11
	v_fma_mix_f32 v2, v47, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v50, v12
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v52, v149
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v54, v150
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:208
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v56, v11
	v_fma_mix_f32 v2, v55, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v60, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v62, v150
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:224
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v64, v11
	v_fma_mix_f32 v2, v63, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v66, v12
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v68, v149
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v70, v150
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:240
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v72, v11
	v_fma_mix_f32 v2, v71, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v7, v2
	v_mul_f32_e32 v7, v74, v12
	v_fma_mix_f32 v3, v73, v3, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v76, v149
	v_add_f32_e32 v3, v8, v3
	v_fma_mix_f32 v4, v75, v4, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v78, v150
	v_add_f32_e32 v4, v9, v4
	v_fma_mix_f32 v5, v77, v5, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v10, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:4
	v_max3_f32 v1, v1, v6, v2
	ds_read_b128 v[2:5], v147 offset:256
	ds_read_b128 v[6:9], v147 offset:272
	ds_read_b128 v[149:152], v147 offset:288
	ds_read_b128 v[153:156], v147 offset:304
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v157
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v157
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v44, v8
	v_fma_mix_f32 v2, v43, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v46, v9
	v_fma_mix_f32 v2, v45, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:320
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v48, v10
	v_fma_mix_f32 v2, v47, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v50, v11
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v52, v12
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v54, v149
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:336
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v56, v10
	v_fma_mix_f32 v2, v55, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v60, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v62, v149
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:352
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v64, v10
	v_fma_mix_f32 v2, v63, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v66, v11
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v68, v12
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v70, v149
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:368
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v72, v10
	v_fma_mix_f32 v2, v71, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v74, v11
	v_fma_mix_f32 v3, v73, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v76, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v75, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v78, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v77, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v6, s15, v2
	ds_read_b128 v[2:5], v147 offset:384
	buffer_store_dword v6, v148, s[0:3], 0 offen offset:8
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v7, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v7, v16, v7
	v_fma_mix_f32 v2, v15, v2, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, 0, v2
	v_mul_f32_e32 v2, v18, v8
	v_fma_mix_f32 v2, v17, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, 0, v2
	v_mul_f32_e32 v2, v20, v9
	v_fma_mix_f32 v2, v19, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, 0, v2
	v_mul_f32_e32 v2, v22, v10
	v_fma_mix_f32 v2, v21, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, 0, v2
	ds_read_b128 v[2:5], v147 offset:400
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v2, v23, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v26, v12
	v_fma_mix_f32 v2, v25, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v28, v149
	v_fma_mix_f32 v2, v27, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v30, v150
	v_fma_mix_f32 v2, v29, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:416
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v32, v11
	v_fma_mix_f32 v2, v31, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v34, v12
	v_fma_mix_f32 v2, v33, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v36, v149
	v_fma_mix_f32 v2, v35, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v38, v150
	v_fma_mix_f32 v2, v37, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:432
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v40, v11
	v_fma_mix_f32 v2, v39, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v42, v12
	v_fma_mix_f32 v2, v41, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v44, v149
	v_fma_mix_f32 v2, v43, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v46, v150
	v_fma_mix_f32 v2, v45, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:448
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v48, v11
	v_fma_mix_f32 v2, v47, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v50, v12
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v52, v149
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v54, v150
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:464
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v56, v11
	v_fma_mix_f32 v2, v55, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v60, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v62, v150
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:480
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v64, v11
	v_fma_mix_f32 v2, v63, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v66, v12
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v68, v149
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	v_mul_f32_e32 v2, v70, v150
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v10, v10, v2
	ds_read_b128 v[2:5], v147 offset:496
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v72, v11
	v_fma_mix_f32 v2, v71, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v7, v2
	v_mul_f32_e32 v7, v74, v12
	v_fma_mix_f32 v3, v73, v3, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v76, v149
	v_add_f32_e32 v3, v8, v3
	v_fma_mix_f32 v4, v75, v4, v7 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v7, v78, v150
	v_add_f32_e32 v4, v9, v4
	v_fma_mix_f32 v5, v77, v5, v7 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v10, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:12
	v_max3_f32 v149, v1, v6, v2
	ds_read_b128 v[1:4], v147 offset:512
	ds_read_b128 v[5:8], v147 offset:528
	ds_read_b128 v[9:12], v147 offset:544
	ds_read_b128 v[150:153], v147 offset:560
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v154, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v155, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v154, v16, v154
	v_fma_mix_f32 v1, v15, v1, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v18, v155
	v_fma_mix_f32 v2, v17, v2, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v20, v156
	v_fma_mix_f32 v3, v19, v3, v154 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v154, v22, v157
	v_fma_mix_f32 v4, v21, v4, v154 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v154, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v155, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v1, 0, v1
	v_mul_f32_e32 v154, v24, v154
	v_fma_mix_f32 v5, v23, v5, v154 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v1, v1, v5
	v_mul_f32_e32 v5, v26, v155
	v_add_f32_e32 v2, 0, v2
	v_fma_mix_f32 v5, v25, v6, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v5, v28, v156
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v5, v27, v7, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v5
	v_mul_f32_e32 v5, v30, v157
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v5, v29, v8, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v5
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v5, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v6, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v5, v32, v5
	v_fma_mix_f32 v5, v31, v9, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v1, v5
	v_mul_f32_e32 v5, v34, v6
	v_fma_mix_f32 v5, v33, v10, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v5, v36, v7
	v_fma_mix_f32 v5, v35, v11, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v5
	v_mul_f32_e32 v5, v38, v8
	v_fma_mix_f32 v5, v37, v12, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v5
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v5, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v6, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v5, v40, v5
	v_fma_mix_f32 v5, v39, v150, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v1, v5
	v_mul_f32_e32 v1, v42, v6
	v_fma_mix_f32 v1, v41, v151, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v1
	v_mul_f32_e32 v1, v44, v7
	v_fma_mix_f32 v1, v43, v152, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v1
	v_mul_f32_e32 v1, v46, v8
	v_fma_mix_f32 v1, v45, v153, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v1
	ds_read_b128 v[1:4], v147 offset:576
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v48, v9
	v_fma_mix_f32 v1, v47, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v50, v10
	v_fma_mix_f32 v1, v49, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v52, v11
	v_fma_mix_f32 v1, v51, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v54, v12
	v_fma_mix_f32 v1, v53, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:592
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v56, v9
	v_fma_mix_f32 v1, v55, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v58, v10
	v_fma_mix_f32 v1, v57, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v60, v11
	v_fma_mix_f32 v1, v59, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v62, v12
	v_fma_mix_f32 v1, v61, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:608
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v64, v9
	v_fma_mix_f32 v1, v63, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v66, v10
	v_fma_mix_f32 v1, v65, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v68, v11
	v_fma_mix_f32 v1, v67, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v70, v12
	v_fma_mix_f32 v1, v69, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:624
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v72, v9
	v_fma_mix_f32 v1, v71, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v74, v10
	v_fma_mix_f32 v2, v73, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v76, v11
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v75, v3, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v78, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v77, v4, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v8, v4
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mul_f32_e32 v150, s15, v1
	buffer_store_dword v150, v148, s[0:3], 0 offen offset:16
	ds_read_b128 v[151:154], v147 offset:640
	ds_read_b128 v[9:12], v147 offset:656
	ds_read_b128 v[5:8], v147 offset:672
	ds_read_b128 v[1:4], v147 offset:688
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v155, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v155, v16, v155
	v_fma_mix_f32 v151, v15, v151, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v18, v156
	v_fma_mix_f32 v152, v17, v152, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v20, v157
	v_fma_mix_f32 v153, v19, v153, v155 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v155, v22, v158
	v_fma_mix_f32 v154, v21, v154, v155 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v155, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v156, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v155, v24, v155
	v_add_f32_e32 v151, 0, v151
	v_fma_mix_f32 v9, v23, v9, v155 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v151, v9
	v_mul_f32_e32 v151, v26, v156
	v_fma_mix_f32 v10, v25, v10, v151 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v151, v28, v157
	v_fma_mix_f32 v11, v27, v11, v151 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v151, v30, v158
	v_fma_mix_f32 v12, v29, v12, v151 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v151, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v152, 0, v152
	v_add_f32_e32 v153, 0, v153
	v_add_f32_e32 v10, v152, v10
	v_cvt_f32_f16_sdwa v152, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v154, 0, v154
	v_add_f32_e32 v11, v153, v11
	v_cvt_f32_f16_sdwa v153, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v12, v154, v12
	v_cvt_f32_f16_sdwa v154, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v151, v32, v151
	v_fma_mix_f32 v5, v31, v5, v151 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v9, v5
	v_mul_f32_e32 v9, v34, v152
	v_fma_mix_f32 v6, v33, v6, v9 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v9, v36, v153
	v_fma_mix_f32 v7, v35, v7, v9 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v9, v38, v154
	v_fma_mix_f32 v8, v37, v8, v9 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v6, v10, v6
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v7, v11, v7
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v40, v9
	v_add_f32_e32 v8, v12, v8
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_fma_mix_f32 v1, v39, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v42, v10
	v_fma_mix_f32 v2, v41, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v44, v11
	v_fma_mix_f32 v3, v43, v3, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v7, v3
	v_mul_f32_e32 v3, v46, v12
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v45, v4, v3 op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v147 offset:704
	v_add_f32_e32 v8, v8, v3
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v3, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v3, v48, v3
	v_fma_mix_f32 v3, v47, v4, v3 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v1, v3
	v_mul_f32_e32 v1, v50, v10
	v_fma_mix_f32 v1, v49, v5, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v2, v1
	v_mul_f32_e32 v1, v52, v11
	v_fma_mix_f32 v1, v51, v6, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v9, v1
	v_mul_f32_e32 v1, v54, v12
	v_fma_mix_f32 v1, v53, v7, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v8, v1
	ds_read_b128 v[5:8], v147 offset:720
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v56, v9
	v_fma_mix_f32 v5, v55, v5, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v4, v5
	v_mul_f32_e32 v4, v58, v10
	v_fma_mix_f32 v4, v57, v6, v4 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v3, v4
	v_mul_f32_e32 v3, v60, v11
	v_fma_mix_f32 v3, v59, v7, v3 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v2, v3
	v_mul_f32_e32 v2, v62, v12
	v_fma_mix_f32 v2, v61, v8, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v1, v2
	ds_read_b128 v[1:4], v147 offset:736
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v64, v9
	v_fma_mix_f32 v1, v63, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v1
	v_mul_f32_e32 v1, v66, v10
	v_fma_mix_f32 v1, v65, v2, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v1
	v_mul_f32_e32 v1, v68, v11
	v_fma_mix_f32 v1, v67, v3, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v1
	v_mul_f32_e32 v1, v70, v12
	v_fma_mix_f32 v1, v69, v4, v1 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v1
	ds_read_b128 v[1:4], v147 offset:752
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v9, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v9, v72, v9
	v_fma_mix_f32 v1, v71, v1, v9 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v5, v1
	v_mul_f32_e32 v5, v74, v10
	v_fma_mix_f32 v2, v73, v2, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v76, v11
	v_add_f32_e32 v2, v6, v2
	v_fma_mix_f32 v3, v75, v3, v5 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v5, v78, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v77, v4, v5 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v8, v4
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mul_f32_e32 v1, s15, v1
	buffer_store_dword v1, v148, s[0:3], 0 offen offset:20
	v_max3_f32 v1, v149, v150, v1
	ds_read_b128 v[2:5], v147 offset:768
	ds_read_b128 v[6:9], v147 offset:784
	ds_read_b128 v[149:152], v147 offset:800
	ds_read_b128 v[153:156], v147 offset:816
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v16, v10
	v_fma_mix_f32 v2, v15, v2, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v18, v11
	v_fma_mix_f32 v3, v17, v3, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v20, v12
	v_fma_mix_f32 v4, v19, v4, v10 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v10, v22, v157
	v_fma_mix_f32 v5, v21, v5, v10 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v10, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v10, v24, v10
	v_fma_mix_f32 v6, v23, v6, v10 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v157, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v11
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v12
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v157
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v44, v8
	v_fma_mix_f32 v2, v43, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v46, v9
	v_fma_mix_f32 v2, v45, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:832
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v48, v10
	v_fma_mix_f32 v2, v47, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v50, v11
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v52, v12
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v54, v149
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:848
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v56, v10
	v_fma_mix_f32 v2, v55, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v11
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v60, v12
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v62, v149
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:864
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v64, v10
	v_fma_mix_f32 v2, v63, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v66, v11
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v68, v12
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v70, v149
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:880
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v10, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v11, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v10, v72, v10
	v_fma_mix_f32 v2, v71, v2, v10 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v74, v11
	v_fma_mix_f32 v3, v73, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v76, v12
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v75, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v78, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v77, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v10, s15, v2
	buffer_store_dword v10, v148, s[0:3], 0 offen offset:24
	ds_read_b128 v[2:5], v147 offset:896
	ds_read_b128 v[6:9], v147 offset:912
	ds_read_b128 v[149:152], v147 offset:928
	ds_read_b128 v[153:156], v147 offset:944
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v158, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v16, v11
	v_fma_mix_f32 v2, v15, v2, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v18, v12
	v_fma_mix_f32 v3, v17, v3, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v20, v157
	v_fma_mix_f32 v4, v19, v4, v11 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v11, v22, v158
	v_fma_mix_f32 v5, v21, v5, v11 op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v157, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, 0, v2
	v_mul_f32_e32 v11, v24, v11
	v_fma_mix_f32 v6, v23, v6, v11 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v158, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v26, v12
	v_add_f32_e32 v3, 0, v3
	v_fma_mix_f32 v6, v25, v7, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v28, v157
	v_add_f32_e32 v4, 0, v4
	v_fma_mix_f32 v6, v27, v8, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v30, v158
	v_add_f32_e32 v5, 0, v5
	v_fma_mix_f32 v6, v29, v9, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v6, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v32, v6
	v_fma_mix_f32 v6, v31, v149, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v2, v6
	v_mul_f32_e32 v6, v34, v7
	v_fma_mix_f32 v6, v33, v150, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, v3, v6
	v_mul_f32_e32 v6, v36, v8
	v_fma_mix_f32 v6, v35, v151, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v6
	v_mul_f32_e32 v6, v38, v9
	v_fma_mix_f32 v6, v37, v152, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v5, v5, v6
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v6, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v7, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v8, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v9, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v6, v40, v6
	v_fma_mix_f32 v6, v39, v153, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v2, v6
	v_mul_f32_e32 v2, v42, v7
	v_fma_mix_f32 v2, v41, v154, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v3, v2
	v_mul_f32_e32 v2, v44, v8
	v_fma_mix_f32 v2, v43, v155, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v4, v2
	v_mul_f32_e32 v2, v46, v9
	v_fma_mix_f32 v2, v45, v156, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v5, v2
	ds_read_b128 v[2:5], v147 offset:960
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v48, v11
	v_fma_mix_f32 v2, v47, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v50, v12
	v_fma_mix_f32 v2, v49, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v52, v149
	v_fma_mix_f32 v2, v51, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v54, v150
	v_fma_mix_f32 v2, v53, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:976
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v56, v11
	v_fma_mix_f32 v2, v55, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v58, v12
	v_fma_mix_f32 v2, v57, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v60, v149
	v_fma_mix_f32 v2, v59, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v62, v150
	v_fma_mix_f32 v2, v61, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:992
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v150, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v64, v11
	v_fma_mix_f32 v2, v63, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v6, v6, v2
	v_mul_f32_e32 v2, v66, v12
	v_fma_mix_f32 v2, v65, v3, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v7, v7, v2
	v_mul_f32_e32 v2, v68, v149
	v_fma_mix_f32 v2, v67, v4, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v8, v8, v2
	v_mul_f32_e32 v2, v70, v150
	v_fma_mix_f32 v2, v69, v5, v2 op_sel_hi:[0,1,0]
	v_add_f32_e32 v9, v9, v2
	ds_read_b128 v[2:5], v147 offset:1008
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v11, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v12, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v147, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v149, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v11, v72, v11
	v_fma_mix_f32 v2, v71, v2, v11 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v6, v2
	v_mul_f32_e32 v6, v74, v12
	v_fma_mix_f32 v3, v73, v3, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v76, v147
	v_add_f32_e32 v3, v7, v3
	v_fma_mix_f32 v4, v75, v4, v6 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v6, v78, v149
	v_add_f32_e32 v4, v8, v4
	v_fma_mix_f32 v5, v77, v5, v6 op_sel_hi:[0,1,0]
	v_add_f32_e32 v2, v3, v2
	v_add_f32_e32 v5, v9, v5
	v_add_f32_e32 v2, v4, v2
	v_add_f32_e32 v2, v5, v2
	v_mul_f32_e32 v2, s15, v2
	v_max3_f32 v1, v1, v10, v2
	buffer_store_dword v2, v148, s[0:3], 0 offen offset:28
	s_cbranch_scc1 .LBB4_15
; %bb.16:                               ; %._crit_edge229.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s5, s33, 7
	s_cmp_eq_u32 s5, 0
	s_cbranch_scc0 .LBB4_18
	s_branch .LBB4_20
.LBB4_17:                               ;   in Loop: Header=BB4_6 Depth=1
	v_mov_b32_e32 v1, 0xff800000
	s_mov_b32 s4, 0
	s_and_b32 s5, s33, 7
	s_cmp_eq_u32 s5, 0
	s_cbranch_scc1 .LBB4_20
.LBB4_18:                               ; %.preheader.epil.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_lshl_b32 s5, s4, 2
	s_lshl_b32 s4, s4, 7
	s_mov_b32 s35, s34
.LBB4_19:                               ; %.preheader.epil
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v163, s4
	v_max_f32_e32 v168, v1, v1
	ds_read_b128 v[1:4], v163
	ds_read_b128 v[5:8], v163 offset:16
	ds_read_b128 v[9:12], v163 offset:32
	ds_read_b128 v[147:150], v163 offset:48
	ds_read_b128 v[151:154], v163 offset:64
	ds_read_b128 v[155:158], v163 offset:80
	ds_read_b128 v[159:162], v163 offset:96
	ds_read_b128 v[163:166], v163 offset:112
	s_waitcnt lgkmcnt(7)
	v_cvt_f32_f16_sdwa v169, v1 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v170, v2 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v171, v3 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(6)
	v_cvt_f32_f16_sdwa v173, v5 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v174, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v172, v4 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v175, v7 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(5)
	v_cvt_f32_f16_sdwa v177, v9 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v178, v10 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v176, v8 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v179, v11 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(4)
	v_cvt_f32_f16_sdwa v181, v147 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v182, v148 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v180, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v183, v149 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v185, v151 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v186, v152 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v169, v16, v169
	v_mul_f32_e32 v170, v18, v170
	v_cvt_f32_f16_sdwa v184, v150 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v187, v153 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v189, v155 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v190, v156 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v171, v20, v171
	v_mul_f32_e32 v173, v24, v173
	v_mul_f32_e32 v174, v26, v174
	v_fma_mix_f32 v1, v15, v1, v169 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v2, v17, v2, v170 op_sel_hi:[0,1,0]
	v_cvt_f32_f16_sdwa v188, v154 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v191, v157 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v193, v159 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v194, v160 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v172, v22, v172
	v_mul_f32_e32 v175, v28, v175
	v_mul_f32_e32 v177, v32, v177
	v_mul_f32_e32 v178, v34, v178
	v_fma_mix_f32 v3, v19, v3, v171 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v5, v23, v5, v173 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v6, v25, v6, v174 op_sel_hi:[0,1,0]
	v_add_f32_e32 v1, 0, v1
	v_add_f32_e32 v2, 0, v2
	v_cvt_f32_f16_sdwa v192, v158 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v195, v161 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v197, v163 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v198, v164 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v176, v30, v176
	v_mul_f32_e32 v179, v36, v179
	v_mul_f32_e32 v181, v40, v181
	v_mul_f32_e32 v182, v42, v182
	v_fma_mix_f32 v4, v21, v4, v172 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v7, v27, v7, v175 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v9, v31, v9, v177 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v10, v33, v10, v178 op_sel_hi:[0,1,0]
	v_add_f32_e32 v3, 0, v3
	v_add_f32_e32 v1, v1, v5
	v_add_f32_e32 v2, v2, v6
	v_cvt_f32_f16_sdwa v196, v162 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v199, v165 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v180, v38, v180
	v_mul_f32_e32 v183, v44, v183
	v_mul_f32_e32 v185, v48, v185
	v_mul_f32_e32 v186, v50, v186
	v_fma_mix_f32 v8, v29, v8, v176 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v35, v11, v179 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v147, v39, v147, v181 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v148, v41, v148, v182 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, 0, v4
	v_add_f32_e32 v3, v3, v7
	v_add_f32_e32 v1, v1, v9
	v_add_f32_e32 v2, v2, v10
	v_cvt_f32_f16_sdwa v200, v166 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v184, v46, v184
	v_mul_f32_e32 v187, v52, v187
	v_mul_f32_e32 v189, v56, v189
	v_mul_f32_e32 v190, v58, v190
	v_fma_mix_f32 v12, v37, v12, v180 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v149, v43, v149, v183 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v151, v47, v151, v185 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v152, v49, v152, v186 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v8
	v_add_f32_e32 v3, v3, v11
	v_add_f32_e32 v1, v1, v147
	v_add_f32_e32 v2, v2, v148
	v_mul_f32_e32 v188, v54, v188
	v_mul_f32_e32 v191, v60, v191
	v_mul_f32_e32 v193, v64, v193
	v_mul_f32_e32 v194, v66, v194
	v_fma_mix_f32 v150, v45, v150, v184 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v153, v51, v153, v187 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v155, v55, v155, v189 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v156, v57, v156, v190 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v12
	v_add_f32_e32 v3, v3, v149
	v_add_f32_e32 v1, v1, v151
	v_add_f32_e32 v2, v2, v152
	v_mul_f32_e32 v192, v62, v192
	v_mul_f32_e32 v195, v68, v195
	v_mul_f32_e32 v197, v72, v197
	v_mul_f32_e32 v198, v74, v198
	v_fma_mix_f32 v154, v53, v154, v188 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v157, v59, v157, v191 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v159, v63, v159, v193 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v160, v65, v160, v194 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v150
	v_add_f32_e32 v3, v3, v153
	v_add_f32_e32 v1, v1, v155
	v_add_f32_e32 v2, v2, v156
	v_mul_f32_e32 v196, v70, v196
	v_mul_f32_e32 v199, v76, v199
	v_fma_mix_f32 v158, v61, v158, v192 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v161, v67, v161, v195 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v163, v71, v163, v197 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v164, v73, v164, v198 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v154
	v_add_f32_e32 v3, v3, v157
	v_add_f32_e32 v1, v1, v159
	v_add_f32_e32 v2, v2, v160
	v_mul_f32_e32 v200, v78, v200
	v_fma_mix_f32 v162, v69, v162, v196 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v165, v75, v165, v199 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v158
	v_add_f32_e32 v3, v3, v161
	v_add_f32_e32 v1, v1, v163
	v_add_f32_e32 v2, v2, v164
	v_fma_mix_f32 v166, v77, v166, v200 op_sel_hi:[0,1,0]
	v_add_f32_e32 v4, v4, v162
	v_add_f32_e32 v3, v3, v165
	v_add_f32_e32 v1, v2, v1
	v_add_f32_e32 v4, v4, v166
	v_add_f32_e32 v1, v3, v1
	v_add_f32_e32 v1, v4, v1
	v_mov_b32_e32 v167, s5
	s_add_i32 s5, s5, 4
	s_addk_i32 s4, 0x80
	s_add_i32 s35, s35, -1
	v_mul_f32_e32 v1, s15, v1
	s_cmp_lg_u32 s35, 0
	buffer_store_dword v1, v167, s[0:3], 0 offen
	v_max_f32_e32 v1, v168, v1
	s_cbranch_scc1 .LBB4_19
.LBB4_20:                               ; %._crit_edge229
                                        ;   in Loop: Header=BB4_6 Depth=1
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v2, v146, v146
	v_max_f32_e32 v1, v2, v1
	v_cndmask_b32_e64 v2, 0, 1, s[20:21]
	v_cmp_ne_u32_e64 s[4:5], 1, v2
	s_andn2_b64 vcc, exec, s[20:21]
	v_mov_b32_e32 v2, 0
	s_cbranch_vccnz .LBB4_28
; %bb.21:                               ; %.lr.ph233.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_cmp_lt_i32 s31, 8
	s_cbranch_scc1 .LBB4_25
; %bb.22:                               ; %.lr.ph233.preheader.new
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s20, s33, -8
	s_mov_b32 s21, 0
	v_mov_b32_e32 v2, 0
	s_mov_b32 s35, 0
.LBB4_23:                               ; %.lr.ph233
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v3, s21
	buffer_load_dword v4, v3, s[0:3], 0 offen
	buffer_load_dword v5, v3, s[0:3], 0 offen offset:4
	buffer_load_dword v6, v3, s[0:3], 0 offen offset:8
	buffer_load_dword v7, v3, s[0:3], 0 offen offset:12
	buffer_load_dword v8, v3, s[0:3], 0 offen offset:16
	buffer_load_dword v9, v3, s[0:3], 0 offen offset:20
	buffer_load_dword v10, v3, s[0:3], 0 offen offset:24
	buffer_load_dword v11, v3, s[0:3], 0 offen offset:28
	s_add_i32 s35, s35, 8
	s_add_i32 s21, s21, 32
	s_cmp_eq_u32 s20, s35
	s_waitcnt vmcnt(7)
	v_sub_f32_e32 v4, v4, v1
	s_waitcnt vmcnt(6)
	v_sub_f32_e32 v5, v5, v1
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	s_waitcnt vmcnt(5)
	v_sub_f32_e32 v6, v6, v1
	v_mul_f32_e32 v5, 0x3fb8aa3b, v5
	v_exp_f32_e32 v4, v4
	s_waitcnt vmcnt(4)
	v_sub_f32_e32 v7, v7, v1
	v_mul_f32_e32 v6, 0x3fb8aa3b, v6
	v_exp_f32_e32 v5, v5
	s_waitcnt vmcnt(3)
	v_sub_f32_e32 v8, v8, v1
	v_mul_f32_e32 v7, 0x3fb8aa3b, v7
	v_exp_f32_e32 v6, v6
	s_waitcnt vmcnt(2)
	v_sub_f32_e32 v9, v9, v1
	v_mul_f32_e32 v8, 0x3fb8aa3b, v8
	v_exp_f32_e32 v7, v7
	s_waitcnt vmcnt(1)
	v_sub_f32_e32 v10, v10, v1
	v_mul_f32_e32 v9, 0x3fb8aa3b, v9
	v_exp_f32_e32 v8, v8
	v_add_f32_e32 v2, v2, v4
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v11, v11, v1
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	v_exp_f32_e32 v9, v9
	v_add_f32_e32 v2, v2, v5
	v_mul_f32_e32 v11, 0x3fb8aa3b, v11
	v_exp_f32_e32 v10, v10
	v_add_f32_e32 v2, v2, v6
	v_exp_f32_e32 v11, v11
	v_add_f32_e32 v2, v2, v7
	v_add_f32_e32 v2, v2, v8
	v_add_f32_e32 v2, v2, v9
	v_add_f32_e32 v2, v2, v10
	v_add_f32_e32 v2, v2, v11
	buffer_store_dword v4, v3, s[0:3], 0 offen
	buffer_store_dword v5, v3, s[0:3], 0 offen offset:4
	buffer_store_dword v6, v3, s[0:3], 0 offen offset:8
	buffer_store_dword v7, v3, s[0:3], 0 offen offset:12
	buffer_store_dword v8, v3, s[0:3], 0 offen offset:16
	buffer_store_dword v9, v3, s[0:3], 0 offen offset:20
	buffer_store_dword v10, v3, s[0:3], 0 offen offset:24
	buffer_store_dword v11, v3, s[0:3], 0 offen offset:28
	s_cbranch_scc0 .LBB4_23
; %bb.24:                               ; %._crit_edge234.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s21, s33, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc0 .LBB4_26
	s_branch .LBB4_28
.LBB4_25:                               ;   in Loop: Header=BB4_6 Depth=1
	s_mov_b32 s20, 0
	v_mov_b32_e32 v2, 0
	s_and_b32 s21, s33, 7
	s_cmp_eq_u32 s21, 0
	s_cbranch_scc1 .LBB4_28
.LBB4_26:                               ; %.lr.ph233.epil.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_lshl_b32 s20, s20, 2
.LBB4_27:                               ; %.lr.ph233.epil
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v3, s20
	buffer_load_dword v4, v3, s[0:3], 0 offen
	s_add_i32 s20, s20, 4
	s_add_i32 s34, s34, -1
	s_cmp_lg_u32 s34, 0
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v4, v4, v1
	v_mul_f32_e32 v4, 0x3fb8aa3b, v4
	v_exp_f32_e32 v4, v4
	v_add_f32_e32 v2, v2, v4
	buffer_store_dword v4, v3, s[0:3], 0 offen
	s_cbranch_scc1 .LBB4_27
.LBB4_28:                               ; %._crit_edge234
                                        ;   in Loop: Header=BB4_6 Depth=1
	v_sub_f32_e32 v3, v146, v1
	v_mul_f32_e32 v3, 0x3fb8aa3b, v3
	v_exp_f32_e32 v3, v3
	v_cmp_lt_f32_e32 vcc, 0, v14
	v_cndmask_b32_e32 v3, 0, v3, vcc
	v_mul_f32_e32 v142, v3, v142
	v_mul_f32_e32 v128, v3, v128
	v_mul_f32_e32 v145, v3, v145
	v_mul_f32_e32 v130, v3, v130
	v_mul_f32_e32 v144, v3, v144
	v_mul_f32_e32 v131, v3, v131
	v_mul_f32_e32 v143, v3, v143
	v_mul_f32_e32 v132, v3, v132
	v_mul_f32_e32 v141, v3, v141
	v_mul_f32_e32 v125, v3, v125
	v_mul_f32_e32 v140, v3, v140
	v_mul_f32_e32 v126, v3, v126
	v_mul_f32_e32 v139, v3, v139
	v_mul_f32_e32 v127, v3, v127
	v_mul_f32_e32 v138, v3, v138
	v_mul_f32_e32 v129, v3, v129
	v_mul_f32_e32 v135, v3, v135
	v_mul_f32_e32 v119, v3, v119
	v_mul_f32_e32 v134, v3, v134
	v_mul_f32_e32 v120, v3, v120
	v_mul_f32_e32 v133, v3, v133
	v_mul_f32_e32 v121, v3, v121
	v_mul_f32_e32 v124, v3, v124
	v_mul_f32_e32 v123, v3, v123
	v_mul_f32_e32 v118, v3, v118
	v_mul_f32_e32 v111, v3, v111
	v_mul_f32_e32 v117, v3, v117
	v_mul_f32_e32 v112, v3, v112
	v_mul_f32_e32 v116, v3, v116
	v_mul_f32_e32 v113, v3, v113
	v_mul_f32_e32 v115, v3, v115
	v_mul_f32_e32 v114, v3, v114
	v_mul_f32_e32 v110, v3, v110
	v_mul_f32_e32 v103, v3, v103
	v_mul_f32_e32 v109, v3, v109
	v_mul_f32_e32 v104, v3, v104
	v_mul_f32_e32 v108, v3, v108
	v_mul_f32_e32 v105, v3, v105
	v_mul_f32_e32 v107, v3, v107
	v_mul_f32_e32 v106, v3, v106
	v_mul_f32_e32 v102, v3, v102
	v_mul_f32_e32 v95, v3, v95
	v_mul_f32_e32 v101, v3, v101
	v_mul_f32_e32 v96, v3, v96
	v_mul_f32_e32 v100, v3, v100
	v_mul_f32_e32 v97, v3, v97
	v_mul_f32_e32 v99, v3, v99
	v_mul_f32_e32 v98, v3, v98
	v_mul_f32_e32 v94, v3, v94
	v_mul_f32_e32 v87, v3, v87
	v_mul_f32_e32 v93, v3, v93
	v_mul_f32_e32 v88, v3, v88
	v_mul_f32_e32 v92, v3, v92
	v_mul_f32_e32 v89, v3, v89
	v_mul_f32_e32 v91, v3, v91
	v_mul_f32_e32 v90, v3, v90
	v_mul_f32_e32 v86, v3, v86
	v_mul_f32_e32 v79, v3, v79
	v_mul_f32_e32 v85, v3, v85
	v_mul_f32_e32 v80, v3, v80
	v_mul_f32_e32 v84, v3, v84
	v_mul_f32_e32 v81, v3, v81
	v_mul_f32_e32 v83, v3, v83
	s_and_b64 vcc, exec, s[4:5]
	v_mul_f32_e32 v82, v3, v82
	s_cbranch_vccnz .LBB4_4
; %bb.29:                               ; %.lr.ph239.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_cmp_lt_i32 s31, 4
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB4_32
; %bb.30:                               ; %.lr.ph239.preheader.new
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s4, s33, -4
	s_mov_b32 s5, 0
	s_mov_b32 s20, 0
	s_movk_i32 s21, 0x2000
.LBB4_31:                               ; %.lr.ph239
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v12, s21
	v_mov_b32_e32 v154, s5
	ds_read_b128 v[4:7], v12
	ds_read_b128 v[8:11], v12 offset:16
	ds_read_b128 v[146:149], v12 offset:32
	ds_read_b128 v[150:153], v12 offset:48
	buffer_load_dword v155, v154, s[0:3], 0 offen
	buffer_load_dword v156, v154, s[0:3], 0 offen offset:4
	buffer_load_dword v157, v154, s[0:3], 0 offen offset:8
	s_nop 0
	buffer_load_dword v154, v154, s[0:3], 0 offen offset:12
	s_add_i32 s20, s20, 4
	s_add_i32 s5, s5, 16
	s_addk_i32 s21, 0x200
	s_cmp_eq_u32 s4, s20
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_fma_mix_f32 v142, v155, v4, v142 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v128, v155, v4, v128 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v145, v155, v5, v145 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v130, v155, v5, v130 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v144, v155, v6, v144 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v131, v155, v6, v131 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v143, v155, v7, v143 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v132, v155, v7, v132 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:64
	s_waitcnt lgkmcnt(3)
	v_fma_mix_f32 v141, v155, v8, v141 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v8, v155, v8, v125 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v125, v155, v9, v140 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v9, v155, v9, v126 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v110, v155, v4, v110 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v103, v155, v4, v103 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v109, v155, v5, v109 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v104, v155, v5, v104 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v108, v155, v6, v108 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v105, v155, v6, v105 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v107, v155, v7, v107 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v106, v155, v7, v106 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:80
	v_fma_mix_f32 v126, v155, v10, v139 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v10, v155, v10, v127 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v127, v155, v11, v138 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v155, v11, v129 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v102, v155, v4, v102 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v95, v155, v4, v95 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v101, v155, v5, v101 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v96, v155, v5, v96 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v100, v155, v6, v100 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v97, v155, v6, v97 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v99, v155, v7, v99 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v98, v155, v7, v98 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:96
	v_fma_mix_f32 v129, v155, v146, v135 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v119, v155, v146, v119 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v134, v155, v147, v134 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v120, v155, v147, v120 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v94, v155, v4, v94 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v87, v155, v4, v87 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v155, v5, v93 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v88, v155, v5, v88 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v155, v6, v92 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v89, v155, v6, v89 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v155, v7, v91 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v90, v155, v7, v90 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:112
	v_fma_mix_f32 v133, v155, v148, v133 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v121, v155, v148, v121 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v124, v155, v149, v124 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v123, v155, v149, v123 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v86, v155, v4, v86 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v79, v155, v4, v79 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v155, v5, v85 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v80, v155, v5, v80 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v155, v6, v84 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v81, v155, v6, v81 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v155, v7, v83 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v82, v155, v7, v82 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:128
	v_fma_mix_f32 v118, v155, v150, v118 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v111, v155, v150, v111 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v117, v155, v151, v117 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v112, v155, v151, v112 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt vmcnt(2) lgkmcnt(0)
	v_fma_mix_f32 v135, v156, v4, v142 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v128, v156, v4, v128 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v138, v156, v5, v145 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v130, v156, v5, v130 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v139, v156, v6, v144 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v131, v156, v6, v131 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v140, v156, v7, v143 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v132, v156, v7, v132 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:144
	v_fma_mix_f32 v116, v155, v152, v116 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v113, v155, v152, v113 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v115, v155, v153, v115 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v114, v155, v153, v114 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v141, v156, v4, v141 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v8, v156, v4, v8 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v125, v156, v5, v125 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v9, v156, v5, v9 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v126, v156, v6, v126 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v10, v156, v6, v10 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v127, v156, v7, v127 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v156, v7, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:160
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v129, v156, v4, v129 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v119, v156, v4, v119 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v134, v156, v5, v134 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v120, v156, v5, v120 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v133, v156, v6, v133 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v121, v156, v6, v121 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v124, v156, v7, v124 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v123, v156, v7, v123 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:176
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v118, v156, v4, v118 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v111, v156, v4, v111 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v117, v156, v5, v117 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v112, v156, v5, v112 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v116, v156, v6, v116 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v113, v156, v6, v113 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v115, v156, v7, v115 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v114, v156, v7, v114 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:192
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v110, v156, v4, v110 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v103, v156, v4, v103 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v109, v156, v5, v109 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v104, v156, v5, v104 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v108, v156, v6, v108 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v105, v156, v6, v105 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v107, v156, v7, v107 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v106, v156, v7, v106 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:208
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v102, v156, v4, v102 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v95, v156, v4, v95 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v101, v156, v5, v101 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v96, v156, v5, v96 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v100, v156, v6, v100 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v97, v156, v6, v97 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v99, v156, v7, v99 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v98, v156, v7, v98 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:224
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v94, v156, v4, v94 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v87, v156, v4, v87 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v156, v5, v93 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v88, v156, v5, v88 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v156, v6, v92 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v89, v156, v6, v89 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v156, v7, v91 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v90, v156, v7, v90 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:240
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v86, v156, v4, v86 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v79, v156, v4, v79 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v156, v5, v85 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v80, v156, v5, v80 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v156, v6, v84 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v81, v156, v6, v81 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v156, v7, v83 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v82, v156, v7, v82 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:256
	s_waitcnt vmcnt(1) lgkmcnt(0)
	v_fma_mix_f32 v135, v157, v4, v135 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v128, v157, v4, v128 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v138, v157, v5, v138 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v130, v157, v5, v130 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v139, v157, v6, v139 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v131, v157, v6, v131 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v140, v157, v7, v140 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v132, v157, v7, v132 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:272
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v141, v157, v4, v141 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v8, v157, v4, v8 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v146, v157, v5, v125 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v9, v157, v5, v9 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v147, v157, v6, v126 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v10, v157, v6, v10 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v148, v157, v7, v127 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v11, v157, v7, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:288
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v149, v157, v4, v129 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v119, v157, v4, v119 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v134, v157, v5, v134 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v120, v157, v5, v120 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v133, v157, v6, v133 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v121, v157, v6, v121 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v124, v157, v7, v124 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v123, v157, v7, v123 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:304
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v118, v157, v4, v118 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v111, v157, v4, v111 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v117, v157, v5, v117 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v112, v157, v5, v112 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v116, v157, v6, v116 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v113, v157, v6, v113 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v115, v157, v7, v115 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v114, v157, v7, v114 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:320
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v110, v157, v4, v110 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v103, v157, v4, v103 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v109, v157, v5, v109 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v104, v157, v5, v104 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v108, v157, v6, v108 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v105, v157, v6, v105 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v107, v157, v7, v107 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v106, v157, v7, v106 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:336
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v102, v157, v4, v102 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v95, v157, v4, v95 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v101, v157, v5, v101 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v96, v157, v5, v96 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v100, v157, v6, v100 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v97, v157, v6, v97 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v99, v157, v7, v99 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v98, v157, v7, v98 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:352
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v94, v157, v4, v94 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v87, v157, v4, v87 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v157, v5, v93 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v88, v157, v5, v88 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v157, v6, v92 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v89, v157, v6, v89 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v157, v7, v91 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v90, v157, v7, v90 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:368
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v86, v157, v4, v86 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v79, v157, v4, v79 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v157, v5, v85 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v80, v157, v5, v80 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v157, v6, v84 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v81, v157, v6, v81 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v157, v7, v83 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v82, v157, v7, v82 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:384
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_mix_f32 v142, v154, v4, v135 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v128, v154, v4, v128 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v145, v154, v5, v138 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v130, v154, v5, v130 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v144, v154, v6, v139 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v131, v154, v6, v131 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v143, v154, v7, v140 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v132, v154, v7, v132 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:400
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v141, v154, v4, v141 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v125, v154, v4, v8 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v140, v154, v5, v146 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v126, v154, v5, v9 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v139, v154, v6, v147 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v127, v154, v6, v10 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v138, v154, v7, v148 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v129, v154, v7, v11 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:416
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v135, v154, v4, v149 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v119, v154, v4, v119 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v134, v154, v5, v134 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v120, v154, v5, v120 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v133, v154, v6, v133 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v121, v154, v6, v121 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v124, v154, v7, v124 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v123, v154, v7, v123 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:432
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v118, v154, v4, v118 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v111, v154, v4, v111 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v117, v154, v5, v117 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v112, v154, v5, v112 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v116, v154, v6, v116 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v113, v154, v6, v113 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v115, v154, v7, v115 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v114, v154, v7, v114 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:448
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v110, v154, v4, v110 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v103, v154, v4, v103 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v109, v154, v5, v109 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v104, v154, v5, v104 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v108, v154, v6, v108 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v105, v154, v6, v105 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v107, v154, v7, v107 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v106, v154, v7, v106 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:464
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v102, v154, v4, v102 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v95, v154, v4, v95 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v101, v154, v5, v101 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v96, v154, v5, v96 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v100, v154, v6, v100 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v97, v154, v6, v97 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v99, v154, v7, v99 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v98, v154, v7, v98 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:480
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v94, v154, v4, v94 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v87, v154, v4, v87 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v154, v5, v93 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v88, v154, v5, v88 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v154, v6, v92 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v89, v154, v6, v89 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v154, v7, v91 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v90, v154, v7, v90 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	ds_read_b128 v[4:7], v12 offset:496
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v86, v154, v4, v86 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v79, v154, v4, v79 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v154, v5, v85 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v80, v154, v5, v80 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v154, v6, v84 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v81, v154, v6, v81 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v154, v7, v83 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v82, v154, v7, v82 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_cbranch_scc0 .LBB4_31
.LBB4_32:                               ; %._crit_edge240.loopexit.unr-lcssa
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_and_b32 s5, s33, 3
	s_cmp_eq_u32 s5, 0
	s_cbranch_scc1 .LBB4_4
; %bb.33:                               ; %.lr.ph239.epil.preheader
                                        ;   in Loop: Header=BB4_6 Depth=1
	s_lshl_b32 s20, s4, 7
	s_addk_i32 s20, 0x2000
	s_lshl_b32 s4, s4, 2
.LBB4_34:                               ; %.lr.ph239.epil
                                        ;   Parent Loop BB4_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mov_b32_e32 v4, s4
	buffer_load_dword v12, v4, s[0:3], 0 offen
	v_mov_b32_e32 v166, s20
	ds_read_b128 v[4:7], v166
	ds_read_b128 v[8:11], v166 offset:16
	ds_read_b128 v[146:149], v166 offset:32
	ds_read_b128 v[150:153], v166 offset:48
	ds_read_b128 v[154:157], v166 offset:64
	ds_read_b128 v[158:161], v166 offset:80
	ds_read_b128 v[162:165], v166 offset:96
	ds_read_b128 v[166:169], v166 offset:112
	s_addk_i32 s20, 0x80
	s_add_i32 s4, s4, 4
	s_add_i32 s5, s5, -1
	s_cmp_lg_u32 s5, 0
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_fma_mix_f32 v142, v12, v4, v142 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v128, v12, v4, v128 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v145, v12, v5, v145 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v130, v12, v5, v130 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v144, v12, v6, v144 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v131, v12, v6, v131 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v143, v12, v7, v143 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v132, v12, v7, v132 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(6)
	v_fma_mix_f32 v141, v12, v8, v141 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v125, v12, v8, v125 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v140, v12, v9, v140 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v126, v12, v9, v126 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v139, v12, v10, v139 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v127, v12, v10, v127 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v138, v12, v11, v138 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v129, v12, v11, v129 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(5)
	v_fma_mix_f32 v135, v12, v146, v135 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v119, v12, v146, v119 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v134, v12, v147, v134 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v120, v12, v147, v120 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v133, v12, v148, v133 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v121, v12, v148, v121 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v124, v12, v149, v124 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v123, v12, v149, v123 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(4)
	v_fma_mix_f32 v118, v12, v150, v118 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v111, v12, v150, v111 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v117, v12, v151, v117 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v112, v12, v151, v112 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v116, v12, v152, v116 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v113, v12, v152, v113 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v115, v12, v153, v115 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v114, v12, v153, v114 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(3)
	v_fma_mix_f32 v110, v12, v154, v110 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v103, v12, v154, v103 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v109, v12, v155, v109 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v104, v12, v155, v104 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v108, v12, v156, v108 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v105, v12, v156, v105 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v107, v12, v157, v107 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v106, v12, v157, v106 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(2)
	v_fma_mix_f32 v102, v12, v158, v102 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v95, v12, v158, v95 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v101, v12, v159, v101 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v96, v12, v159, v96 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v100, v12, v160, v100 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v97, v12, v160, v97 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v99, v12, v161, v99 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v98, v12, v161, v98 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(1)
	v_fma_mix_f32 v94, v12, v162, v94 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v87, v12, v162, v87 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v93, v12, v163, v93 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v88, v12, v163, v88 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v92, v12, v164, v92 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v89, v12, v164, v89 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v91, v12, v165, v91 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v90, v12, v165, v90 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_waitcnt lgkmcnt(0)
	v_fma_mix_f32 v86, v12, v166, v86 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v79, v12, v166, v79 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v85, v12, v167, v85 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v80, v12, v167, v80 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v84, v12, v168, v84 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v81, v12, v168, v81 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	v_fma_mix_f32 v83, v12, v169, v83 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v82, v12, v169, v82 op_sel:[0,1,0] op_sel_hi:[0,1,0]
	s_cbranch_scc1 .LBB4_34
	s_branch .LBB4_4
.LBB4_35:                               ; %._crit_edge244
	v_cmp_lt_f32_e32 vcc, 0, v14
	s_and_b64 s[4:5], s[8:9], vcc
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_cbranch_execz .LBB4_37
; %bb.36:                               ; %.loopexit.loopexit
	v_div_scale_f32 v0, s[4:5], v14, v14, 1.0
	v_div_scale_f32 v1, vcc, 1.0, v14, 1.0
	s_lshl_b64 s[4:5], s[10:11], 1
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	v_rcp_f32_e32 v2, v0
	v_fma_f32 v3, -v0, v2, 1.0
	v_fmac_f32_e32 v2, v3, v2
	v_mul_f32_e32 v3, v1, v2
	v_fma_f32 v4, -v0, v3, v1
	v_fmac_f32_e32 v3, v4, v2
	v_fma_f32 v0, -v0, v3, v1
	v_div_fmas_f32 v2, v0, v2, v3
	v_mad_i64_i32 v[0:1], s[6:7], s14, v13, 0
	v_mov_b32_e32 v3, s5
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_add_co_u32_e32 v12, vcc, s4, v0
	v_addc_co_u32_e32 v13, vcc, v3, v1, vcc
	v_div_fixup_f32 v14, v2, v14, 1.0
	v_fma_mixlo_f16 v0, v14, v142, 0
	v_fma_mixlo_f16 v1, v14, v145, 0
	v_fma_mixlo_f16 v2, v14, v144, 0
	v_fma_mixlo_f16 v3, v14, v143, 0
	v_fma_mixlo_f16 v4, v14, v141, 0
	v_fma_mixlo_f16 v5, v14, v140, 0
	v_fma_mixlo_f16 v6, v14, v139, 0
	v_fma_mixlo_f16 v7, v14, v138, 0
	v_fma_mixhi_f16 v3, v14, v132, 0
	v_fma_mixhi_f16 v2, v14, v131, 0
	v_fma_mixhi_f16 v1, v14, v130, 0
	v_fma_mixhi_f16 v0, v14, v128, 0
	v_fma_mixhi_f16 v7, v14, v129, 0
	v_fma_mixhi_f16 v6, v14, v127, 0
	v_fma_mixhi_f16 v5, v14, v126, 0
	v_fma_mixhi_f16 v4, v14, v125, 0
	global_store_dwordx4 v[12:13], v[0:3], off
	global_store_dwordx4 v[12:13], v[4:7], off offset:16
	v_fma_mixlo_f16 v0, v14, v118, 0
	v_fma_mixlo_f16 v1, v14, v117, 0
	v_fma_mixlo_f16 v2, v14, v116, 0
	v_fma_mixlo_f16 v3, v14, v115, 0
	v_fma_mixhi_f16 v3, v14, v114, 0
	v_fma_mixhi_f16 v2, v14, v113, 0
	v_fma_mixhi_f16 v1, v14, v112, 0
	v_fma_mixhi_f16 v0, v14, v111, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:48
	v_fma_mixlo_f16 v8, v14, v135, 0
	v_fma_mixlo_f16 v0, v14, v110, 0
	v_fma_mixlo_f16 v1, v14, v109, 0
	v_fma_mixlo_f16 v2, v14, v108, 0
	v_fma_mixlo_f16 v3, v14, v107, 0
	v_fma_mixhi_f16 v3, v14, v106, 0
	v_fma_mixhi_f16 v2, v14, v105, 0
	v_fma_mixhi_f16 v1, v14, v104, 0
	v_fma_mixhi_f16 v0, v14, v103, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:64
	v_fma_mixlo_f16 v9, v14, v134, 0
	v_fma_mixlo_f16 v0, v14, v102, 0
	v_fma_mixlo_f16 v1, v14, v101, 0
	v_fma_mixlo_f16 v2, v14, v100, 0
	v_fma_mixlo_f16 v3, v14, v99, 0
	v_fma_mixhi_f16 v3, v14, v98, 0
	v_fma_mixhi_f16 v2, v14, v97, 0
	v_fma_mixhi_f16 v1, v14, v96, 0
	v_fma_mixhi_f16 v0, v14, v95, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:80
	v_fma_mixlo_f16 v10, v14, v133, 0
	v_fma_mixlo_f16 v0, v14, v94, 0
	v_fma_mixlo_f16 v1, v14, v93, 0
	v_fma_mixlo_f16 v2, v14, v92, 0
	v_fma_mixlo_f16 v3, v14, v91, 0
	v_fma_mixhi_f16 v3, v14, v90, 0
	v_fma_mixhi_f16 v2, v14, v89, 0
	v_fma_mixhi_f16 v1, v14, v88, 0
	v_fma_mixhi_f16 v0, v14, v87, 0
	v_fma_mixlo_f16 v11, v14, v124, 0
	global_store_dwordx4 v[12:13], v[0:3], off offset:96
	v_fma_mixhi_f16 v11, v14, v123, 0
	v_fma_mixlo_f16 v0, v14, v86, 0
	v_fma_mixlo_f16 v1, v14, v85, 0
	v_fma_mixlo_f16 v2, v14, v84, 0
	v_fma_mixlo_f16 v3, v14, v83, 0
	v_fma_mixhi_f16 v10, v14, v121, 0
	v_fma_mixhi_f16 v9, v14, v120, 0
	v_fma_mixhi_f16 v8, v14, v119, 0
	v_fma_mixhi_f16 v3, v14, v82, 0
	v_fma_mixhi_f16 v2, v14, v81, 0
	v_fma_mixhi_f16 v1, v14, v80, 0
	v_fma_mixhi_f16 v0, v14, v79, 0
	global_store_dwordx4 v[12:13], v[8:11], off offset:32
	global_store_dwordx4 v[12:13], v[0:3], off offset:112
.LBB4_37:                               ; %.loopexit
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
		.amdhsa_group_segment_fixed_size 16384
		.amdhsa_private_segment_fixed_size 272
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
		.amdhsa_next_free_vgpr 201
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
	.section	.text._Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif,"axG",@progbits,_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif,comdat
.Lfunc_end4:
	.size	_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif, .Lfunc_end4-_Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
                                        ; -- End function
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.num_vgpr, 201
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.num_agpr, 0
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.numbered_sgpr, 36
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.private_seg_size, 272
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.uses_vcc, 1
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.uses_flat_scratch, 0
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.has_dyn_sized_stack, 0
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.has_recursion, 0
	.set _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14784
; TotalNumSgprs: 40
; NumVgprs: 201
; ScratchSize: 272
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 16384 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 50
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 201
; Occupancy: 1
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
	.type	__hip_cuid_4dba2ec2167cc3d9,@object ; @__hip_cuid_4dba2ec2167cc3d9
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_4dba2ec2167cc3d9
__hip_cuid_4dba2ec2167cc3d9:
	.byte	0                               ; 0x0
	.size	__hip_cuid_4dba2ec2167cc3d9, 1

	.ident	"Ubuntu clang version 21.1.8 (6ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_4dba2ec2167cc3d9
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
      - .actual_access:  read_only
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 0
    .sgpr_count:     10
    .sgpr_spill_count: 0
    .symbol:         _Z4kernILi0EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     0
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
      - .actual_access:  read_only
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
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 0
    .sgpr_count:     10
    .sgpr_spill_count: 0
    .symbol:         _Z4kernILi1EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     0
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
      - .actual_access:  read_only
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
    .group_segment_fixed_size: 16384
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z4kernILi2EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     17
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
    .group_segment_fixed_size: 16384
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 272
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         _Z4kernILi3EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     201
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
    .group_segment_fixed_size: 16384
    .kernarg_segment_align: 8
    .kernarg_segment_size: 56
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif
    .private_segment_fixed_size: 272
    .sgpr_count:     40
    .sgpr_spill_count: 0
    .symbol:         _Z4kernILi4EEvPK6__halfS2_S2_PS0_iiiiif.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     201
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
