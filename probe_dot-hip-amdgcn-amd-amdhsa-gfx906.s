	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.amdhsa_code_object_version 6
	.text
	.protected	_Z10k_dot2_f16PK6__halfS1_Pfii ; -- Begin function _Z10k_dot2_f16PK6__halfS1_Pfii
	.globl	_Z10k_dot2_f16PK6__halfS1_Pfii
	.p2align	8
	.type	_Z10k_dot2_f16PK6__halfS1_Pfii,@function
_Z10k_dot2_f16PK6__halfS1_Pfii:         ; @_Z10k_dot2_f16PK6__halfS1_Pfii
; %bb.0:
	s_load_dword s0, s[4:5], 0x2c
	s_load_dwordx2 s[8:9], s[4:5], 0x18
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s6, s6, s0
	v_add_u32_e32 v0, s6, v0
	v_cmp_gt_i32_e32 vcc, s9, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_9
; %bb.1:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x10
	v_mad_i64_i32 v[1:2], s[4:5], v0, s8, 0
	s_lshr_b32 s4, s8, 31
	s_add_i32 s4, s8, s4
	s_ashr_i32 s10, s4, 1
	v_lshlrev_b64 v[2:3], 1, v[1:2]
	s_cmp_lt_i32 s8, 8
	v_ashrrev_i32_e32 v1, 31, v0
	s_cbranch_scc1 .LBB0_5
; %bb.2:                                ; %.lr.ph.preheader
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s3
	v_add_co_u32_e32 v8, vcc, s2, v2
	v_addc_co_u32_e32 v9, vcc, v4, v3, vcc
	v_mov_b32_e32 v4, 0
	s_mov_b32 s4, 0
	s_mov_b64 s[8:9], 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
.LBB0_3:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_add_u32 s16, s0, s8
	s_addc_u32 s17, s1, s9
	s_load_dwordx4 s[12:15], s[16:17], 0x0
	s_mov_b32 s5, s4
	s_add_i32 s4, s4, 4
	v_add_co_u32_e32 v10, vcc, s8, v8
	s_add_u32 s8, s8, 16
	v_mov_b32_e32 v11, s9
	s_addc_u32 s9, s9, 0
	s_add_i32 s5, s5, 8
	v_addc_co_u32_e32 v11, vcc, v9, v11, vcc
	s_cmp_gt_i32 s5, s10
	global_load_dwordx4 v[10:13], v[10:11], off
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v14, s12
	v_mov_b32_e32 v15, s13
	v_mov_b32_e32 v16, s14
	v_mov_b32_e32 v17, s15
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	v_dot2_f32_f16 v4, v14, v10, v4
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v5, v15, v11, v5
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v6, v16, v12, v6
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v7, v17, v13, v7
	;;#ASMEND
	s_cbranch_scc0 .LBB0_3
; %bb.4:                                ; %.preheader
	s_cmp_ge_i32 s4, s10
	s_cbranch_scc0 .LBB0_6
	s_branch .LBB0_8
.LBB0_5:
	s_mov_b32 s4, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	s_cmp_ge_i32 s4, s10
	s_cbranch_scc1 .LBB0_8
.LBB0_6:                                ; %.lr.ph75.preheader
	s_mov_b32 s5, 0
	s_lshl_b64 s[8:9], s[4:5], 2
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s0, s8
	s_addc_u32 s1, s1, s9
	s_add_u32 s2, s2, s8
	s_addc_u32 s3, s3, s9
	v_mov_b32_e32 v8, s3
	v_add_co_u32_e32 v2, vcc, s2, v2
	v_addc_co_u32_e32 v3, vcc, v8, v3, vcc
.LBB0_7:                                ; %.lr.ph75
                                        ; =>This Inner Loop Header: Depth=1
	s_load_dword s2, s[0:1], 0x0
	s_add_i32 s4, s4, 1
	s_add_u32 s0, s0, 4
	global_load_dword v8, v[2:3], off
	v_add_co_u32_e32 v2, vcc, 4, v2
	s_addc_u32 s1, s1, 0
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_cmp_lt_i32 s4, s10
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v9, s2
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	v_dot2_f32_f16 v4, v9, v8, v4
	;;#ASMEND
	s_cbranch_scc1 .LBB0_7
.LBB0_8:                                ; %._crit_edge
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_f32_e32 v2, v5, v4
	v_add_f32_e32 v2, v6, v2
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s7
	v_add_co_u32_e32 v0, vcc, s6, v0
	v_add_f32_e32 v2, v7, v2
	v_addc_co_u32_e32 v1, vcc, v3, v1, vcc
	global_store_dword v[0:1], v2, off
.LBB0_9:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z10k_dot2_f16PK6__halfS1_Pfii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 288
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
		.amdhsa_next_free_vgpr 18
		.amdhsa_next_free_sgpr 18
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
	.text
.Lfunc_end0:
	.size	_Z10k_dot2_f16PK6__halfS1_Pfii, .Lfunc_end0-_Z10k_dot2_f16PK6__halfS1_Pfii
                                        ; -- End function
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.num_vgpr, 18
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.num_agpr, 0
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.numbered_sgpr, 18
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.private_seg_size, 0
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.uses_vcc, 1
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.uses_flat_scratch, 0
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.has_dyn_sized_stack, 0
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.has_recursion, 0
	.set _Z10k_dot2_f16PK6__halfS1_Pfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 456
; TotalNumSgprs: 22
; NumVgprs: 18
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 22
; NumVGPRsForWavesPerEU: 18
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z9k_fma_f16PK6__halfS1_Pfii ; -- Begin function _Z9k_fma_f16PK6__halfS1_Pfii
	.globl	_Z9k_fma_f16PK6__halfS1_Pfii
	.p2align	8
	.type	_Z9k_fma_f16PK6__halfS1_Pfii,@function
_Z9k_fma_f16PK6__halfS1_Pfii:           ; @_Z9k_fma_f16PK6__halfS1_Pfii
; %bb.0:
	s_load_dword s0, s[4:5], 0x2c
	s_load_dwordx2 s[8:9], s[4:5], 0x18
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s6, s6, s0
	v_add_u32_e32 v0, s6, v0
	v_cmp_gt_i32_e32 vcc, s9, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_6
; %bb.1:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x10
	v_ashrrev_i32_e32 v1, 31, v0
	s_cmp_lt_i32 s8, 2
	v_mov_b32_e32 v2, 0
	s_cbranch_scc1 .LBB1_5
; %bb.2:                                ; %.lr.ph.preheader
	v_mad_i64_i32 v[2:3], s[4:5], v0, s8, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s3
	v_mov_b32_e32 v5, 0
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_add_co_u32_e32 v2, vcc, s2, v2
	s_lshr_b32 s2, s8, 31
	s_add_i32 s2, s8, s2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	s_ashr_i32 s2, s2, 1
	v_mov_b32_e32 v4, 0
.LBB1_3:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	global_load_dword v6, v[2:3], off
	s_load_dword s3, s[0:1], 0x0
	s_add_i32 s2, s2, -1
	s_add_u32 s0, s0, 4
	v_add_co_u32_e32 v2, vcc, 4, v2
	s_addc_u32 s1, s1, 0
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_cmp_eq_u32 s2, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_mix_f32 v4, s3, v6, v4 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v5, s3, v6, v5 op_sel:[1,1,0] op_sel_hi:[1,1,0]
	s_cbranch_scc0 .LBB1_3
; %bb.4:                                ; %._crit_edge.loopexit
	v_add_f32_e32 v2, v5, v4
.LBB1_5:                                ; %Flow
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s7
	v_add_co_u32_e32 v0, vcc, s6, v0
	v_addc_co_u32_e32 v1, vcc, v3, v1, vcc
	global_store_dword v[0:1], v2, off
.LBB1_6:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z9k_fma_f16PK6__halfS1_Pfii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 288
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
		.amdhsa_next_free_vgpr 7
		.amdhsa_next_free_sgpr 10
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
	.text
.Lfunc_end1:
	.size	_Z9k_fma_f16PK6__halfS1_Pfii, .Lfunc_end1-_Z9k_fma_f16PK6__halfS1_Pfii
                                        ; -- End function
	.set _Z9k_fma_f16PK6__halfS1_Pfii.num_vgpr, 7
	.set _Z9k_fma_f16PK6__halfS1_Pfii.num_agpr, 0
	.set _Z9k_fma_f16PK6__halfS1_Pfii.numbered_sgpr, 10
	.set _Z9k_fma_f16PK6__halfS1_Pfii.private_seg_size, 0
	.set _Z9k_fma_f16PK6__halfS1_Pfii.uses_vcc, 1
	.set _Z9k_fma_f16PK6__halfS1_Pfii.uses_flat_scratch, 0
	.set _Z9k_fma_f16PK6__halfS1_Pfii.has_dyn_sized_stack, 0
	.set _Z9k_fma_f16PK6__halfS1_Pfii.has_recursion, 0
	.set _Z9k_fma_f16PK6__halfS1_Pfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 236
; TotalNumSgprs: 14
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 7
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z9k_dot4_i8PKiS0_Piii  ; -- Begin function _Z9k_dot4_i8PKiS0_Piii
	.globl	_Z9k_dot4_i8PKiS0_Piii
	.p2align	8
	.type	_Z9k_dot4_i8PKiS0_Piii,@function
_Z9k_dot4_i8PKiS0_Piii:                 ; @_Z9k_dot4_i8PKiS0_Piii
; %bb.0:
	s_load_dword s0, s[4:5], 0x2c
	s_load_dwordx2 s[8:9], s[4:5], 0x18
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	s_mul_i32 s6, s6, s0
	v_add_u32_e32 v0, s6, v0
	v_cmp_gt_i32_e32 vcc, s9, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_6
; %bb.1:                                ; %.preheader
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x10
	s_cmp_lt_i32 s8, 1
	v_ashrrev_i32_e32 v1, 31, v0
	s_cbranch_scc1 .LBB2_4
; %bb.2:                                ; %.lr.ph
	v_mad_u64_u32 v[2:3], s[4:5], v0, s8, 0
	v_mad_u64_u32 v[3:4], s[4:5], v1, s8, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s3
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_add_co_u32_e32 v2, vcc, s2, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	v_mov_b32_e32 v4, 0
.LBB2_3:                                ; =>This Inner Loop Header: Depth=1
	s_load_dword s2, s[0:1], 0x0
	s_add_i32 s8, s8, -1
	s_add_u32 s0, s0, 4
	global_load_dword v5, v[2:3], off
	v_add_co_u32_e32 v2, vcc, 4, v2
	s_addc_u32 s1, s1, 0
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	s_cmp_eq_u32 s8, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v6, s2
	s_waitcnt vmcnt(0)
	;;#ASMSTART
	v_dot4_i32_i8 v4, v6, v5, v4
	;;#ASMEND
	s_cbranch_scc0 .LBB2_3
	s_branch .LBB2_5
.LBB2_4:
	v_mov_b32_e32 v4, 0
.LBB2_5:                                ; %Flow39
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s7
	v_add_co_u32_e32 v0, vcc, s6, v0
	v_addc_co_u32_e32 v1, vcc, v2, v1, vcc
	global_store_dword v[0:1], v4, off
.LBB2_6:
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z9k_dot4_i8PKiS0_Piii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 288
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
		.amdhsa_next_free_vgpr 7
		.amdhsa_next_free_sgpr 10
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
	.text
.Lfunc_end2:
	.size	_Z9k_dot4_i8PKiS0_Piii, .Lfunc_end2-_Z9k_dot4_i8PKiS0_Piii
                                        ; -- End function
	.set _Z9k_dot4_i8PKiS0_Piii.num_vgpr, 7
	.set _Z9k_dot4_i8PKiS0_Piii.num_agpr, 0
	.set _Z9k_dot4_i8PKiS0_Piii.numbered_sgpr, 10
	.set _Z9k_dot4_i8PKiS0_Piii.private_seg_size, 0
	.set _Z9k_dot4_i8PKiS0_Piii.uses_vcc, 1
	.set _Z9k_dot4_i8PKiS0_Piii.uses_flat_scratch, 0
	.set _Z9k_dot4_i8PKiS0_Piii.has_dyn_sized_stack, 0
	.set _Z9k_dot4_i8PKiS0_Piii.has_recursion, 0
	.set _Z9k_dot4_i8PKiS0_Piii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 228
; TotalNumSgprs: 14
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 7
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z12bench_raw_i8PKiPii  ; -- Begin function _Z12bench_raw_i8PKiPii
	.globl	_Z12bench_raw_i8PKiPii
	.p2align	8
	.type	_Z12bench_raw_i8PKiPii,@function
_Z12bench_raw_i8PKiPii:                 ; @_Z12bench_raw_i8PKiPii
; %bb.0:                                ; %.preheader
	s_load_dword s6, s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s6, 1
	s_cbranch_scc1 .LBB3_5
; %bb.1:                                ; %.lr.ph.preheader
	v_and_b32_e32 v1, 63, v0
	v_lshlrev_b32_e32 v6, 2, v1
	v_add_u32_e32 v1, 1, v0
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	v_and_b32_e32 v1, 63, v1
	v_lshlrev_b32_e32 v7, 2, v1
	v_add_u32_e32 v1, 2, v0
	v_and_b32_e32 v1, 63, v1
	v_lshlrev_b32_e32 v8, 2, v1
	v_add_u32_e32 v1, 3, v0
	v_and_b32_e32 v1, 63, v1
	v_lshlrev_b32_e32 v9, 2, v1
	s_waitcnt lgkmcnt(0)
	global_load_dword v1, v6, s[0:1]
	global_load_dword v2, v6, s[0:1] offset:256
	global_load_dword v3, v7, s[0:1] offset:256
	global_load_dword v4, v8, s[0:1] offset:256
	global_load_dword v5, v9, s[0:1] offset:256
	v_mov_b32_e32 v6, 0
	s_mov_b32 s0, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v13, 0
.LBB3_2:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_and_b32 s1, s0, 3
	s_cmp_eq_u32 s1, 1
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 2
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e32 v14, v2, v3, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 3
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e32 v14, v14, v4, vcc
	s_cselect_b64 vcc, -1, 0
	s_add_i32 s4, s0, 1
	s_and_b32 s5, s4, 3
	s_cmp_eq_u32 s5, 1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e32 v14, v14, v5, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s5, 2
	;;#ASMSTART
	v_dot4_i32_i8 v6, v1, v14, v6
	;;#ASMEND
	;;#ASMSTART
	v_dot4_i32_i8 v7, v1, v14, v7
	;;#ASMEND
	v_cndmask_b32_e32 v14, v2, v3, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s5, 3
	v_cndmask_b32_e32 v14, v14, v4, vcc
	s_cselect_b64 vcc, -1, 0
	s_xor_b32 s1, s1, 2
	s_cmp_eq_u32 s1, 1
	v_cndmask_b32_e32 v14, v14, v5, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 2
	;;#ASMSTART
	v_dot4_i32_i8 v13, v1, v14, v13
	;;#ASMEND
	;;#ASMSTART
	v_dot4_i32_i8 v10, v1, v14, v10
	;;#ASMEND
	v_cndmask_b32_e32 v14, v2, v3, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 3
	v_cndmask_b32_e32 v14, v14, v4, vcc
	s_cselect_b64 vcc, -1, 0
	s_add_i32 s1, s0, -1
	s_and_b32 s1, s1, 3
	s_cmp_eq_u32 s1, 1
	v_cndmask_b32_e32 v14, v14, v5, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 2
	;;#ASMSTART
	v_dot4_i32_i8 v12, v1, v14, v12
	;;#ASMEND
	;;#ASMSTART
	v_dot4_i32_i8 v9, v1, v14, v9
	;;#ASMEND
	v_cndmask_b32_e32 v14, v2, v3, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s1, 3
	s_mov_b32 s0, s4
	v_cndmask_b32_e32 v14, v14, v4, vcc
	s_cselect_b64 vcc, -1, 0
	s_cmp_eq_u32 s6, s4
	v_cndmask_b32_e32 v14, v14, v5, vcc
	;;#ASMSTART
	v_dot4_i32_i8 v11, v1, v14, v11
	;;#ASMEND
	;;#ASMSTART
	v_dot4_i32_i8 v8, v1, v14, v8
	;;#ASMEND
	s_cbranch_scc0 .LBB3_2
; %bb.3:                                ; %._crit_edge.loopexit
	v_add_u32_e32 v1, v12, v13
	v_add3_u32 v1, v1, v11, v10
	v_add3_u32 v1, v1, v9, v8
	v_add3_u32 v1, v1, v7, v6
	s_movk_i32 s0, 0xcfc7
	v_cmp_eq_u32_e32 vcc, s0, v1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB3_5
; %bb.4:
	v_lshlrev_b32_e32 v0, 2, v0
	v_mov_b32_e32 v1, 0xffffcfc7
	global_store_dword v0, v1, s[2:3]
.LBB3_5:                                ; %.critedge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z12bench_raw_i8PKiPii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 20
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
		.amdhsa_next_free_vgpr 15
		.amdhsa_next_free_sgpr 7
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
	.text
.Lfunc_end3:
	.size	_Z12bench_raw_i8PKiPii, .Lfunc_end3-_Z12bench_raw_i8PKiPii
                                        ; -- End function
	.set _Z12bench_raw_i8PKiPii.num_vgpr, 15
	.set _Z12bench_raw_i8PKiPii.num_agpr, 0
	.set _Z12bench_raw_i8PKiPii.numbered_sgpr, 7
	.set _Z12bench_raw_i8PKiPii.private_seg_size, 0
	.set _Z12bench_raw_i8PKiPii.uses_vcc, 1
	.set _Z12bench_raw_i8PKiPii.uses_flat_scratch, 0
	.set _Z12bench_raw_i8PKiPii.has_dyn_sized_stack, 0
	.set _Z12bench_raw_i8PKiPii.has_recursion, 0
	.set _Z12bench_raw_i8PKiPii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 476
; TotalNumSgprs: 11
; NumVgprs: 15
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 15
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z9bench_rawILi0EEvPK7__half2Pfi,"axG",@progbits,_Z9bench_rawILi0EEvPK7__half2Pfi,comdat
	.protected	_Z9bench_rawILi0EEvPK7__half2Pfi ; -- Begin function _Z9bench_rawILi0EEvPK7__half2Pfi
	.globl	_Z9bench_rawILi0EEvPK7__half2Pfi
	.p2align	8
	.type	_Z9bench_rawILi0EEvPK7__half2Pfi,@function
_Z9bench_rawILi0EEvPK7__half2Pfi:       ; @_Z9bench_rawILi0EEvPK7__half2Pfi
; %bb.0:                                ; %.preheader
	v_add_u32_e32 v4, 1, v0
	v_and_b32_e32 v4, 63, v4
	s_load_dwordx4 s[0:3], s[6:7], 0x0
	s_load_dword s8, s[6:7], 0x10
	v_lshlrev_b32_e32 v8, 2, v4
	v_add_u32_e32 v4, 2, v0
	v_and_b32_e32 v4, 63, v4
	v_and_b32_e32 v3, 63, v0
	v_lshlrev_b32_e32 v9, 2, v4
	v_add_u32_e32 v4, 3, v0
	v_lshlrev_b32_e32 v3, 2, v3
	v_and_b32_e32 v4, 63, v4
	v_lshlrev_b32_e32 v10, 2, v4
	s_waitcnt lgkmcnt(0)
	global_load_dword v4, v3, s[0:1] offset:256
	global_load_dword v5, v8, s[0:1] offset:256
	global_load_dword v6, v9, s[0:1] offset:256
	global_load_dword v7, v10, s[0:1] offset:256
	s_load_dwordx2 s[6:7], s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s4, s6, 16
	s_mul_i32 s4, s4, s7
	v_mul_lo_u32 v8, s4, v0
	s_cmp_lt_i32 s8, 1
	v_mad_u32_u24 v1, v1, s7, v8
	v_add_lshl_u32 v1, v1, v2, 4
	s_waitcnt vmcnt(0)
	ds_write_b128 v1, v[4:7]
	s_cbranch_scc1 .LBB4_5
; %bb.1:                                ; %.lr.ph
	v_mov_b32_e32 v4, s1
	v_add_co_u32_e32 v2, vcc, s0, v3
	v_addc_co_u32_e32 v3, vcc, 0, v4, vcc
	global_load_dword v6, v[2:3], off
	v_mov_b32_e32 v2, 0
	s_mov_b32 s0, 0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	s_waitcnt vmcnt(0)
	v_cvt_f32_f16_e32 v10, v6
	v_cvt_f32_f16_sdwa v11, v6 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mov_b32_e32 v6, 0
.LBB4_2:                                ; =>This Inner Loop Header: Depth=1
	s_and_b32 s1, s0, 3
	s_add_i32 s4, s0, 1
	s_add_i32 s0, s0, -1
	v_lshl_add_u32 v12, s1, 2, v1
	s_and_b32 s5, s4, 3
	s_xor_b32 s1, s1, 2
	s_and_b32 s6, s0, 3
	v_lshl_add_u32 v13, s5, 2, v1
	v_lshl_add_u32 v14, s1, 2, v1
	v_lshl_add_u32 v15, s6, 2, v1
	ds_read_b32 v12, v12
	ds_read_b32 v13, v13
	ds_read_b32 v14, v14
	ds_read_b32 v15, v15
	s_mov_b32 s0, s4
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v16, v12 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v17, v13 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v18, v14 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v19, v15 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v16, v11, v16
	v_fma_mix_f32 v12, v10, v12, v16 op_sel_hi:[0,1,0]
	v_mul_f32_e32 v16, v11, v17
	v_mul_f32_e32 v17, v11, v18
	v_mul_f32_e32 v18, v11, v19
	v_fma_mix_f32 v13, v10, v13, v16 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v14, v10, v14, v17 op_sel_hi:[0,1,0]
	v_fma_mix_f32 v15, v10, v15, v18 op_sel_hi:[0,1,0]
	s_cmp_eq_u32 s8, s4
	v_add_f32_e32 v2, v2, v12
	v_add_f32_e32 v9, v9, v12
	v_add_f32_e32 v3, v3, v13
	v_add_f32_e32 v4, v4, v14
	v_add_f32_e32 v5, v5, v15
	v_add_f32_e32 v6, v6, v13
	v_add_f32_e32 v7, v7, v14
	v_add_f32_e32 v8, v8, v15
	s_cbranch_scc0 .LBB4_2
; %bb.3:                                ; %._crit_edge.loopexit
	v_add_f32_e32 v1, v3, v2
	v_add_f32_e32 v1, v4, v1
	v_add_f32_e32 v1, v5, v1
	v_add_f32_e32 v1, v6, v1
	v_add_f32_e32 v1, v7, v1
	v_add_f32_e32 v1, v8, v1
	v_add_f32_e32 v1, v9, v1
	s_mov_b32 s0, 0xc640e400
	v_cmp_eq_f32_e32 vcc, s0, v1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB4_5
; %bb.4:
	v_lshlrev_b32_e32 v0, 2, v0
	v_mov_b32_e32 v1, 0xc640e400
	global_store_dword v0, v1, s[2:3]
.LBB4_5:                                ; %.critedge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z9bench_rawILi0EEvPK7__half2Pfi
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 20
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
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
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 20
		.amdhsa_next_free_sgpr 9
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
	.section	.text._Z9bench_rawILi0EEvPK7__half2Pfi,"axG",@progbits,_Z9bench_rawILi0EEvPK7__half2Pfi,comdat
.Lfunc_end4:
	.size	_Z9bench_rawILi0EEvPK7__half2Pfi, .Lfunc_end4-_Z9bench_rawILi0EEvPK7__half2Pfi
                                        ; -- End function
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.num_vgpr, 20
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.num_agpr, 0
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.numbered_sgpr, 9
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.private_seg_size, 0
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.uses_vcc, 1
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.uses_flat_scratch, 0
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.has_dyn_sized_stack, 0
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.has_recursion, 0
	.set _Z9bench_rawILi0EEvPK7__half2Pfi.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 532
; TotalNumSgprs: 13
; NumVgprs: 20
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 20
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
	.section	.text._Z9bench_rawILi1EEvPK7__half2Pfi,"axG",@progbits,_Z9bench_rawILi1EEvPK7__half2Pfi,comdat
	.protected	_Z9bench_rawILi1EEvPK7__half2Pfi ; -- Begin function _Z9bench_rawILi1EEvPK7__half2Pfi
	.globl	_Z9bench_rawILi1EEvPK7__half2Pfi
	.p2align	8
	.type	_Z9bench_rawILi1EEvPK7__half2Pfi,@function
_Z9bench_rawILi1EEvPK7__half2Pfi:       ; @_Z9bench_rawILi1EEvPK7__half2Pfi
; %bb.0:                                ; %.preheader
	v_add_u32_e32 v4, 1, v0
	v_and_b32_e32 v4, 63, v4
	s_load_dwordx4 s[0:3], s[6:7], 0x0
	s_load_dword s8, s[6:7], 0x10
	v_lshlrev_b32_e32 v8, 2, v4
	v_add_u32_e32 v4, 2, v0
	v_and_b32_e32 v4, 63, v4
	v_and_b32_e32 v3, 63, v0
	v_lshlrev_b32_e32 v9, 2, v4
	v_add_u32_e32 v4, 3, v0
	v_lshlrev_b32_e32 v3, 2, v3
	v_and_b32_e32 v4, 63, v4
	v_lshlrev_b32_e32 v10, 2, v4
	s_waitcnt lgkmcnt(0)
	global_load_dword v4, v3, s[0:1] offset:256
	global_load_dword v5, v8, s[0:1] offset:256
	global_load_dword v6, v9, s[0:1] offset:256
	global_load_dword v7, v10, s[0:1] offset:256
	s_load_dwordx2 s[6:7], s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s4, s6, 16
	s_mul_i32 s4, s4, s7
	v_mul_lo_u32 v8, s4, v0
	s_cmp_lt_i32 s8, 1
	v_mad_u32_u24 v1, v1, s7, v8
	v_add_lshl_u32 v1, v1, v2, 4
	s_waitcnt vmcnt(0)
	ds_write_b128 v1, v[4:7]
	s_cbranch_scc1 .LBB5_5
; %bb.1:                                ; %.lr.ph.preheader
	v_mov_b32_e32 v4, s1
	v_add_co_u32_e32 v2, vcc, s0, v3
	v_addc_co_u32_e32 v3, vcc, 0, v4, vcc
	global_load_dword v3, v[2:3], off
	v_mov_b32_e32 v2, 0
	s_mov_b32 s0, 0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v8, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v10, 0
.LBB5_2:                                ; %.lr.ph
                                        ; =>This Inner Loop Header: Depth=1
	s_and_b32 s1, s0, 3
	s_add_i32 s4, s0, 1
	s_add_i32 s0, s0, -1
	v_lshl_add_u32 v11, s1, 2, v1
	s_and_b32 s5, s4, 3
	s_xor_b32 s1, s1, 2
	s_and_b32 s6, s0, 3
	v_lshl_add_u32 v12, s5, 2, v1
	v_lshl_add_u32 v13, s1, 2, v1
	v_lshl_add_u32 v14, s6, 2, v1
	ds_read_b32 v11, v11
	ds_read_b32 v12, v12
	ds_read_b32 v13, v13
	ds_read_b32 v14, v14
	s_mov_b32 s0, s4
	s_cmp_eq_u32 s8, s4
	s_waitcnt vmcnt(0) lgkmcnt(3)
	;;#ASMSTART
	v_dot2_f32_f16 v2, v3, v11, v2
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v10, v3, v11, v10
	;;#ASMEND
	s_waitcnt lgkmcnt(2)
	;;#ASMSTART
	v_dot2_f32_f16 v4, v3, v12, v4
	;;#ASMEND
	s_waitcnt lgkmcnt(1)
	;;#ASMSTART
	v_dot2_f32_f16 v5, v3, v13, v5
	;;#ASMEND
	s_waitcnt lgkmcnt(0)
	;;#ASMSTART
	v_dot2_f32_f16 v6, v3, v14, v6
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v7, v3, v12, v7
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v8, v3, v13, v8
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v9, v3, v14, v9
	;;#ASMEND
	s_cbranch_scc0 .LBB5_2
; %bb.3:                                ; %._crit_edge.loopexit
	v_add_f32_e32 v1, v4, v2
	v_add_f32_e32 v1, v5, v1
	v_add_f32_e32 v1, v6, v1
	v_add_f32_e32 v1, v7, v1
	v_add_f32_e32 v1, v8, v1
	v_add_f32_e32 v1, v9, v1
	v_add_f32_e32 v1, v10, v1
	s_mov_b32 s0, 0xc640e400
	v_cmp_eq_f32_e32 vcc, s0, v1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB5_5
; %bb.4:
	v_lshlrev_b32_e32 v0, 2, v0
	v_mov_b32_e32 v1, 0xc640e400
	global_store_dword v0, v1, s[2:3]
.LBB5_5:                                ; %.critedge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z9bench_rawILi1EEvPK7__half2Pfi
		.amdhsa_group_segment_fixed_size 4096
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 20
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
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
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 15
		.amdhsa_next_free_sgpr 9
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
	.section	.text._Z9bench_rawILi1EEvPK7__half2Pfi,"axG",@progbits,_Z9bench_rawILi1EEvPK7__half2Pfi,comdat
.Lfunc_end5:
	.size	_Z9bench_rawILi1EEvPK7__half2Pfi, .Lfunc_end5-_Z9bench_rawILi1EEvPK7__half2Pfi
                                        ; -- End function
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.num_vgpr, 15
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.num_agpr, 0
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.numbered_sgpr, 9
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.private_seg_size, 0
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.uses_vcc, 1
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.uses_flat_scratch, 0
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.has_dyn_sized_stack, 0
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.has_recursion, 0
	.set _Z9bench_rawILi1EEvPK7__half2Pfi.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 468
; TotalNumSgprs: 13
; NumVgprs: 15
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 4096 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 3
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 15
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 2
	.section	.text._Z12bench_streamILi0EEvPK6__halfS2_Pfii,"axG",@progbits,_Z12bench_streamILi0EEvPK6__halfS2_Pfii,comdat
	.protected	_Z12bench_streamILi0EEvPK6__halfS2_Pfii ; -- Begin function _Z12bench_streamILi0EEvPK6__halfS2_Pfii
	.globl	_Z12bench_streamILi0EEvPK6__halfS2_Pfii
	.p2align	8
	.type	_Z12bench_streamILi0EEvPK6__halfS2_Pfii,@function
_Z12bench_streamILi0EEvPK6__halfS2_Pfii: ; @_Z12bench_streamILi0EEvPK6__halfS2_Pfii
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x10
	v_and_b32_e32 v6, 63, v0
	v_lshrrev_b32_e32 v4, 6, v0
	v_lshlrev_b32_e32 v1, 4, v6
	s_movk_i32 s8, 0x420
	v_mad_u32_u24 v5, v4, s8, v1
	v_lshl_or_b32 v1, v4, 10, v1
	v_or_b32_e32 v3, 0xfffffe00, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s1
	v_add_co_u32_e32 v1, vcc, s0, v1
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	s_mov_b64 s[0:1], 0
	s_movk_i32 s8, 0x5ff
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v8, v3
.LBB6_1:                                ; =>This Inner Loop Header: Depth=1
	global_load_dwordx4 v[9:12], v[1:2], off
	v_add_co_u32_e32 v1, vcc, 0x2000, v1
	v_add_u32_e32 v8, 0x200, v8
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	v_cmp_lt_u32_e32 vcc, s8, v8
	s_or_b64 s[0:1], vcc, s[0:1]
	s_waitcnt vmcnt(0)
	ds_write_b128 v7, v[9:12]
	v_add_u32_e32 v7, 0x2100, v7
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB6_1
; %bb.2:                                ; %.preheader124
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx2 s[0:1], s[4:5], 0x18
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s1, 1
	s_cbranch_scc1 .LBB6_11
; %bb.3:                                ; %.preheader.preheader
	s_abs_i32 s4, s0
	v_cvt_f32_u32_e32 v1, s4
	s_sub_i32 s0, 0, s4
	v_lshlrev_b32_e32 v6, 4, v6
	v_and_b32_e32 v2, 15, v0
	v_rcp_iflag_f32_e32 v1, v1
	v_lshrrev_b32_e32 v10, 4, v0
	v_mov_b32_e32 v7, s3
	v_mov_b32_e32 v9, 0x8400
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_add_co_u32_e32 v6, vcc, s2, v6
	s_lshl_b32 s5, s1, 4
	v_mul_lo_u32 v8, s0, v1
	s_movk_i32 s0, 0x420
	s_mov_b32 s8, 0
	v_add_u32_e32 v5, 0x8400, v5
	v_mul_hi_u32 v11, v1, v8
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	v_mad_u32_u24 v8, v2, s0, v9
	v_add_u32_e32 v9, v1, v11
	v_mul_u32_u24_e32 v10, 0x420, v10
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v11, 0
.LBB6_4:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_5 Depth 2
                                        ;     Child Loop BB6_7 Depth 2
	s_mov_b64 s[0:1], 0
	v_mov_b32_e32 v12, v4
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v14, v3
.LBB6_5:                                ;   Parent Loop BB6_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v1, v12, v9
	v_mul_lo_u32 v1, v1, s4
	v_sub_u32_e32 v1, v12, v1
	v_subrev_u32_e32 v15, s4, v1
	v_cmp_le_u32_e32 vcc, s4, v1
	v_cndmask_b32_e32 v1, v1, v15, vcc
	v_subrev_u32_e32 v15, s4, v1
	v_cmp_le_u32_e32 vcc, s4, v1
	v_cndmask_b32_e32 v1, v1, v15, vcc
	v_lshlrev_b64 v[15:16], 10, v[1:2]
	v_add_u32_e32 v12, 8, v12
	v_add_co_u32_e32 v15, vcc, v6, v15
	v_addc_co_u32_e32 v16, vcc, v7, v16, vcc
	global_load_dwordx4 v[15:18], v[15:16], off
	v_add_co_u32_e32 v14, vcc, 0x200, v14
	s_xor_b64 s[2:3], vcc, -1
	s_and_b64 s[2:3], exec, s[2:3]
	s_or_b64 s[0:1], s[2:3], s[0:1]
	s_waitcnt vmcnt(0)
	ds_write_b128 v13, v[15:18]
	v_add_u32_e32 v13, 0x2100, v13
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB6_5
; %bb.6:                                ;   in Loop: Header=BB6_4 Depth=1
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v13, 0
	s_mov_b32 s0, -4
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.LBB6_7:                                ;   Parent Loop BB6_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read_b128 v[17:20], v12
	ds_read_b128 v[21:24], v12 offset:16
	ds_read_b128 v[25:28], v12 offset:32
	ds_read_b128 v[29:32], v12 offset:48
	ds_read_b128 v[33:36], v1
	ds_read_b128 v[37:40], v1 offset:16
	ds_read_b128 v[41:44], v1 offset:32
	ds_read_b128 v[45:48], v1 offset:48
	s_waitcnt lgkmcnt(7)
	v_cvt_f32_f16_sdwa v49, v17 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v50, v18 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v51, v19 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v52, v20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(3)
	v_cvt_f32_f16_sdwa v53, v33 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v54, v34 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v55, v35 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v56, v36 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v57, v21 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v58, v22 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v59, v23 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v60, v24 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(2)
	v_cvt_f32_f16_sdwa v61, v37 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v62, v38 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v63, v39 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v64, v40 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v65, v25 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v66, v26 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v67, v27 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v68, v28 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_f16_sdwa v69, v41 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v70, v42 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v71, v43 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v72, v44 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v73, v29 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v74, v30 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v75, v31 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v76, v32 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_f16_sdwa v77, v45 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v78, v46 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v79, v47 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_cvt_f32_f16_sdwa v80, v48 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_1
	v_mul_f32_e32 v49, v49, v53
	v_mul_f32_e32 v50, v50, v54
	v_mul_f32_e32 v51, v51, v55
	v_mul_f32_e32 v52, v52, v56
	v_mul_f32_e32 v53, v57, v61
	v_mul_f32_e32 v54, v58, v62
	v_mul_f32_e32 v55, v59, v63
	v_mul_f32_e32 v56, v60, v64
	v_fma_mix_f32 v17, v17, v33, v49 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v18, v18, v34, v50 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v19, v19, v35, v51 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v20, v20, v36, v52 op_sel_hi:[1,1,0]
	v_mul_f32_e32 v57, v65, v69
	v_mul_f32_e32 v58, v66, v70
	v_mul_f32_e32 v59, v67, v71
	v_mul_f32_e32 v60, v68, v72
	v_fma_mix_f32 v21, v21, v37, v53 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v22, v22, v38, v54 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v23, v23, v39, v55 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v24, v24, v40, v56 op_sel_hi:[1,1,0]
	v_add_f32_e32 v13, v13, v17
	v_add_f32_e32 v14, v14, v18
	v_add_f32_e32 v15, v15, v19
	v_add_f32_e32 v16, v16, v20
	v_mul_f32_e32 v61, v73, v77
	v_mul_f32_e32 v62, v74, v78
	v_mul_f32_e32 v63, v75, v79
	v_mul_f32_e32 v64, v76, v80
	v_fma_mix_f32 v25, v25, v41, v57 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v26, v26, v42, v58 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v27, v27, v43, v59 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v28, v28, v44, v60 op_sel_hi:[1,1,0]
	v_add_f32_e32 v13, v13, v21
	v_add_f32_e32 v14, v14, v22
	v_add_f32_e32 v15, v15, v23
	v_add_f32_e32 v16, v16, v24
	s_add_i32 s0, s0, 16
	v_fma_mix_f32 v29, v29, v45, v61 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v30, v30, v46, v62 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v31, v31, v47, v63 op_sel_hi:[1,1,0]
	v_fma_mix_f32 v32, v32, v48, v64 op_sel_hi:[1,1,0]
	v_add_f32_e32 v13, v13, v25
	v_add_f32_e32 v14, v14, v26
	v_add_f32_e32 v15, v15, v27
	v_add_f32_e32 v16, v16, v28
	v_add_u32_e32 v12, 64, v12
	v_add_u32_e32 v1, 64, v1
	s_cmpk_gt_u32 s0, 0xfb
	v_add_f32_e32 v13, v13, v29
	v_add_f32_e32 v14, v14, v30
	v_add_f32_e32 v15, v15, v31
	v_add_f32_e32 v16, v16, v32
	s_cbranch_scc0 .LBB6_7
; %bb.8:                                ;   in Loop: Header=BB6_4 Depth=1
	v_add_f32_e32 v1, v14, v13
	v_add_f32_e32 v1, v15, v1
	v_add_f32_e32 v1, v16, v1
	s_add_i32 s8, s8, 16
	v_add_f32_e32 v11, v11, v1
	s_cmp_ge_i32 s8, s5
	v_add_u32_e32 v4, 16, v4
	s_barrier
	s_cbranch_scc0 .LBB6_4
; %bb.9:                                ; %._crit_edge.loopexit
	s_mov_b32 s0, 0xc640e400
	v_cmp_eq_f32_e32 vcc, s0, v11
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB6_11
; %bb.10:
	v_lshlrev_b32_e32 v0, 2, v0
	v_mov_b32_e32 v1, 0xc640e400
	global_store_dword v0, v1, s[6:7]
.LBB6_11:                               ; %.critedge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z12bench_streamILi0EEvPK6__halfS2_Pfii
		.amdhsa_group_segment_fixed_size 50688
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
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
		.amdhsa_next_free_vgpr 85
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
	.section	.text._Z12bench_streamILi0EEvPK6__halfS2_Pfii,"axG",@progbits,_Z12bench_streamILi0EEvPK6__halfS2_Pfii,comdat
.Lfunc_end6:
	.size	_Z12bench_streamILi0EEvPK6__halfS2_Pfii, .Lfunc_end6-_Z12bench_streamILi0EEvPK6__halfS2_Pfii
                                        ; -- End function
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.num_vgpr, 81
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.num_agpr, 0
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.numbered_sgpr, 9
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.private_seg_size, 0
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.uses_vcc, 1
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.uses_flat_scratch, 0
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_dyn_sized_stack, 0
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_recursion, 0
	.set _Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 1172
; TotalNumSgprs: 13
; NumVgprs: 81
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 50688 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 85
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.text._Z12bench_streamILi1EEvPK6__halfS2_Pfii,"axG",@progbits,_Z12bench_streamILi1EEvPK6__halfS2_Pfii,comdat
	.protected	_Z12bench_streamILi1EEvPK6__halfS2_Pfii ; -- Begin function _Z12bench_streamILi1EEvPK6__halfS2_Pfii
	.globl	_Z12bench_streamILi1EEvPK6__halfS2_Pfii
	.p2align	8
	.type	_Z12bench_streamILi1EEvPK6__halfS2_Pfii,@function
_Z12bench_streamILi1EEvPK6__halfS2_Pfii: ; @_Z12bench_streamILi1EEvPK6__halfS2_Pfii
; %bb.0:
	s_load_dwordx4 s[0:3], s[4:5], 0x0
	s_load_dwordx2 s[6:7], s[4:5], 0x10
	v_and_b32_e32 v6, 63, v0
	v_lshrrev_b32_e32 v4, 6, v0
	v_lshlrev_b32_e32 v1, 4, v6
	s_movk_i32 s8, 0x420
	v_mad_u32_u24 v5, v4, s8, v1
	v_lshl_or_b32 v1, v4, 10, v1
	v_or_b32_e32 v3, 0xfffffe00, v0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s1
	v_add_co_u32_e32 v1, vcc, s0, v1
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	s_mov_b64 s[0:1], 0
	s_movk_i32 s8, 0x5ff
	v_mov_b32_e32 v7, v5
	v_mov_b32_e32 v8, v3
.LBB7_1:                                ; =>This Inner Loop Header: Depth=1
	global_load_dwordx4 v[9:12], v[1:2], off
	v_add_co_u32_e32 v1, vcc, 0x2000, v1
	v_add_u32_e32 v8, 0x200, v8
	v_addc_co_u32_e32 v2, vcc, 0, v2, vcc
	v_cmp_lt_u32_e32 vcc, s8, v8
	s_or_b64 s[0:1], vcc, s[0:1]
	s_waitcnt vmcnt(0)
	ds_write_b128 v7, v[9:12]
	v_add_u32_e32 v7, 0x2100, v7
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB7_1
; %bb.2:                                ; %.preheader74
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx2 s[0:1], s[4:5], 0x18
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s1, 1
	s_cbranch_scc1 .LBB7_11
; %bb.3:                                ; %.preheader.preheader
	s_abs_i32 s4, s0
	v_cvt_f32_u32_e32 v1, s4
	s_sub_i32 s0, 0, s4
	v_lshlrev_b32_e32 v6, 4, v6
	v_and_b32_e32 v2, 15, v0
	v_rcp_iflag_f32_e32 v1, v1
	v_lshrrev_b32_e32 v8, 4, v0
	v_mov_b32_e32 v7, s3
	v_mov_b32_e32 v10, 0x8400
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_add_co_u32_e32 v6, vcc, s2, v6
	s_lshl_b32 s5, s1, 4
	v_mul_lo_u32 v9, s0, v1
	s_movk_i32 s0, 0x420
	s_mov_b32 s8, 0
	v_add_u32_e32 v5, 0x8400, v5
	v_mul_hi_u32 v9, v1, v9
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	v_mul_u32_u24_e32 v8, 0x420, v8
	v_add_u32_e32 v9, v1, v9
	v_mad_u32_u24 v10, v2, s0, v10
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v11, 0
.LBB7_4:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_5 Depth 2
                                        ;     Child Loop BB7_7 Depth 2
	s_mov_b64 s[0:1], 0
	v_mov_b32_e32 v12, v4
	v_mov_b32_e32 v13, v5
	v_mov_b32_e32 v14, v3
.LBB7_5:                                ;   Parent Loop BB7_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	v_mul_hi_u32 v1, v12, v9
	v_mul_lo_u32 v1, v1, s4
	v_sub_u32_e32 v1, v12, v1
	v_subrev_u32_e32 v15, s4, v1
	v_cmp_le_u32_e32 vcc, s4, v1
	v_cndmask_b32_e32 v1, v1, v15, vcc
	v_subrev_u32_e32 v15, s4, v1
	v_cmp_le_u32_e32 vcc, s4, v1
	v_cndmask_b32_e32 v1, v1, v15, vcc
	v_lshlrev_b64 v[15:16], 10, v[1:2]
	v_add_u32_e32 v12, 8, v12
	v_add_co_u32_e32 v15, vcc, v6, v15
	v_addc_co_u32_e32 v16, vcc, v7, v16, vcc
	global_load_dwordx4 v[15:18], v[15:16], off
	v_add_co_u32_e32 v14, vcc, 0x200, v14
	s_xor_b64 s[2:3], vcc, -1
	s_and_b64 s[2:3], exec, s[2:3]
	s_or_b64 s[0:1], s[2:3], s[0:1]
	s_waitcnt vmcnt(0)
	ds_write_b128 v13, v[15:18]
	v_add_u32_e32 v13, 0x2100, v13
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz .LBB7_5
; %bb.6:                                ;   in Loop: Header=BB7_4 Depth=1
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v13, 0
	s_mov_b32 s0, -4
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v14, 0
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v16, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.LBB7_7:                                ;   Parent Loop BB7_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ds_read2_b32 v[17:18], v12 offset1:1
	ds_read2_b32 v[19:20], v12 offset0:2 offset1:3
	ds_read2_b32 v[21:22], v12 offset0:4 offset1:5
	ds_read2_b32 v[23:24], v12 offset0:6 offset1:7
	ds_read2_b32 v[25:26], v12 offset0:8 offset1:9
	ds_read2_b32 v[27:28], v12 offset0:10 offset1:11
	ds_read2_b32 v[29:30], v12 offset0:12 offset1:13
	ds_read2_b32 v[31:32], v12 offset0:14 offset1:15
	ds_read2_b32 v[33:34], v1 offset1:1
	ds_read2_b32 v[35:36], v1 offset0:2 offset1:3
	ds_read2_b32 v[37:38], v1 offset0:4 offset1:5
	ds_read2_b32 v[39:40], v1 offset0:6 offset1:7
	ds_read2_b32 v[41:42], v1 offset0:8 offset1:9
	ds_read2_b32 v[43:44], v1 offset0:10 offset1:11
	ds_read2_b32 v[45:46], v1 offset0:12 offset1:13
	ds_read2_b32 v[47:48], v1 offset0:14 offset1:15
	s_waitcnt lgkmcnt(7)
	;;#ASMSTART
	v_dot2_f32_f16 v13, v17, v33, v13
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v14, v18, v34, v14
	;;#ASMEND
	s_waitcnt lgkmcnt(6)
	;;#ASMSTART
	v_dot2_f32_f16 v15, v19, v35, v15
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v16, v20, v36, v16
	;;#ASMEND
	s_add_i32 s0, s0, 16
	s_waitcnt lgkmcnt(5)
	;;#ASMSTART
	v_dot2_f32_f16 v13, v21, v37, v13
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v14, v22, v38, v14
	;;#ASMEND
	s_waitcnt lgkmcnt(4)
	;;#ASMSTART
	v_dot2_f32_f16 v15, v23, v39, v15
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v16, v24, v40, v16
	;;#ASMEND
	v_add_u32_e32 v12, 64, v12
	v_add_u32_e32 v1, 64, v1
	s_cmpk_gt_u32 s0, 0xfb
	s_waitcnt lgkmcnt(3)
	;;#ASMSTART
	v_dot2_f32_f16 v13, v25, v41, v13
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v14, v26, v42, v14
	;;#ASMEND
	s_waitcnt lgkmcnt(2)
	;;#ASMSTART
	v_dot2_f32_f16 v15, v27, v43, v15
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v16, v28, v44, v16
	;;#ASMEND
	s_waitcnt lgkmcnt(1)
	;;#ASMSTART
	v_dot2_f32_f16 v13, v29, v45, v13
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v14, v30, v46, v14
	;;#ASMEND
	s_waitcnt lgkmcnt(0)
	;;#ASMSTART
	v_dot2_f32_f16 v15, v31, v47, v15
	;;#ASMEND
	;;#ASMSTART
	v_dot2_f32_f16 v16, v32, v48, v16
	;;#ASMEND
	s_cbranch_scc0 .LBB7_7
; %bb.8:                                ;   in Loop: Header=BB7_4 Depth=1
	v_add_f32_e32 v1, v14, v13
	v_add_f32_e32 v1, v15, v1
	v_add_f32_e32 v1, v16, v1
	s_add_i32 s8, s8, 16
	v_add_f32_e32 v11, v11, v1
	s_cmp_ge_i32 s8, s5
	v_add_u32_e32 v4, 16, v4
	s_barrier
	s_cbranch_scc0 .LBB7_4
; %bb.9:                                ; %._crit_edge.loopexit
	s_mov_b32 s0, 0xc640e400
	v_cmp_eq_f32_e32 vcc, s0, v11
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB7_11
; %bb.10:
	v_lshlrev_b32_e32 v0, 2, v0
	v_mov_b32_e32 v1, 0xc640e400
	global_store_dword v0, v1, s[6:7]
.LBB7_11:                               ; %.critedge
	s_endpgm
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel _Z12bench_streamILi1EEvPK6__halfS2_Pfii
		.amdhsa_group_segment_fixed_size 50688
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
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
		.amdhsa_next_free_vgpr 85
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
	.section	.text._Z12bench_streamILi1EEvPK6__halfS2_Pfii,"axG",@progbits,_Z12bench_streamILi1EEvPK6__halfS2_Pfii,comdat
.Lfunc_end7:
	.size	_Z12bench_streamILi1EEvPK6__halfS2_Pfii, .Lfunc_end7-_Z12bench_streamILi1EEvPK6__halfS2_Pfii
                                        ; -- End function
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.num_vgpr, 49
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.num_agpr, 0
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.numbered_sgpr, 9
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.private_seg_size, 0
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.uses_vcc, 1
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.uses_flat_scratch, 0
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_dyn_sized_stack, 0
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_recursion, 0
	.set _Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 864
; TotalNumSgprs: 13
; NumVgprs: 49
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 50688 bytes/workgroup (compile time only)
; SGPRBlocks: 12
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 85
; Occupancy: 2
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.section	.AMDGPU.csdata,"",@progbits
	.type	__hip_cuid_b1e4d951e7e1a1e7,@object ; @__hip_cuid_b1e4d951e7e1a1e7
	.section	.bss,"aw",@nobits
	.globl	__hip_cuid_b1e4d951e7e1a1e7
__hip_cuid_b1e4d951e7e1a1e7:
	.byte	0                               ; 0x0
	.size	__hip_cuid_b1e4d951e7e1a1e7, 1

	.ident	"Ubuntu clang version 21.1.8 (6ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __hip_cuid_b1e4d951e7e1a1e7
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         36
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         40
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         44
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         46
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         48
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         50
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         52
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         54
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         88
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         96
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 288
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z10k_dot2_f16PK6__halfS1_Pfii
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z10k_dot2_f16PK6__halfS1_Pfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     18
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         36
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         40
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         44
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         46
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         48
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         50
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         52
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         54
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         88
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         96
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 288
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z9k_fma_f16PK6__halfS1_Pfii
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z9k_fma_f16PK6__halfS1_Pfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     7
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           4
        .value_kind:     hidden_block_count_x
      - .offset:         36
        .size:           4
        .value_kind:     hidden_block_count_y
      - .offset:         40
        .size:           4
        .value_kind:     hidden_block_count_z
      - .offset:         44
        .size:           2
        .value_kind:     hidden_group_size_x
      - .offset:         46
        .size:           2
        .value_kind:     hidden_group_size_y
      - .offset:         48
        .size:           2
        .value_kind:     hidden_group_size_z
      - .offset:         50
        .size:           2
        .value_kind:     hidden_remainder_x
      - .offset:         52
        .size:           2
        .value_kind:     hidden_remainder_y
      - .offset:         54
        .size:           2
        .value_kind:     hidden_remainder_z
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         88
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         96
        .size:           2
        .value_kind:     hidden_grid_dims
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 288
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           _Z9k_dot4_i8PKiS0_Piii
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z9k_dot4_i8PKiS0_Piii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     7
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 20
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z12bench_raw_i8PKiPii
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z12bench_raw_i8PKiPii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     15
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 20
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9bench_rawILi0EEvPK7__half2Pfi
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z9bench_rawILi0EEvPK7__half2Pfi.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     20
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .offset:         16
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 4096
    .kernarg_segment_align: 8
    .kernarg_segment_size: 20
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9bench_rawILi1EEvPK7__half2Pfi
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z9bench_rawILi1EEvPK7__half2Pfi.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     15
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 50688
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 512
    .name:           _Z12bench_streamILi0EEvPK6__halfS2_Pfii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z12bench_streamILi0EEvPK6__halfS2_Pfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     81
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
    .group_segment_fixed_size: 50688
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 512
    .name:           _Z12bench_streamILi1EEvPK6__halfS2_Pfii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z12bench_streamILi1EEvPK6__halfS2_Pfii.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     49
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
