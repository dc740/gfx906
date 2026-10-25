	.file	"probe_dot.hip"
	.text
	.globl	_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii # -- Begin function _Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii
	.p2align	4
	.type	_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii,@function
_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii: # @_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	_Z10k_dot2_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end0:
	.size	_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii, .Lfunc_end0-_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii
	.cfi_endproc
                                        # -- End function
	.globl	_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii # -- Begin function _Z24__device_stub__k_fma_f16PK6__halfS1_Pfii
	.p2align	4
	.type	_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii,@function
_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii: # @_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	_Z9k_fma_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end1:
	.size	_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii, .Lfunc_end1-_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii
	.cfi_endproc
                                        # -- End function
	.globl	_Z24__device_stub__k_dot4_i8PKiS0_Piii # -- Begin function _Z24__device_stub__k_dot4_i8PKiS0_Piii
	.p2align	4
	.type	_Z24__device_stub__k_dot4_i8PKiS0_Piii,@function
_Z24__device_stub__k_dot4_i8PKiS0_Piii: # @_Z24__device_stub__k_dot4_i8PKiS0_Piii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	_Z9k_dot4_i8PKiS0_Piii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end2:
	.size	_Z24__device_stub__k_dot4_i8PKiS0_Piii, .Lfunc_end2-_Z24__device_stub__k_dot4_i8PKiS0_Piii
	.cfi_endproc
                                        # -- End function
	.globl	_Z27__device_stub__bench_raw_i8PKiPii # -- Begin function _Z27__device_stub__bench_raw_i8PKiPii
	.p2align	4
	.type	_Z27__device_stub__bench_raw_i8PKiPii,@function
_Z27__device_stub__bench_raw_i8PKiPii:  # @_Z27__device_stub__bench_raw_i8PKiPii
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 12(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	movq	_Z12bench_raw_i8PKiPii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	retq
.Lfunc_end3:
	.size	_Z27__device_stub__bench_raw_i8PKiPii, .Lfunc_end3-_Z27__device_stub__bench_raw_i8PKiPii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI4_0:
	.long	0x00000000                      # float 0
	.long	0x3f000000                      # float 0.5
	.zero	4
	.zero	4
.LCPI4_1:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI4_2:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI4_3:
	.quad	0x42224f8000000000              # double 3.93216E+10
.LCPI4_4:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI4_5:
	.quad	0x42324f8000000000              # double 7.86432E+10
.LCPI4_6:
	.quad	0x4210000000000000              # double 17179869184
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$5368, %rsp                     # imm = 0x14F8
	.cfi_def_cfa_offset 5424
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, %eax
	xorl	%edi, %edi
	cmpl	$2, %eax
	jl	.LBB4_2
# %bb.1:
	movq	8(%rsi), %rdi
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	movl	$10, %edx
	callq	__isoc23_strtol@PLT
	movq	%rax, %rdi
.LBB4_2:
	.cfi_escape 0x2e, 0x00
                                        # kill: def $edi killed $edi killed $rdi
	callq	hipSetDevice@PLT
	testl	%eax, %eax
	jne	.LBB4_3
# %bb.4:
	movq	$1234, 368(%rsp)                # imm = 0x4D2
	movl	$1234, %ecx                     # imm = 0x4D2
	movl	$2, %eax
	.p2align	4
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	shrq	$30, %rdx
	xorq	%rcx, %rdx
	imulq	$1812433253, %rdx, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	decq	%rcx
	movl	%ecx, %edx
	movq	%rdx, 360(%rsp,%rax,8)
	cmpq	$624, %rax                      # imm = 0x270
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	shrl	$30, %edx
	xorl	%edx, %ecx
	imull	$1812433253, %ecx, %ecx         # imm = 0x6C078965
	addl	%eax, %ecx
	movq	%rcx, 368(%rsp,%rax,8)
	addq	$2, %rax
	jmp	.LBB4_5
.LBB4_7:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	movq	$624, 5360(%rsp)                # imm = 0x270
	movq	.LCPI4_0(%rip), %xmm0           # xmm0 = [0.0E+0,5.0E-1,0.0E+0,0.0E+0]
	movq	%xmm0, 336(%rsp)
	movl	$0, 344(%rsp)
	movb	$0, 348(%rsp)
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edi                     # imm = 0x400
	callq	_Znwm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edx                     # imm = 0x400
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	movl	$8388608, %edi                  # imm = 0x800000
	callq	_Znwm@PLT
.Ltmp1:
# %bb.8:
	movq	%rax, %r14
	.cfi_escape 0x2e, 0x00
	movl	$8388608, %edx                  # imm = 0x800000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp3:
	.cfi_escape 0x2e, 0x00
	movl	$2048, %edi                     # imm = 0x800
	callq	_Znwm@PLT
.Ltmp4:
# %bb.9:
	movq	%rax, %r15
	movq	%r14, (%rsp)                    # 8-byte Spill
	.cfi_escape 0x2e, 0x00
	movl	$2048, %edx                     # imm = 0x800
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movl	$16777216, %edi                 # imm = 0x1000000
	callq	_Znwm@PLT
.Ltmp7:
# %bb.10:
	.cfi_escape 0x2e, 0x00
	xorl	%r12d, %r12d
	movl	$16777216, %edx                 # imm = 0x1000000
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	leaq	368(%rsp), %rbx
	leaq	336(%rsp), %r14
	.p2align	4
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
.Ltmp9:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
.Ltmp10:
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=1
	movd	%xmm0, (%r15,%r12,4)
	.cfi_escape 0x2e, 0x00
	callq	__truncsfhf2@PLT
	pextrw	$0, %xmm0, %eax
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movw	%ax, (%rcx,%r12,2)
	incq	%r12
	cmpq	$512, %r12                      # imm = 0x200
	jne	.LBB4_11
# %bb.13:                               # %.preheader726.preheader
	xorl	%r12d, %r12d
	leaq	368(%rsp), %rbx
	leaq	336(%rsp), %r14
	.p2align	4
.LBB4_14:                               # %.preheader726
                                        # =>This Inner Loop Header: Depth=1
.Ltmp12:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
.Ltmp13:
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	movq	152(%rsp), %rax                 # 8-byte Reload
	movd	%xmm0, (%rax,%r12,4)
	.cfi_escape 0x2e, 0x00
	callq	__truncsfhf2@PLT
	pextrw	$0, %xmm0, %eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	movw	%ax, (%rcx,%r12,2)
	incq	%r12
	cmpq	$4194304, %r12                  # imm = 0x400000
	jne	.LBB4_14
# %bb.16:
.Ltmp15:
	.cfi_escape 0x2e, 0x00
	leaq	192(%rsp), %rdi
	movl	$1024, %esi                     # imm = 0x400
	callq	hipMalloc@PLT
.Ltmp16:
# %bb.17:                               # %_ZL9hipMallocI6__halfE10hipError_tPPT_m.exit
	testl	%eax, %eax
	movq	(%rsp), %r14                    # 8-byte Reload
	jne	.LBB4_18
# %bb.29:
.Ltmp20:
	.cfi_escape 0x2e, 0x00
	leaq	288(%rsp), %rdi
	movl	$8388608, %esi                  # imm = 0x800000
	callq	hipMalloc@PLT
.Ltmp21:
# %bb.30:                               # %_ZL9hipMallocI6__halfE10hipError_tPPT_m.exit287
	testl	%eax, %eax
	jne	.LBB4_31
# %bb.35:
.Ltmp25:
	.cfi_escape 0x2e, 0x00
	leaq	272(%rsp), %rdi
	movl	$32768, %esi                    # imm = 0x8000
	callq	hipMalloc@PLT
.Ltmp26:
# %bb.36:                               # %_ZL9hipMallocIfE10hipError_tPPT_m.exit
	testl	%eax, %eax
	jne	.LBB4_37
# %bb.40:
	movq	192(%rsp), %rdi
.Ltmp30:
	.cfi_escape 0x2e, 0x00
	movl	$1024, %edx                     # imm = 0x400
	movq	264(%rsp), %rsi                 # 8-byte Reload
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp31:
# %bb.41:
	testl	%eax, %eax
	jne	.LBB4_42
# %bb.45:
	movq	288(%rsp), %rdi
.Ltmp35:
	.cfi_escape 0x2e, 0x00
	movl	$8388608, %edx                  # imm = 0x800000
	movq	%r14, %rsi
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp36:
# %bb.46:
	testl	%eax, %eax
	jne	.LBB4_47
# %bb.50:
.Ltmp40:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edi                    # imm = 0x8000
	callq	_Znwm@PLT
.Ltmp41:
# %bb.51:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp43:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edi                    # imm = 0x8000
	callq	_Znwm@PLT
.Ltmp44:
# %bb.52:
	.cfi_escape 0x2e, 0x00
	xorl	%ebx, %ebx
	movl	$32768, %edx                    # imm = 0x8000
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	152(%rsp), %rax                 # 8-byte Reload
	addq	$4, %rax
	.p2align	4
.LBB4_53:                               # %.preheader725
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_54 Depth 2
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4
.LBB4_54:                               #   Parent Loop BB4_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%r15,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	4(%r15,%rcx,4), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movss	-4(%rax,%rcx,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movss	(%rax,%rcx,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	addq	$2, %rcx
	cmpq	$512, %rcx                      # imm = 0x200
	jne	.LBB4_54
# %bb.55:                               #   in Loop: Header=BB4_53 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movss	%xmm0, (%rcx,%rbx,4)
	incq	%rbx
	addq	$2048, %rax                     # imm = 0x800
	cmpq	$8192, %rbx                     # imm = 0x2000
	jne	.LBB4_53
# %bb.56:
.Ltmp46:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967328, %rdi               # imm = 0x100000020
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp47:
# %bb.57:
	testl	%eax, %eax
	jne	.LBB4_60
# %bb.58:
	movq	192(%rsp), %rax
	movq	288(%rsp), %rcx
	movq	272(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$512, 8(%rsp)                   # imm = 0x200
	movl	$8192, 16(%rsp)                 # imm = 0x2000
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp48:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp49:
# %bb.59:                               # %.noexc
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp50:
	.cfi_escape 0x2e, 0x10
	movq	_Z10k_dot2_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp51:
.LBB4_60:
.Ltmp53:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp54:
# %bb.61:
	testl	%eax, %eax
	jne	.LBB4_62
# %bb.67:
	movq	272(%rsp), %rsi
.Ltmp58:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	$2, %ecx
	callq	hipMemcpy@PLT
.Ltmp59:
# %bb.68:
	testl	%eax, %eax
	jne	.LBB4_79
# %bb.69:                               # %.preheader724.preheader
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movaps	.LCPI4_1(%rip), %xmm5           # xmm5 = [NaN,NaN,NaN,NaN]
	xorpd	%xmm1, %xmm1
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	216(%rsp), %rdx                 # 8-byte Reload
	.p2align	4
.LBB4_70:                               # %.preheader724
                                        # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	movss	(%rdx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%rax,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm0
	andps	%xmm5, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	maxsd	%xmm3, %xmm0
	andps	%xmm5, %xmm4
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	addsd	.LCPI4_2(%rip), %xmm3
	divsd	%xmm3, %xmm1
	maxsd	%xmm2, %xmm1
	incq	%rax
	cmpq	$8192, %rax                     # imm = 0x2000
	jne	.LBB4_70
# %bb.71:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.2(%rip), %rdi
	movl	$512, %esi                      # imm = 0x200
	movl	$8192, %edx                     # imm = 0x2000
	movb	$2, %al
	callq	printf@PLT
.Ltmp63:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967328, %rdi               # imm = 0x100000020
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp64:
# %bb.72:
	testl	%eax, %eax
	jne	.LBB4_75
# %bb.73:
	movq	192(%rsp), %rax
	movq	288(%rsp), %rcx
	movq	272(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$512, 8(%rsp)                   # imm = 0x200
	movl	$8192, 16(%rsp)                 # imm = 0x2000
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp65:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp66:
# %bb.74:                               # %.noexc297
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp67:
	.cfi_escape 0x2e, 0x10
	movq	_Z9k_fma_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp68:
.LBB4_75:
.Ltmp70:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp71:
# %bb.76:
	testl	%eax, %eax
	jne	.LBB4_77
# %bb.83:
	movq	272(%rsp), %rsi
.Ltmp75:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	$2, %ecx
	callq	hipMemcpy@PLT
.Ltmp76:
# %bb.84:
	testl	%eax, %eax
	movaps	.LCPI4_1(%rip), %xmm5           # xmm5 = [NaN,NaN,NaN,NaN]
	movsd	.LCPI4_2(%rip), %xmm6           # xmm6 = [9.9999999999999995E-7,0.0E+0]
	jne	.LBB4_100
# %bb.85:                               # %.preheader723.preheader
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	xorpd	%xmm1, %xmm1
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	216(%rsp), %rdx                 # 8-byte Reload
	.p2align	4
.LBB4_86:                               # %.preheader723
                                        # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	movss	(%rdx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%rcx,%rax,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm0
	andps	%xmm5, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	maxsd	%xmm3, %xmm0
	andps	%xmm5, %xmm4
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	addsd	%xmm6, %xmm3
	divsd	%xmm3, %xmm1
	maxsd	%xmm2, %xmm1
	incq	%rax
	cmpq	$8192, %rax                     # imm = 0x2000
	jne	.LBB4_86
# %bb.87:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.3(%rip), %rdi
	movl	$512, %esi                      # imm = 0x200
	movl	$8192, %edx                     # imm = 0x2000
	movb	$2, %al
	callq	printf@PLT
.Ltmp80:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edi                      # imm = 0x200
	callq	_Znwm@PLT
.Ltmp81:
# %bb.88:
	movq	%rax, %rbx
	.cfi_escape 0x2e, 0x00
	movl	$512, %edx                      # imm = 0x200
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp83:
	.cfi_escape 0x2e, 0x00
	movl	$4194304, %edi                  # imm = 0x400000
	callq	_Znwm@PLT
.Ltmp84:
# %bb.89:
	movq	%rax, %rbp
	.cfi_escape 0x2e, 0x00
	xorl	%r13d, %r13d
	movl	$4194304, %edx                  # imm = 0x400000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movabsq	$433791696796, %rax             # imm = 0x64FFFFFF9C
	movq	%rax, 296(%rsp)
	leaq	368(%rsp), %r14
	leaq	296(%rsp), %r12
	.p2align	4
.LBB4_90:                               # =>This Inner Loop Header: Depth=1
.Ltmp86:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp87:
# %bb.91:                               # %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit
                                        #   in Loop: Header=BB4_90 Depth=1
	movl	%eax, (%rbx,%r13)
	addq	$4, %r13
	cmpq	$512, %r13                      # imm = 0x200
	jne	.LBB4_90
# %bb.92:                               # %.preheader722.preheader
	xorl	%r13d, %r13d
	leaq	368(%rsp), %r14
	leaq	296(%rsp), %r12
	.p2align	4
.LBB4_93:                               # %.preheader722
                                        # =>This Inner Loop Header: Depth=1
.Ltmp89:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp90:
# %bb.94:                               # %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit305
                                        #   in Loop: Header=BB4_93 Depth=1
	movl	%eax, (%rbp,%r13)
	addq	$4, %r13
	cmpq	$4194304, %r13                  # imm = 0x400000
	jne	.LBB4_93
# %bb.95:
.Ltmp92:
	.cfi_escape 0x2e, 0x00
	leaq	328(%rsp), %rdi
	movl	$512, %esi                      # imm = 0x200
	callq	hipMalloc@PLT
.Ltmp93:
# %bb.96:                               # %_ZL9hipMallocIiE10hipError_tPPT_m.exit
	testl	%eax, %eax
	jne	.LBB4_97
# %bb.109:
.Ltmp97:
	.cfi_escape 0x2e, 0x00
	leaq	320(%rsp), %rdi
	movl	$4194304, %esi                  # imm = 0x400000
	callq	hipMalloc@PLT
.Ltmp98:
# %bb.110:                              # %_ZL9hipMallocIiE10hipError_tPPT_m.exit307
	testl	%eax, %eax
	jne	.LBB4_111
# %bb.114:
.Ltmp102:
	.cfi_escape 0x2e, 0x00
	leaq	312(%rsp), %rdi
	movl	$32768, %esi                    # imm = 0x8000
	callq	hipMalloc@PLT
.Ltmp103:
# %bb.115:                              # %_ZL9hipMallocIiE10hipError_tPPT_m.exit309
	testl	%eax, %eax
	jne	.LBB4_116
# %bb.119:
	movq	328(%rsp), %rdi
.Ltmp107:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edx                      # imm = 0x200
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp108:
# %bb.120:
	testl	%eax, %eax
	jne	.LBB4_121
# %bb.124:
	movq	320(%rsp), %rdi
.Ltmp112:
	.cfi_escape 0x2e, 0x00
	movl	$4194304, %edx                  # imm = 0x400000
	movq	%rbp, %rsi
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp113:
# %bb.125:
	testl	%eax, %eax
	jne	.LBB4_126
# %bb.129:
.Ltmp117:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967328, %rdi               # imm = 0x100000020
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp118:
# %bb.130:
	testl	%eax, %eax
	jne	.LBB4_133
# %bb.131:
	movq	328(%rsp), %rax
	movq	320(%rsp), %rcx
	movq	312(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$128, 8(%rsp)
	movl	$8192, 16(%rsp)                 # imm = 0x2000
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp119:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp120:
# %bb.132:                              # %.noexc316
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp121:
	.cfi_escape 0x2e, 0x10
	movq	_Z9k_dot4_i8PKiS0_Piii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp122:
.LBB4_133:
.Ltmp124:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp125:
# %bb.134:
	testl	%eax, %eax
	jne	.LBB4_135
# %bb.138:
.Ltmp129:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edi                    # imm = 0x8000
	callq	_Znwm@PLT
.Ltmp130:
# %bb.139:
	movq	%rax, %r12
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	312(%rsp), %rsi
.Ltmp132:
	.cfi_escape 0x2e, 0x00
	movl	$32768, %edx                    # imm = 0x8000
	movq	%r12, %rdi
	movl	$2, %ecx
	callq	hipMemcpy@PLT
.Ltmp133:
# %bb.140:
	testl	%eax, %eax
	jne	.LBB4_156
# %bb.141:                              # %.preheader.preheader
	xorl	%eax, %eax
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	.p2align	4
.LBB4_142:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_143 Depth 2
	xorpd	%xmm6, %xmm6
	movl	$4, %esi
	pxor	%xmm7, %xmm7
	.p2align	4
.LBB4_143:                              # %vector.body
                                        #   Parent Loop BB4_142 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rbx,%rsi,4), %xmm2
	movdqu	(%rbx,%rsi,4), %xmm0
	movdqu	-16(%rdx,%rsi,4), %xmm3
	movdqu	(%rdx,%rsi,4), %xmm1
	movdqa	%xmm2, %xmm4
	pslld	$24, %xmm4
	psrad	$24, %xmm4
	packssdw	%xmm4, %xmm4
	movdqa	%xmm0, %xmm5
	pslld	$24, %xmm5
	psrad	$24, %xmm5
	packssdw	%xmm5, %xmm5
	movdqa	%xmm3, %xmm8
	pslld	$24, %xmm8
	psrad	$24, %xmm8
	packssdw	%xmm8, %xmm8
	pmullw	%xmm4, %xmm8
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqa	%xmm1, %xmm8
	pslld	$24, %xmm8
	psrad	$24, %xmm8
	packssdw	%xmm8, %xmm8
	pmullw	%xmm5, %xmm8
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	psrad	$16, %xmm4
	paddd	%xmm6, %xmm4
	psrad	$16, %xmm5
	paddd	%xmm7, %xmm5
	movdqa	%xmm2, %xmm6
	pslld	$16, %xmm6
	movdqa	%xmm0, %xmm7
	pslld	$16, %xmm7
	psrad	$24, %xmm6
	packssdw	%xmm6, %xmm6
	psrad	$24, %xmm7
	packssdw	%xmm7, %xmm7
	movdqa	%xmm3, %xmm8
	pslld	$16, %xmm8
	movdqa	%xmm1, %xmm9
	pslld	$16, %xmm9
	psrad	$24, %xmm8
	packssdw	%xmm8, %xmm8
	pmullw	%xmm6, %xmm8
	punpcklwd	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	psrad	$24, %xmm9
	packssdw	%xmm9, %xmm9
	pmullw	%xmm7, %xmm9
	punpcklwd	%xmm9, %xmm7            # xmm7 = xmm7[0],xmm9[0],xmm7[1],xmm9[1],xmm7[2],xmm9[2],xmm7[3],xmm9[3]
	psrad	$16, %xmm6
	psrad	$16, %xmm7
	movdqa	%xmm2, %xmm8
	pslld	$8, %xmm8
	movdqa	%xmm0, %xmm9
	pslld	$8, %xmm9
	psrad	$24, %xmm8
	packssdw	%xmm8, %xmm8
	psrad	$24, %xmm9
	packssdw	%xmm9, %xmm9
	movdqa	%xmm3, %xmm10
	pslld	$8, %xmm10
	movdqa	%xmm1, %xmm11
	pslld	$8, %xmm11
	psrad	$24, %xmm10
	packssdw	%xmm10, %xmm10
	pmullw	%xmm8, %xmm10
	punpcklwd	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1],xmm8[2],xmm10[2],xmm8[3],xmm10[3]
	psrad	$24, %xmm11
	packssdw	%xmm11, %xmm11
	pmullw	%xmm9, %xmm11
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	psrad	$16, %xmm8
	paddd	%xmm6, %xmm8
	paddd	%xmm4, %xmm8
	psrad	$16, %xmm9
	paddd	%xmm7, %xmm9
	paddd	%xmm5, %xmm9
	psrad	$24, %xmm2
	packssdw	%xmm2, %xmm2
	psrad	$24, %xmm0
	packssdw	%xmm0, %xmm0
	psrad	$24, %xmm3
	packssdw	%xmm3, %xmm3
	pmullw	%xmm2, %xmm3
	punpcklwd	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1],xmm6[2],xmm3[2],xmm6[3],xmm3[3]
	psrad	$24, %xmm1
	packssdw	%xmm1, %xmm1
	pmullw	%xmm0, %xmm1
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psrad	$16, %xmm6
	paddd	%xmm8, %xmm6
	psrad	$16, %xmm7
	paddd	%xmm9, %xmm7
	addq	$8, %rsi
	cmpq	$132, %rsi
	jne	.LBB4_143
# %bb.144:                              # %middle.block
                                        #   in Loop: Header=BB4_142 Depth=1
	paddd	%xmm6, %xmm7
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %esi
	xorl	%edi, %edi
	cmpl	(%r12,%rax,4), %esi
	setne	%dil
	addl	%edi, %ecx
	incq	%rax
	addq	$512, %rdx                      # imm = 0x200
	cmpq	$8192, %rax                     # imm = 0x2000
	jne	.LBB4_142
# %bb.145:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.4(%rip), %rdi
	movl	$512, %esi                      # imm = 0x200
	movl	$8192, %edx                     # imm = 0x2000
	xorl	%eax, %eax
	callq	printf@PLT
.Ltmp137:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edi                      # imm = 0x200
	callq	_Znwm@PLT
.Ltmp138:
# %bb.146:
	movq	%r12, 200(%rsp)                 # 8-byte Spill
	movq	%rbp, 208(%rsp)                 # 8-byte Spill
	.cfi_escape 0x2e, 0x00
	movl	$512, %edx                      # imm = 0x200
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
.Ltmp140:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edi                      # imm = 0x200
	callq	_Znwm@PLT
.Ltmp141:
# %bb.147:
	.cfi_escape 0x2e, 0x00
	xorl	%r12d, %r12d
	movl	$512, %edx                      # imm = 0x200
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	leaq	368(%rsp), %r14
	leaq	336(%rsp), %rbp
	leaq	296(%rsp), %r13
	.p2align	4
.LBB4_148:                              # =>This Inner Loop Header: Depth=1
.Ltmp143:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	movd	%xmm0, 160(%rsp)                # 4-byte Folded Spill
.Ltmp144:
# %bb.149:                              # %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit325
                                        #   in Loop: Header=BB4_148 Depth=1
.Ltmp145:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	movd	%xmm0, 224(%rsp)                # 4-byte Folded Spill
.Ltmp146:
# %bb.150:                              #   in Loop: Header=BB4_148 Depth=1
	.cfi_escape 0x2e, 0x00
	movss	160(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__truncsfhf2@PLT
	movaps	%xmm0, 160(%rsp)                # 16-byte Spill
	.cfi_escape 0x2e, 0x00
	movd	224(%rsp), %xmm0                # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__truncsfhf2@PLT
	pextrw	$0, %xmm0, %eax
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movw	%ax, 2(%rcx,%r12,4)
	movdqa	160(%rsp), %xmm0                # 16-byte Reload
	pextrw	$0, %xmm0, %eax
	movw	%ax, (%rcx,%r12,4)
.Ltmp148:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp149:
# %bb.151:                              # %_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_.exit329
                                        #   in Loop: Header=BB4_148 Depth=1
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, (%rcx,%r12,4)
	incq	%r12
	cmpq	$128, %r12
	jne	.LBB4_148
# %bb.152:
.Ltmp151:
	.cfi_escape 0x2e, 0x00
	leaq	248(%rsp), %rdi
	movl	$512, %esi                      # imm = 0x200
	callq	hipMalloc@PLT
.Ltmp152:
# %bb.153:                              # %_ZL9hipMallocI7__half2E10hipError_tPPT_m.exit
	testl	%eax, %eax
	movq	208(%rsp), %rbp                 # 8-byte Reload
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	184(%rsp), %r13                 # 8-byte Reload
	jne	.LBB4_154
# %bb.165:
.Ltmp156:
	.cfi_escape 0x2e, 0x00
	leaq	280(%rsp), %rdi
	movl	$512, %esi                      # imm = 0x200
	callq	hipMalloc@PLT
.Ltmp157:
# %bb.166:                              # %_ZL9hipMallocIiE10hipError_tPPT_m.exit331
	testl	%eax, %eax
	jne	.LBB4_167
# %bb.171:
.Ltmp161:
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	movl	$1024, %esi                     # imm = 0x400
	callq	hipMalloc@PLT
.Ltmp162:
# %bb.172:                              # %_ZL9hipMallocIfE10hipError_tPPT_m.exit333
	testl	%eax, %eax
	jne	.LBB4_173
# %bb.176:
.Ltmp166:
	.cfi_escape 0x2e, 0x00
	leaq	304(%rsp), %rdi
	movl	$1024, %esi                     # imm = 0x400
	callq	hipMalloc@PLT
.Ltmp167:
# %bb.177:                              # %_ZL9hipMallocIiE10hipError_tPPT_m.exit335
	testl	%eax, %eax
	jne	.LBB4_178
# %bb.181:
	movq	248(%rsp), %rdi
.Ltmp171:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edx                      # imm = 0x200
	movq	%r13, %rsi
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp172:
# %bb.182:
	testl	%eax, %eax
	jne	.LBB4_183
# %bb.186:
	movq	280(%rsp), %rdi
.Ltmp176:
	.cfi_escape 0x2e, 0x00
	movl	$512, %edx                      # imm = 0x200
	movq	256(%rsp), %rsi                 # 8-byte Reload
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp177:
# %bb.187:
	testl	%eax, %eax
	jne	.LBB4_188
# %bb.191:
.Ltmp181:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp182:
# %bb.192:                              # %.noexc336
	testl	%eax, %eax
	jne	.LBB4_193
# %bb.196:
.Ltmp185:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp186:
# %bb.197:                              # %.noexc338
	testl	%eax, %eax
	jne	.LBB4_198
# %bb.200:
.Ltmp189:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp190:
# %bb.201:                              # %.noexc340
	testl	%eax, %eax
	jne	.LBB4_204
# %bb.202:
	movq	248(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$32, 16(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp191:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp192:
# %bb.203:                              # %.noexc341
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp193:
	.cfi_escape 0x2e, 0x10
	movq	_Z9bench_rawILi0EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp194:
.LBB4_204:                              # %_ZZ4mainENKUliE_clEi.exit.i
.Ltmp195:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp196:
# %bb.205:                              # %.noexc343
	testl	%eax, %eax
	jne	.LBB4_206
# %bb.209:
	movq	24(%rsp), %rdi
.Ltmp199:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp200:
# %bb.210:                              # %.noexc345
	testl	%eax, %eax
	jne	.LBB4_211
# %bb.214:
.Ltmp203:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp204:
# %bb.215:                              # %.noexc347
	testl	%eax, %eax
	jne	.LBB4_218
# %bb.216:
	movq	248(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$20000, 16(%rsp)                # imm = 0x4E20
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp205:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp206:
# %bb.217:                              # %.noexc348
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp207:
	.cfi_escape 0x2e, 0x10
	movq	_Z9bench_rawILi0EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp208:
.LBB4_218:                              # %_ZZ4mainENKUliE_clEi.exit37.i
	movq	8(%rsp), %rdi
.Ltmp209:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp210:
# %bb.219:                              # %.noexc350
	testl	%eax, %eax
	jne	.LBB4_220
# %bb.223:
	movq	8(%rsp), %rdi
.Ltmp213:
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize@PLT
.Ltmp214:
# %bb.224:                              # %.noexc352
	testl	%eax, %eax
	jne	.LBB4_225
# %bb.228:
	movl	$0, 96(%rsp)
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp217:
	.cfi_escape 0x2e, 0x00
	leaq	96(%rsp), %rdi
	callq	hipEventElapsedTime@PLT
.Ltmp218:
# %bb.229:                              # %.noexc354
	testl	%eax, %eax
	jne	.LBB4_230
# %bb.233:
	movq	24(%rsp), %rdi
.Ltmp221:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp222:
# %bb.234:                              # %.noexc356
	movq	8(%rsp), %rdi
.Ltmp223:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp224:
# %bb.235:
	movd	96(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, 160(%rsp)                # 4-byte Folded Spill
.Ltmp226:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp227:
# %bb.236:                              # %.noexc379
	testl	%eax, %eax
	jne	.LBB4_237
# %bb.239:
.Ltmp230:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp231:
# %bb.240:                              # %.noexc381
	testl	%eax, %eax
	jne	.LBB4_241
# %bb.243:
.Ltmp234:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp235:
# %bb.244:                              # %.noexc383
	testl	%eax, %eax
	jne	.LBB4_247
# %bb.245:
	movq	248(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$32, 16(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp236:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp237:
# %bb.246:                              # %.noexc384
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp238:
	.cfi_escape 0x2e, 0x10
	movq	_Z9bench_rawILi1EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp239:
.LBB4_247:                              # %_ZZ4mainENKUliE0_clEi.exit.i
.Ltmp240:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp241:
# %bb.248:                              # %.noexc386
	testl	%eax, %eax
	jne	.LBB4_249
# %bb.251:
	movq	24(%rsp), %rdi
.Ltmp244:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp245:
# %bb.252:                              # %.noexc388
	testl	%eax, %eax
	jne	.LBB4_253
# %bb.255:
.Ltmp248:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp249:
# %bb.256:                              # %.noexc390
	testl	%eax, %eax
	jne	.LBB4_259
# %bb.257:
	movq	248(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$20000, 16(%rsp)                # imm = 0x4E20
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp250:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp251:
# %bb.258:                              # %.noexc391
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp252:
	.cfi_escape 0x2e, 0x10
	movq	_Z9bench_rawILi1EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp253:
.LBB4_259:                              # %_ZZ4mainENKUliE0_clEi.exit37.i
	movq	8(%rsp), %rdi
.Ltmp254:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp255:
# %bb.260:                              # %.noexc393
	testl	%eax, %eax
	jne	.LBB4_261
# %bb.263:
	movq	8(%rsp), %rdi
.Ltmp258:
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize@PLT
.Ltmp259:
# %bb.264:                              # %.noexc395
	testl	%eax, %eax
	jne	.LBB4_265
# %bb.267:
	movl	$0, 96(%rsp)
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp262:
	.cfi_escape 0x2e, 0x00
	leaq	96(%rsp), %rdi
	callq	hipEventElapsedTime@PLT
.Ltmp263:
# %bb.268:                              # %.noexc397
	testl	%eax, %eax
	jne	.LBB4_269
# %bb.271:
	movq	24(%rsp), %rdi
.Ltmp266:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp267:
# %bb.272:                              # %.noexc399
	movq	8(%rsp), %rdi
.Ltmp268:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp269:
# %bb.273:
	movss	160(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	96(%rsp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 160(%rsp)                # 8-byte Spill
	movsd	.LCPI4_3(%rip), %xmm1           # xmm1 = [3.93216E+10,0.0E+0]
	divsd	%xmm0, %xmm1
	divsd	.LCPI4_4(%rip), %xmm1
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.5(%rip), %rdi
	movsd	%xmm0, 360(%rsp)                # 8-byte Spill
	movb	$2, %al
	callq	printf@PLT
	movsd	.LCPI4_3(%rip), %xmm1           # xmm1 = [3.93216E+10,0.0E+0]
	movsd	160(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	divsd	.LCPI4_4(%rip), %xmm1
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.6(%rip), %rdi
	movb	$2, %al
	callq	printf@PLT
.Ltmp271:
	.cfi_escape 0x2e, 0x00
	leaq	24(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp272:
# %bb.274:                              # %.noexc422
	testl	%eax, %eax
	jne	.LBB4_275
# %bb.277:
.Ltmp275:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp276:
# %bb.278:                              # %.noexc424
	testl	%eax, %eax
	jne	.LBB4_279
# %bb.281:
.Ltmp279:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp280:
# %bb.282:                              # %.noexc426
	testl	%eax, %eax
	jne	.LBB4_285
# %bb.283:
	movq	280(%rsp), %rax
	movq	304(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$32, 16(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp281:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp282:
# %bb.284:                              # %.noexc427
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp283:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_raw_i8PKiPii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp284:
.LBB4_285:                              # %_ZZ4mainENKUliE1_clEi.exit.i
.Ltmp285:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp286:
# %bb.286:                              # %.noexc429
	testl	%eax, %eax
	jne	.LBB4_287
# %bb.289:
	movq	24(%rsp), %rdi
.Ltmp289:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp290:
# %bb.290:                              # %.noexc431
	testl	%eax, %eax
	jne	.LBB4_291
# %bb.293:
.Ltmp293:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967536, %rdi               # imm = 0x1000000F0
	movabsq	$4294967552, %rdx               # imm = 0x100000100
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp294:
# %bb.294:                              # %.noexc433
	testl	%eax, %eax
	jne	.LBB4_297
# %bb.295:
	movq	280(%rsp), %rax
	movq	304(%rsp), %rcx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movl	$20000, 16(%rsp)                # imm = 0x4E20
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
.Ltmp295:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp296:
# %bb.296:                              # %.noexc434
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp297:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_raw_i8PKiPii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp298:
.LBB4_297:                              # %_ZZ4mainENKUliE1_clEi.exit37.i
	movq	8(%rsp), %rdi
.Ltmp299:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp300:
# %bb.298:                              # %.noexc436
	testl	%eax, %eax
	jne	.LBB4_299
# %bb.301:
	movq	8(%rsp), %rdi
.Ltmp303:
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize@PLT
.Ltmp304:
# %bb.302:                              # %.noexc438
	testl	%eax, %eax
	jne	.LBB4_303
# %bb.305:
	movl	$0, 96(%rsp)
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
.Ltmp307:
	.cfi_escape 0x2e, 0x00
	leaq	96(%rsp), %rdi
	callq	hipEventElapsedTime@PLT
.Ltmp308:
# %bb.306:                              # %.noexc440
	testl	%eax, %eax
	jne	.LBB4_307
# %bb.309:
	movq	24(%rsp), %rdi
.Ltmp311:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp312:
# %bb.310:                              # %.noexc442
	movq	8(%rsp), %rdi
.Ltmp313:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp314:
# %bb.311:
	movss	96(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_5(%rip), %xmm1           # xmm1 = [7.86432E+10,0.0E+0]
	divsd	%xmm0, %xmm1
	divsd	.LCPI4_4(%rip), %xmm1
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.7(%rip), %rdi
	movb	$2, %al
	callq	printf@PLT
.Ltmp316:
	.cfi_escape 0x2e, 0x00
	leaq	240(%rsp), %rdi
	movl	$4194304, %esi                  # imm = 0x400000
	callq	hipMalloc@PLT
.Ltmp317:
# %bb.312:                              # %_ZL9hipMallocI6__halfE10hipError_tPPT_m.exit445
	testl	%eax, %eax
	jne	.LBB4_313
# %bb.319:
	movq	240(%rsp), %rdi
.Ltmp321:
	.cfi_escape 0x2e, 0x00
	movl	$4194304, %edx                  # imm = 0x400000
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	$1, %ecx
	callq	hipMemcpy@PLT
.Ltmp322:
# %bb.320:
	testl	%eax, %eax
	jne	.LBB4_321
# %bb.324:
.Ltmp326:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp327:
# %bb.325:                              # %.noexc460
	testl	%eax, %eax
	jne	.LBB4_326
# %bb.328:
.Ltmp330:
	.cfi_escape 0x2e, 0x00
	leaq	16(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp331:
# %bb.329:                              # %.noexc462
	testl	%eax, %eax
	jne	.LBB4_330
# %bb.332:
.Ltmp334:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967360, %rdi               # imm = 0x100000040
	movabsq	$4294967808, %rdx               # imm = 0x100000200
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp335:
# %bb.333:                              # %.noexc464
	testl	%eax, %eax
	jne	.LBB4_336
# %bb.334:
	movq	192(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$4096, 148(%rsp)                # imm = 0x1000
	movl	$32, 144(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp336:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp337:
# %bb.335:                              # %.noexc465
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp338:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_streamILi0EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp339:
.LBB4_336:                              # %_ZZ4mainENKUliE2_clEi.exit.i
.Ltmp340:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp341:
# %bb.337:                              # %.noexc467
	testl	%eax, %eax
	jne	.LBB4_338
# %bb.340:
	movq	8(%rsp), %rdi
.Ltmp344:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp345:
# %bb.341:                              # %.noexc469
	testl	%eax, %eax
	jne	.LBB4_342
# %bb.344:
.Ltmp348:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967360, %rdi               # imm = 0x100000040
	movabsq	$4294967808, %rdx               # imm = 0x100000200
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp349:
# %bb.345:                              # %.noexc471
	testl	%eax, %eax
	jne	.LBB4_348
# %bb.346:
	movq	192(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$4096, 148(%rsp)                # imm = 0x1000
	movl	$512, 144(%rsp)                 # imm = 0x200
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp350:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp351:
# %bb.347:                              # %.noexc472
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp352:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_streamILi0EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp353:
.LBB4_348:                              # %_ZZ4mainENKUliE2_clEi.exit34.i
	movq	16(%rsp), %rdi
.Ltmp354:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp355:
# %bb.349:                              # %.noexc474
	testl	%eax, %eax
	jne	.LBB4_350
# %bb.352:
	movq	16(%rsp), %rdi
.Ltmp358:
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize@PLT
.Ltmp359:
# %bb.353:                              # %.noexc476
	testl	%eax, %eax
	jne	.LBB4_354
# %bb.356:
	movl	$0, 96(%rsp)
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
.Ltmp362:
	.cfi_escape 0x2e, 0x00
	leaq	96(%rsp), %rdi
	callq	hipEventElapsedTime@PLT
.Ltmp363:
# %bb.357:                              # %.noexc478
	testl	%eax, %eax
	jne	.LBB4_358
# %bb.360:
	movq	8(%rsp), %rdi
.Ltmp366:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp367:
# %bb.361:                              # %.noexc480
	movq	16(%rsp), %rdi
.Ltmp368:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp369:
# %bb.362:
	movd	96(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, 224(%rsp)                # 4-byte Folded Spill
.Ltmp371:
	.cfi_escape 0x2e, 0x00
	leaq	8(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp372:
# %bb.363:                              # %.noexc503
	testl	%eax, %eax
	jne	.LBB4_364
# %bb.366:
.Ltmp375:
	.cfi_escape 0x2e, 0x00
	leaq	16(%rsp), %rdi
	callq	hipEventCreate@PLT
.Ltmp376:
# %bb.367:                              # %.noexc505
	testl	%eax, %eax
	jne	.LBB4_368
# %bb.370:
.Ltmp379:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967360, %rdi               # imm = 0x100000040
	movabsq	$4294967808, %rdx               # imm = 0x100000200
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp380:
# %bb.371:                              # %.noexc507
	testl	%eax, %eax
	jne	.LBB4_374
# %bb.372:
	movq	192(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$4096, 148(%rsp)                # imm = 0x1000
	movl	$32, 144(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp381:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp382:
# %bb.373:                              # %.noexc508
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp383:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_streamILi1EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp384:
.LBB4_374:                              # %_ZZ4mainENKUliE3_clEi.exit.i
.Ltmp385:
	.cfi_escape 0x2e, 0x00
	callq	hipDeviceSynchronize@PLT
.Ltmp386:
# %bb.375:                              # %.noexc510
	testl	%eax, %eax
	jne	.LBB4_376
# %bb.378:
	movq	8(%rsp), %rdi
.Ltmp389:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp390:
# %bb.379:                              # %.noexc512
	testl	%eax, %eax
	jne	.LBB4_380
# %bb.382:
.Ltmp393:
	.cfi_escape 0x2e, 0x00
	movabsq	$4294967360, %rdi               # imm = 0x100000040
	movabsq	$4294967808, %rdx               # imm = 0x100000200
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration@PLT
.Ltmp394:
# %bb.383:                              # %.noexc514
	testl	%eax, %eax
	jne	.LBB4_386
# %bb.384:
	movq	192(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	176(%rsp), %rdx
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movl	$4096, 148(%rsp)                # imm = 0x1000
	movl	$512, 144(%rsp)                 # imm = 0x200
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
.Ltmp395:
	.cfi_escape 0x2e, 0x00
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
.Ltmp396:
# %bb.385:                              # %.noexc515
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
.Ltmp397:
	.cfi_escape 0x2e, 0x10
	movq	_Z12bench_streamILi1EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	96(%rsp), %r9
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.Ltmp398:
.LBB4_386:                              # %_ZZ4mainENKUliE3_clEi.exit34.i
	movq	16(%rsp), %rdi
.Ltmp399:
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	hipEventRecord@PLT
.Ltmp400:
# %bb.387:                              # %.noexc517
	testl	%eax, %eax
	jne	.LBB4_388
# %bb.390:
	movq	16(%rsp), %rdi
.Ltmp403:
	.cfi_escape 0x2e, 0x00
	callq	hipEventSynchronize@PLT
.Ltmp404:
# %bb.391:                              # %.noexc519
	testl	%eax, %eax
	jne	.LBB4_392
# %bb.394:
	movl	$0, 96(%rsp)
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
.Ltmp407:
	.cfi_escape 0x2e, 0x00
	leaq	96(%rsp), %rdi
	callq	hipEventElapsedTime@PLT
.Ltmp408:
# %bb.395:                              # %.noexc521
	testl	%eax, %eax
	jne	.LBB4_396
# %bb.398:
	movq	8(%rsp), %rdi
.Ltmp411:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp412:
# %bb.399:                              # %.noexc523
	movq	16(%rsp), %rdi
.Ltmp413:
	.cfi_escape 0x2e, 0x00
	callq	hipEventDestroy@PLT
.Ltmp414:
# %bb.400:                              # %_ZNSt6vectorI6__halfSaIS0_EED2Ev.exit541
	movss	224(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 352(%rsp)                # 8-byte Spill
	movss	96(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 224(%rsp)                # 8-byte Spill
	movsd	.LCPI4_6(%rip), %xmm1           # xmm1 = [1.7179869184E+10,0.0E+0]
	divsd	%xmm2, %xmm1
	movsd	.LCPI4_4(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
	divsd	%xmm0, %xmm1
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.8(%rip), %rdi
	movaps	%xmm2, %xmm0
	movb	$2, %al
	callq	printf@PLT
	movsd	224(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_6(%rip), %xmm1           # xmm1 = [1.7179869184E+10,0.0E+0]
	divsd	%xmm0, %xmm1
	divsd	.LCPI4_4(%rip), %xmm1
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.9(%rip), %rdi
	movb	$2, %al
	callq	printf@PLT
	movsd	360(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	160(%rsp), %xmm0                # 8-byte Folded Reload
	movsd	352(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	224(%rsp), %xmm1                # 8-byte Folded Reload
	.cfi_escape 0x2e, 0x00
	leaq	.L.str.10(%rip), %rdi
	movb	$2, %al
	callq	printf@PLT
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	256(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	%r13, %rdi
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	%r12, %rdi
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$4194304, %esi                  # imm = 0x400000
	movq	%rbp, %rdi
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	216(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	232(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$16777216, %esi                 # imm = 0x1000000
	movq	152(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$2048, %esi                     # imm = 0x800
	movq	%r15, %rdi
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$8388608, %esi                  # imm = 0x800000
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	264(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	xorl	%eax, %eax
	addq	$5368, %rsp                     # imm = 0x14F8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_3:
	.cfi_def_cfa_offset 5424
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$235, %ecx
	jmp	.LBB4_21
.LBB4_18:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp17:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp18:
# %bb.19:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_20
.LBB4_31:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp22:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp23:
# %bb.32:
	.cfi_escape 0x2e, 0x00
.LBB4_20:
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$246, %ecx
	jmp	.LBB4_21
.LBB4_37:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp27:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp28:
# %bb.38:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$247, %ecx
	jmp	.LBB4_21
.LBB4_42:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp32:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp33:
# %bb.43:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$248, %ecx
	jmp	.LBB4_21
.LBB4_47:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp37:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp38:
# %bb.48:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$249, %ecx
	jmp	.LBB4_21
.LBB4_62:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp55:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp56:
# %bb.63:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$260, %ecx                      # imm = 0x104
	jmp	.LBB4_21
.LBB4_79:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp60:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp61:
# %bb.80:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$261, %ecx                      # imm = 0x105
	jmp	.LBB4_21
.LBB4_77:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp72:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp73:
# %bb.78:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$271, %ecx                      # imm = 0x10F
	jmp	.LBB4_21
.LBB4_100:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rbx
.Ltmp77:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp78:
# %bb.101:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%rbx, %rdi
	movl	$272, %ecx                      # imm = 0x110
	jmp	.LBB4_21
.LBB4_97:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp94:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp95:
# %bb.98:
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_99
.LBB4_111:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp99:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp100:
# %bb.112:
	.cfi_escape 0x2e, 0x00
.LBB4_99:
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$289, %ecx                      # imm = 0x121
	jmp	.LBB4_21
.LBB4_116:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp104:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp105:
# %bb.117:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$290, %ecx                      # imm = 0x122
	jmp	.LBB4_21
.LBB4_121:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp109:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp110:
# %bb.122:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$291, %ecx                      # imm = 0x123
	jmp	.LBB4_21
.LBB4_126:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp114:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp115:
# %bb.127:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$292, %ecx                      # imm = 0x124
	jmp	.LBB4_21
.LBB4_135:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp126:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp127:
# %bb.136:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$294, %ecx                      # imm = 0x126
	jmp	.LBB4_21
.LBB4_156:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp134:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp135:
# %bb.157:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$296, %ecx                      # imm = 0x128
	jmp	.LBB4_21
.LBB4_154:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp153:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp154:
# %bb.155:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$317, %ecx                      # imm = 0x13D
	jmp	.LBB4_21
.LBB4_167:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp158:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp159:
# %bb.168:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$318, %ecx                      # imm = 0x13E
	jmp	.LBB4_21
.LBB4_173:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp163:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp164:
# %bb.174:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$319, %ecx                      # imm = 0x13F
	jmp	.LBB4_21
.LBB4_178:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp168:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp169:
# %bb.179:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$320, %ecx                      # imm = 0x140
	jmp	.LBB4_21
.LBB4_183:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp173:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp174:
# %bb.184:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$321, %ecx                      # imm = 0x141
	jmp	.LBB4_21
.LBB4_188:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp178:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp179:
# %bb.189:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$322, %ecx                      # imm = 0x142
	jmp	.LBB4_21
.LBB4_193:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp183:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp184:
# %bb.194:                              # %.noexc337
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_198:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp187:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp188:
# %bb.199:                              # %.noexc339
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_206:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp197:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp198:
# %bb.207:                              # %.noexc344
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_208
.LBB4_211:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp201:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp202:
# %bb.212:                              # %.noexc346
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_213
.LBB4_220:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp211:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp212:
# %bb.221:                              # %.noexc351
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_222
.LBB4_225:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp215:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp216:
# %bb.226:                              # %.noexc353
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_227
.LBB4_230:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp219:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp220:
# %bb.231:                              # %.noexc355
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_232
.LBB4_237:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp228:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp229:
# %bb.238:                              # %.noexc380
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_241:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp232:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp233:
# %bb.242:                              # %.noexc382
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_249:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp242:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp243:
# %bb.250:                              # %.noexc387
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_208
.LBB4_253:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp246:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp247:
# %bb.254:                              # %.noexc389
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_213
.LBB4_261:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp256:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp257:
# %bb.262:                              # %.noexc394
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_222
.LBB4_265:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp260:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp261:
# %bb.266:                              # %.noexc396
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_227
.LBB4_269:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp264:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp265:
# %bb.270:                              # %.noexc398
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_232
.LBB4_275:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp273:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp274:
# %bb.276:                              # %.noexc423
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_279:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp277:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp278:
# %bb.280:                              # %.noexc425
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_287:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp287:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp288:
# %bb.288:                              # %.noexc430
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_208
.LBB4_291:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp291:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp292:
# %bb.292:                              # %.noexc432
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_213
.LBB4_299:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp301:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp302:
# %bb.300:                              # %.noexc437
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_222
.LBB4_303:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp305:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp306:
# %bb.304:                              # %.noexc439
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_227
.LBB4_307:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp309:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp310:
# %bb.308:                              # %.noexc441
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_232
.LBB4_313:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp318:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp319:
# %bb.314:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$342, %ecx                      # imm = 0x156
	jmp	.LBB4_21
.LBB4_321:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp323:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp324:
# %bb.322:
	.cfi_escape 0x2e, 0x00
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$343, %ecx                      # imm = 0x157
	jmp	.LBB4_21
.LBB4_326:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp328:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp329:
# %bb.327:                              # %.noexc461
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_330:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp332:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp333:
# %bb.331:                              # %.noexc463
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_338:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp342:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp343:
# %bb.339:                              # %.noexc468
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_208
.LBB4_342:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp346:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp347:
# %bb.343:                              # %.noexc470
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_213
.LBB4_350:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp356:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp357:
# %bb.351:                              # %.noexc475
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_222
.LBB4_354:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp360:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp361:
# %bb.355:                              # %.noexc477
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_227
.LBB4_358:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp364:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp365:
# %bb.359:                              # %.noexc479
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_232
.LBB4_364:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp373:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp374:
# %bb.365:                              # %.noexc504
	.cfi_escape 0x2e, 0x00
	jmp	.LBB4_195
.LBB4_368:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp377:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp378:
# %bb.369:                              # %.noexc506
	.cfi_escape 0x2e, 0x00
.LBB4_195:                              # %.noexc337
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$219, %ecx
	jmp	.LBB4_21
.LBB4_376:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp387:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp388:
# %bb.377:                              # %.noexc511
	.cfi_escape 0x2e, 0x00
.LBB4_208:                              # %.noexc344
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$221, %ecx
	jmp	.LBB4_21
.LBB4_380:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp391:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp392:
# %bb.381:                              # %.noexc513
	.cfi_escape 0x2e, 0x00
.LBB4_213:                              # %.noexc346
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$222, %ecx
	jmp	.LBB4_21
.LBB4_388:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp401:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp402:
# %bb.389:                              # %.noexc518
	.cfi_escape 0x2e, 0x00
.LBB4_222:                              # %.noexc351
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$224, %ecx
	jmp	.LBB4_21
.LBB4_392:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp405:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp406:
# %bb.393:                              # %.noexc520
	.cfi_escape 0x2e, 0x00
.LBB4_227:                              # %.noexc353
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$225, %ecx
	jmp	.LBB4_21
.LBB4_396:
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %r14
.Ltmp409:
	.cfi_escape 0x2e, 0x00
	movl	%eax, %edi
	callq	hipGetErrorString@PLT
.Ltmp410:
# %bb.397:                              # %.noexc522
	.cfi_escape 0x2e, 0x00
.LBB4_232:                              # %.noexc355
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	movq	%r14, %rdi
	movl	$227, %ecx
.LBB4_21:
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	fprintf@PLT
	.cfi_escape 0x2e, 0x00
	movl	$1, %edi
	callq	exit@PLT
.LBB4_161:
.Ltmp142:
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	movq	208(%rsp), %rbp                 # 8-byte Reload
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	184(%rsp), %r13                 # 8-byte Reload
	jmp	.LBB4_405
.LBB4_160:
.Ltmp139:
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_406
.LBB4_158:
.Ltmp131:
	jmp	.LBB4_106
.LBB4_104:
.Ltmp85:
	movq	%rax, %r13
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_409
.LBB4_103:
.Ltmp82:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_65:
.Ltmp45:
	movq	%rax, %r13
	jmp	.LBB4_411
.LBB4_64:
.Ltmp42:
	jmp	.LBB4_34
.LBB4_24:
.Ltmp8:
	movq	%rax, %r13
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_413
.LBB4_23:
.Ltmp5:
	movq	%rax, %r13
	jmp	.LBB4_414
.LBB4_22:
.Ltmp2:
	movq	%rax, %r13
	jmp	.LBB4_415
.LBB4_323:
.Ltmp325:
	jmp	.LBB4_403
.LBB4_318:
.Ltmp320:
	jmp	.LBB4_403
.LBB4_190:
.Ltmp180:
	jmp	.LBB4_170
.LBB4_185:
.Ltmp175:
	jmp	.LBB4_170
.LBB4_180:
.Ltmp170:
	jmp	.LBB4_170
.LBB4_175:
.Ltmp165:
	jmp	.LBB4_170
.LBB4_169:
.Ltmp160:
	jmp	.LBB4_170
.LBB4_164:
.Ltmp155:
	jmp	.LBB4_403
.LBB4_159:
.Ltmp136:
	movq	%rax, %r13
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_407
.LBB4_137:
.Ltmp128:
	jmp	.LBB4_106
.LBB4_128:
.Ltmp116:
	jmp	.LBB4_106
.LBB4_123:
.Ltmp111:
	jmp	.LBB4_106
.LBB4_118:
.Ltmp106:
	jmp	.LBB4_106
.LBB4_113:
.Ltmp101:
	jmp	.LBB4_106
.LBB4_108:
.Ltmp96:
	jmp	.LBB4_106
.LBB4_102:
.Ltmp79:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_82:
.Ltmp74:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_81:
.Ltmp62:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_66:
.Ltmp57:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_49:
.Ltmp39:
	jmp	.LBB4_34
.LBB4_44:
.Ltmp34:
	jmp	.LBB4_34
.LBB4_39:
.Ltmp29:
	jmp	.LBB4_34
.LBB4_33:
.Ltmp24:
.LBB4_34:
	movq	%rax, %r13
	movq	152(%rsp), %rbx                 # 8-byte Reload
	jmp	.LBB4_412
.LBB4_28:
.Ltmp19:
	jmp	.LBB4_26
.LBB4_418:
.Ltmp123:
	jmp	.LBB4_106
.LBB4_417:
.Ltmp69:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_416:
.Ltmp52:
	movq	%rax, %r13
	jmp	.LBB4_410
.LBB4_402:
.Ltmp415:
	jmp	.LBB4_403
.LBB4_401:
.Ltmp370:
	jmp	.LBB4_403
.LBB4_317:
.Ltmp315:
	jmp	.LBB4_170
.LBB4_316:
.Ltmp270:
	jmp	.LBB4_170
.LBB4_315:
.Ltmp225:
.LBB4_170:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit543
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_404
.LBB4_163:
.Ltmp150:
	jmp	.LBB4_403
.LBB4_107:
.Ltmp91:
	jmp	.LBB4_106
.LBB4_105:
.Ltmp88:
.LBB4_106:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit549
	movq	%rax, %r13
	movq	(%rsp), %r14                    # 8-byte Reload
	jmp	.LBB4_408
.LBB4_27:
.Ltmp14:
	jmp	.LBB4_26
.LBB4_25:
.Ltmp11:
.LBB4_26:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit557
	movq	%rax, %r13
	movq	(%rsp), %r14                    # 8-byte Reload
	movq	152(%rsp), %rbx                 # 8-byte Reload
	jmp	.LBB4_412
.LBB4_162:
.Ltmp147:
.LBB4_403:
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	movq	208(%rsp), %rbp                 # 8-byte Reload
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	184(%rsp), %r13                 # 8-byte Reload
.LBB4_404:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit543
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	256(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
.LBB4_405:                              # %_ZNSt6vectorI7__half2SaIS0_EED2Ev.exit545
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	%r13, %rdi
	callq	_ZdlPvm@PLT
.LBB4_406:
	movq	160(%rsp), %r13                 # 8-byte Reload
.LBB4_407:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit547
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	%r12, %rdi
	callq	_ZdlPvm@PLT
.LBB4_408:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit549
	.cfi_escape 0x2e, 0x00
	movl	$4194304, %esi                  # imm = 0x400000
	movq	%rbp, %rdi
	callq	_ZdlPvm@PLT
.LBB4_409:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit551
	.cfi_escape 0x2e, 0x00
	movl	$512, %esi                      # imm = 0x200
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
.LBB4_410:                              # %_ZNSt6vectorIfSaIfEED2Ev.exit553
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	216(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
.LBB4_411:                              # %_ZNSt6vectorIfSaIfEED2Ev.exit555
	movq	152(%rsp), %rbx                 # 8-byte Reload
	.cfi_escape 0x2e, 0x00
	movl	$32768, %esi                    # imm = 0x8000
	movq	232(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
.LBB4_412:                              # %_ZNSt6vectorIfSaIfEED2Ev.exit557
	.cfi_escape 0x2e, 0x00
	movl	$16777216, %esi                 # imm = 0x1000000
	movq	%rbx, %rdi
	callq	_ZdlPvm@PLT
.LBB4_413:                              # %_ZNSt6vectorIfSaIfEED2Ev.exit559
	.cfi_escape 0x2e, 0x00
	movl	$2048, %esi                     # imm = 0x800
	movq	%r15, %rdi
	callq	_ZdlPvm@PLT
.LBB4_414:                              # %_ZNSt6vectorI6__halfSaIS0_EED2Ev.exit561
	.cfi_escape 0x2e, 0x00
	movl	$8388608, %esi                  # imm = 0x800000
	movq	%r14, %rdi
	callq	_ZdlPvm@PLT
.LBB4_415:                              # %_ZNSt6vectorI6__halfSaIS0_EED2Ev.exit563
	.cfi_escape 0x2e, 0x00
	movl	$1024, %esi                     # imm = 0x400
	movq	264(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPvm@PLT
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp51-.Ltmp46                #   Call between .Ltmp46 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp68-.Ltmp63                #   Call between .Ltmp63 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin0          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp83-.Ltmp81                #   Call between .Ltmp81 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin0          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp101-.Lfunc_begin0         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp116-.Lfunc_begin0         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp122-.Ltmp117              #   Call between .Ltmp117 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin0         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp136-.Lfunc_begin0         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin0         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp140-.Ltmp138              #   Call between .Ltmp138 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin0         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp143-.Ltmp141              #   Call between .Ltmp141 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp146-.Ltmp143              #   Call between .Ltmp143 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin0         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp148-.Ltmp146              #   Call between .Ltmp146 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp224-.Ltmp181              #   Call between .Ltmp181 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin0         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp269-.Ltmp226              #   Call between .Ltmp226 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin0         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp314-.Ltmp271              #   Call between .Ltmp271 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin0         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp325-.Lfunc_begin0         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp369-.Ltmp326              #   Call between .Ltmp326 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin0         #     jumps to .Ltmp370
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp414-.Ltmp371              #   Call between .Ltmp371 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin0         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp17-.Ltmp414               #   Call between .Ltmp414 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 65 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 66 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 67 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 68 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 71 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 72 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 73 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin0          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin0          # >> Call Site 74 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin0         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin0         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin0         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin0         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp220-.Ltmp183              #   Call between .Ltmp183 and .Ltmp220
	.uleb128 .Ltmp225-.Lfunc_begin0         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp265-.Ltmp228              #   Call between .Ltmp228 and .Ltmp265
	.uleb128 .Ltmp270-.Lfunc_begin0         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp310-.Ltmp273              #   Call between .Ltmp273 and .Ltmp310
	.uleb128 .Ltmp315-.Lfunc_begin0         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin0         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin0         # >> Call Site 91 <<
	.uleb128 .Ltmp365-.Ltmp328              #   Call between .Ltmp328 and .Ltmp365
	.uleb128 .Ltmp370-.Lfunc_begin0         #     jumps to .Ltmp370
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin0         # >> Call Site 92 <<
	.uleb128 .Ltmp410-.Ltmp373              #   Call between .Ltmp373 and .Ltmp410
	.uleb128 .Ltmp415-.Lfunc_begin0         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin0         # >> Call Site 93 <<
	.uleb128 .Lfunc_end4-.Ltmp410           #   Call between .Ltmp410 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
.LCPI5_0:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI5_1:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI5_2:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
.LCPI5_5:
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.zero	4
	.zero	4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI5_3:
	.long	0x2f800000                      # float 2.32830644E-10
.LCPI5_4:
	.long	0x3f800000                      # float 1
.LCPI5_6:
	.long	0xc0000000                      # float -2
	.section	.text._ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.p2align	4
	.type	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE,@function
_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE: # @_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rdi, %r14
	cmpb	$0, 12(%rdi)
	je	.LBB5_1
# %bb.23:
	movb	$0, 12(%r14)
	movss	8(%r14), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB5_22
.LBB5_1:                                # %.preheader
	movl	$2567483615, %eax               # imm = 0x9908B0DF
	movq	4992(%rsi), %rdx
	movaps	.LCPI5_0(%rip), %xmm12          # xmm12 = [18446744071562067968,18446744071562067968]
	movaps	.LCPI5_1(%rip), %xmm1           # xmm1 = [2147483646,2147483646]
	movdqa	.LCPI5_2(%rip), %xmm2           # xmm2 = [2567483615,2567483615]
	movq	$-2147483648, %rcx              # imm = 0x80000000
	movss	.LCPI5_3(%rip), %xmm3           # xmm3 = [2.32830644E-10,0.0E+0,0.0E+0,0.0E+0]
	movss	.LCPI5_4(%rip), %xmm4           # xmm4 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movaps	.LCPI5_5(%rip), %xmm5           # xmm5 = [-1.0E+0,-1.0E+0,u,u]
	xorps	%xmm6, %xmm6
	.p2align	4
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
	cmpq	$624, %rdx                      # imm = 0x270
	jb	.LBB5_8
# %bb.3:                                # %vector.ph85
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%rsi), %xmm7                   # xmm7 = mem[0],zero
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4
.LBB5_4:                                # %vector.body86
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	%xmm7, %xmm8
	movups	8(%rsi,%rdx,8), %xmm7
	shufps	$78, %xmm7, %xmm8               # xmm8 = xmm8[2,3],xmm7[0,1]
	andps	%xmm12, %xmm8
	movaps	%xmm7, %xmm9
	andps	%xmm1, %xmm9
	orps	%xmm8, %xmm9
	movdqu	3176(%rsi,%rdx,8), %xmm8
	psrlq	$1, %xmm9
	movaps	%xmm7, %xmm10
	pslld	$31, %xmm10
	psrad	$31, %xmm10
	pand	%xmm2, %xmm10
	pxor	%xmm8, %xmm10
	pxor	%xmm9, %xmm10
	movdqu	%xmm10, (%rsi,%rdx,8)
	addq	$2, %rdx
	cmpq	$226, %rdx
	jne	.LBB5_4
# %bb.5:                                # %vector.ph71
                                        #   in Loop: Header=BB5_2 Depth=1
	pshufd	$238, %xmm7, %xmm7              # xmm7 = xmm7[2,3,2,3]
	movq	%xmm7, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	1816(%rsi), %rdi
	movl	%edi, %r8d
	movl	%edi, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	orq	%rdx, %r9
	shrq	%r9
	xorq	4984(%rsi), %r9
	movq	%rdi, %xmm7
	andl	$1, %r8d
	negl	%r8d
	andl	%eax, %r8d
	xorq	%r9, %r8
	movq	%r8, 1808(%rsi)
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	movl	$228, %edx
	.p2align	4
.LBB5_6:                                # %vector.body72
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rsi,%rdx,8), %xmm8
	shufps	$78, %xmm8, %xmm7               # xmm7 = xmm7[2,3],xmm8[0,1]
	andps	%xmm12, %xmm7
	movaps	%xmm8, %xmm9
	andps	%xmm1, %xmm9
	orps	%xmm7, %xmm9
	movdqu	-1824(%rsi,%rdx,8), %xmm10
	psrlq	$1, %xmm9
	movaps	%xmm8, %xmm7
	pslld	$31, %xmm8
	psrad	$31, %xmm8
	pand	%xmm2, %xmm8
	pxor	%xmm10, %xmm8
	pxor	%xmm9, %xmm8
	movdqu	%xmm8, -8(%rsi,%rdx,8)
	addq	$2, %rdx
	cmpq	$624, %rdx                      # imm = 0x270
	jne	.LBB5_6
# %bb.7:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	4984(%rsi), %rdx
	andq	%rcx, %rdx
	movq	(%rsi), %rdi
	movl	%edi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rdx, %r8
	shrq	%r8
	xorq	3168(%rsi), %r8
	andl	$1, %edi
	negl	%edi
	andl	%eax, %edi
	xorq	%r8, %rdi
	movq	%rdi, 4984(%rsi)
	xorl	%edx, %edx
.LBB5_8:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rdx, %rdi
	incq	%rdx
	movq	%rdx, 4992(%rsi)
	movq	(%rsi,%rdi,8), %rdi
	movq	%rdi, %r8
	shrq	$11, %r8
	movl	%r8d, %r8d
	xorq	%rdi, %r8
	movl	%r8d, %edi
	shll	$7, %edi
	andl	$-1658038656, %edi              # imm = 0x9D2C5680
	xorq	%r8, %rdi
	movl	%edi, %r8d
	shll	$15, %r8d
	andl	$-272236544, %r8d               # imm = 0xEFC60000
	xorq	%rdi, %r8
	movq	%r8, %rdi
	shrq	$18, %rdi
	xorl	%r8d, %edi
	xorps	%xmm11, %xmm11
	cvtsi2ss	%rdi, %xmm11
	mulss	%xmm3, %xmm11
	ucomiss	%xmm11, %xmm4
	jbe	.LBB5_2
	jmp	.LBB5_9
	.p2align	4
.LBB5_15:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit32
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	%rdx, %rdi
	incq	%rdx
	movq	%rdx, 4992(%rsi)
	movq	(%rsi,%rdi,8), %rdi
	movq	%rdi, %r8
	shrq	$11, %r8
	movl	%r8d, %r8d
	xorq	%rdi, %r8
	movl	%r8d, %edi
	shll	$7, %edi
	andl	$-1658038656, %edi              # imm = 0x9D2C5680
	xorq	%r8, %rdi
	movl	%edi, %r8d
	shll	$15, %r8d
	andl	$-272236544, %r8d               # imm = 0xEFC60000
	xorq	%rdi, %r8
	movq	%r8, %rdi
	shrq	$18, %rdi
	xorl	%r8d, %edi
	xorps	%xmm7, %xmm7
	cvtsi2ss	%rdi, %xmm7
	mulss	%xmm3, %xmm7
	ucomiss	%xmm7, %xmm4
	ja	.LBB5_16
.LBB5_9:                                # %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_11 Depth 3
                                        #       Child Loop BB5_13 Depth 3
	cmpq	$624, %rdx                      # imm = 0x270
	jb	.LBB5_15
# %bb.10:                               # %vector.ph58
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	(%rsi), %xmm7                   # xmm7 = mem[0],zero
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4
.LBB5_11:                               # %vector.body59
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqa	%xmm7, %xmm8
	movups	8(%rsi,%rdx,8), %xmm7
	shufps	$78, %xmm7, %xmm8               # xmm8 = xmm8[2,3],xmm7[0,1]
	andps	%xmm12, %xmm8
	movaps	%xmm7, %xmm9
	andps	%xmm1, %xmm9
	orps	%xmm8, %xmm9
	movdqu	3176(%rsi,%rdx,8), %xmm8
	psrlq	$1, %xmm9
	movaps	%xmm7, %xmm10
	pslld	$31, %xmm10
	psrad	$31, %xmm10
	pand	%xmm2, %xmm10
	pxor	%xmm8, %xmm10
	pxor	%xmm9, %xmm10
	movdqu	%xmm10, (%rsi,%rdx,8)
	addq	$2, %rdx
	cmpq	$226, %rdx
	jne	.LBB5_11
# %bb.12:                               # %vector.ph
                                        #   in Loop: Header=BB5_9 Depth=2
	pshufd	$238, %xmm7, %xmm7              # xmm7 = xmm7[2,3,2,3]
	movq	%xmm7, %rdx
	andq	$-2147483648, %rdx              # imm = 0x80000000
	movq	1816(%rsi), %rdi
	movl	%edi, %r8d
	movl	%edi, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	orq	%rdx, %r9
	shrq	%r9
	xorq	4984(%rsi), %r9
	movq	%rdi, %xmm7
	andl	$1, %r8d
	negl	%r8d
	andl	%eax, %r8d
	xorq	%r9, %r8
	movq	%r8, 1808(%rsi)
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	movl	$228, %edx
	.p2align	4
.LBB5_13:                               # %vector.body
                                        #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rsi,%rdx,8), %xmm8
	shufps	$78, %xmm8, %xmm7               # xmm7 = xmm7[2,3],xmm8[0,1]
	andps	%xmm12, %xmm7
	movaps	%xmm8, %xmm9
	andps	%xmm1, %xmm9
	orps	%xmm7, %xmm9
	movdqu	-1824(%rsi,%rdx,8), %xmm10
	psrlq	$1, %xmm9
	movaps	%xmm8, %xmm7
	pslld	$31, %xmm8
	psrad	$31, %xmm8
	pand	%xmm2, %xmm8
	pxor	%xmm10, %xmm8
	pxor	%xmm9, %xmm8
	movdqu	%xmm8, -8(%rsi,%rdx,8)
	addq	$2, %rdx
	cmpq	$624, %rdx                      # imm = 0x270
	jne	.LBB5_13
# %bb.14:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i30
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	4984(%rsi), %rdx
	andq	%rcx, %rdx
	movq	(%rsi), %rdi
	movl	%edi, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	orq	%rdx, %r8
	shrq	%r8
	xorq	3168(%rsi), %r8
	andl	$1, %edi
	negl	%edi
	andl	%eax, %edi
	xorq	%r8, %rdi
	movq	%rdi, 4984(%rsi)
	xorl	%edx, %edx
	jmp	.LBB5_15
	.p2align	4
.LBB5_16:                               # %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit18
                                        #   in Loop: Header=BB5_2 Depth=1
	unpcklps	%xmm7, %xmm11                   # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	addps	%xmm11, %xmm11
	addps	%xmm5, %xmm11
	movaps	%xmm11, %xmm7
	mulps	%xmm11, %xmm7
	movaps	%xmm7, %xmm0
	shufps	$85, %xmm7, %xmm0               # xmm0 = xmm0[1,1],xmm7[1,1]
	addss	%xmm7, %xmm0
	ucomiss	%xmm4, %xmm0
	ja	.LBB5_2
# %bb.17:                               # %_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEfEclEv.exit18
                                        #   in Loop: Header=BB5_2 Depth=1
	ucomiss	%xmm6, %xmm0
	jne	.LBB5_18
	jnp	.LBB5_2
.LBB5_18:
	movaps	%xmm11, 16(%rsp)                # 16-byte Spill
	movaps	%xmm0, (%rsp)                   # 16-byte Spill
	callq	logf@PLT
	mulss	.LCPI5_6(%rip), %xmm0
	divss	(%rsp), %xmm0                   # 16-byte Folded Reload
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB5_20
# %bb.19:
	sqrtss	%xmm0, %xmm0
	jmp	.LBB5_21
.LBB5_20:                               # %call.sqrt
	callq	sqrtf@PLT
.LBB5_21:                               # %.split
	movaps	16(%rsp), %xmm2                 # 16-byte Reload
	movaps	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, 8(%r14)
	movb	$1, 12(%r14)
	shufps	$85, %xmm2, %xmm2               # xmm2 = xmm2[1,1,1,1]
	mulss	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
.LBB5_22:
	mulss	4(%rbx), %xmm0
	addss	(%rbx), %xmm0
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE, .Lfunc_end5-_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
.LCPI6_0:
	.quad	-2147483648                     # 0xffffffff80000000
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI6_1:
	.quad	2147483646                      # 0x7ffffffe
	.quad	2147483646                      # 0x7ffffffe
.LCPI6_2:
	.quad	2567483615                      # 0x9908b0df
	.quad	2567483615                      # 0x9908b0df
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	4
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	movq	4992(%rdi), %rax
	cmpq	$624, %rax                      # imm = 0x270
	jb	.LBB6_6
# %bb.1:                                # %vector.ph
	movq	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	pshufd	$68, %xmm0, %xmm3               # xmm3 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	movaps	.LCPI6_0(%rip), %xmm0           # xmm0 = [18446744071562067968,18446744071562067968]
	movaps	.LCPI6_1(%rip), %xmm1           # xmm1 = [2147483646,2147483646]
	movdqa	.LCPI6_2(%rip), %xmm2           # xmm2 = [2567483615,2567483615]
	.p2align	4
.LBB6_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm3, %xmm4
	movups	8(%rdi,%rax,8), %xmm3
	shufps	$78, %xmm3, %xmm4               # xmm4 = xmm4[2,3],xmm3[0,1]
	andps	%xmm0, %xmm4
	movaps	%xmm3, %xmm5
	andps	%xmm1, %xmm5
	orps	%xmm4, %xmm5
	movdqu	3176(%rdi,%rax,8), %xmm4
	psrlq	$1, %xmm5
	movaps	%xmm3, %xmm6
	pslld	$31, %xmm6
	psrad	$31, %xmm6
	pand	%xmm2, %xmm6
	pxor	%xmm4, %xmm6
	pxor	%xmm5, %xmm6
	movdqu	%xmm6, (%rdi,%rax,8)
	addq	$2, %rax
	cmpq	$226, %rax
	jne	.LBB6_2
# %bb.3:                                # %vector.ph11
	movl	$2567483615, %eax               # imm = 0x9908B0DF
	pshufd	$238, %xmm3, %xmm3              # xmm3 = xmm3[2,3,2,3]
	movq	%xmm3, %rcx
	andq	$-2147483648, %rcx              # imm = 0x80000000
	movq	1816(%rdi), %rdx
	movl	%edx, %esi
	movq	%rdx, %xmm3
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rcx, %rdx
	shrq	%rdx
	xorq	4984(%rdi), %rdx
	andl	$1, %esi
	negl	%esi
	movl	$2567483615, %ecx               # imm = 0x9908B0DF
	andl	%esi, %ecx
	xorq	%rdx, %rcx
	movq	%rcx, 1808(%rdi)
	pshufd	$68, %xmm3, %xmm3               # xmm3 = xmm3[0,1,0,1]
	movl	$228, %ecx
	.p2align	4
.LBB6_4:                                # %vector.body12
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdi,%rcx,8), %xmm4
	shufps	$78, %xmm4, %xmm3               # xmm3 = xmm3[2,3],xmm4[0,1]
	andps	%xmm0, %xmm3
	movaps	%xmm4, %xmm5
	andps	%xmm1, %xmm5
	orps	%xmm3, %xmm5
	movdqu	-1824(%rdi,%rcx,8), %xmm6
	psrlq	$1, %xmm5
	movaps	%xmm4, %xmm3
	pslld	$31, %xmm4
	psrad	$31, %xmm4
	pand	%xmm2, %xmm4
	pxor	%xmm6, %xmm4
	pxor	%xmm5, %xmm4
	movdqu	%xmm4, -8(%rdi,%rcx,8)
	addq	$2, %rcx
	cmpq	$624, %rcx                      # imm = 0x270
	jne	.LBB6_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	movq	$-2147483648, %rcx              # imm = 0x80000000
	andq	4984(%rdi), %rcx
	movq	(%rdi), %rdx
	movl	%edx, %esi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	orq	%rcx, %rsi
	shrq	%rsi
	xorq	3168(%rdi), %rsi
	andl	$1, %edx
	negl	%edx
	andl	%eax, %edx
	xorq	%rsi, %rdx
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
.LBB6_6:
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%rdi)
	movq	(%rdi,%rax,8), %rax
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rax, %rcx
	movl	%ecx, %eax
	shll	$7, %eax
	andl	$-1658038656, %eax              # imm = 0x9D2C5680
	xorq	%rcx, %rax
	movl	%eax, %ecx
	shll	$15, %ecx
	andl	$-272236544, %ecx               # imm = 0xEFC60000
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$18, %rax
	xorq	%rcx, %rax
	retq
.Lfunc_end6:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end6-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.p2align	4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movslq	4(%rdx), %r15
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movslq	(%rdx), %rax
	subq	%rax, %r15
	movl	$4294967294, %eax               # imm = 0xFFFFFFFE
	cmpq	%rax, %r15
	ja	.LBB7_6
# %bb.1:
	leal	1(%r15), %r12d
	movq	%r14, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	imulq	%r12, %rax
	cmpl	%eax, %r15d
	jb	.LBB7_5
# %bb.2:
	notl	%r15d
	movq	%rax, %rcx
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	movq	%rcx, %rax
	cmpl	%eax, %edx
	jbe	.LBB7_5
# %bb.3:                                # %.lr.ph.i.preheader
	movl	%edx, %ebp
	.p2align	4
.LBB7_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	imulq	%r12, %rax
	cmpl	%eax, %ebp
	ja	.LBB7_4
.LBB7_5:                                # %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	shrq	$32, %rax
	jmp	.LBB7_10
.LBB7_6:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	cmpq	%rax, %r15
	jne	.LBB7_7
# %bb.9:
	movq	%r14, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	jmp	.LBB7_10
.LBB7_7:                                # %.preheader
	movq	%rdi, %r12
	movabsq	$-4294967296, %rbx              # imm = 0xFFFFFFFF00000000
	leaq	16(%rsp), %r13
	.p2align	4
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, 16(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	movl	%eax, %ebp
	shlq	$32, %rbp
	movq	%r14, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	addq	%rbp, %rax
	setb	%cl
	cmpq	%r15, %rax
	seta	%dl
	orb	%cl, %dl
	jne	.LBB7_8
.LBB7_10:                               # %.loopexit
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addl	(%rcx), %eax
                                        # kill: def $eax killed $eax killed $rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end7-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi,"axG",@progbits,_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi,comdat
	.weak	_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi # -- Begin function _Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi
	.p2align	4
	.type	_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi,@function
_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi: # @_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 12(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	movq	_Z9bench_rawILi0EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	retq
.Lfunc_end8:
	.size	_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi, .Lfunc_end8-_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi,"axG",@progbits,_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi,comdat
	.weak	_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi # -- Begin function _Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi
	.p2align	4
	.type	_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi,@function
_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi: # @_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 12(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	48(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	48(%rsp), %rsi
	movl	56(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	40(%rsp), %r8d
	movq	_Z9bench_rawILi1EEvPK7__half2Pfi@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	16(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	32(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	retq
.Lfunc_end9:
	.size	_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi, .Lfunc_end9-_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi
	.cfi_endproc
                                        # -- End function
	.section	.text._Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii,"axG",@progbits,_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii,comdat
	.weak	_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii # -- Begin function _Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii
	.p2align	4
	.type	_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii,@function
_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii: # @_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	_Z12bench_streamILi0EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end10:
	.size	_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii, .Lfunc_end10-_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii
	.cfi_endproc
                                        # -- End function
	.section	.text._Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii,"axG",@progbits,_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii,comdat
	.weak	_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii # -- Begin function _Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii
	.p2align	4
	.type	_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii,@function
_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii: # @_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r8d, (%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration@PLT
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	movq	_Z12bench_streamILi1EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rdi
	leaq	80(%rsp), %r9
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel@PLT
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end11:
	.size	_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii, .Lfunc_end11-_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4                               # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	__hip_gpubin_handle_b1e4d951e7e1a1e7(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB12_2
# %bb.1:
	leaq	__hip_fatbin_wrapper(%rip), %rdi
	callq	__hipRegisterFatBinary@PLT
	movq	%rax, %rbx
	movq	%rax, __hip_gpubin_handle_b1e4d951e7e1a1e7(%rip)
.LBB12_2:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z10k_dot2_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_1(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z9k_fma_f16PK6__halfS1_Pfii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_2(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z9k_dot4_i8PKiS0_Piii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_3(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z12bench_raw_i8PKiPii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_4(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z9bench_rawILi0EEvPK7__half2Pfi@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_5(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z9bench_rawILi1EEvPK7__half2Pfi@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_6(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z12bench_streamILi0EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_7(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	_Z12bench_streamILi1EEvPK6__halfS2_Pfii@GOTPCREL(%rip), %rsi
	leaq	.L__unnamed_8(%rip), %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction@PLT
	leaq	__hip_module_dtor(%rip), %rdi
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	atexit@PLT                      # TAILCALL
.Lfunc_end12:
	.size	__hip_module_ctor, .Lfunc_end12-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4                               # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	movq	__hip_gpubin_handle_b1e4d951e7e1a1e7(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB13_2
# %bb.1:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__hipUnregisterFatBinary@PLT
	movq	$0, __hip_gpubin_handle_b1e4d951e7e1a1e7(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB13_2:
	retq
.Lfunc_end13:
	.size	__hip_module_dtor, .Lfunc_end13-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_Z10k_dot2_f16PK6__halfS1_Pfii,@object # @_Z10k_dot2_f16PK6__halfS1_Pfii
	.section	.data.rel.ro,"aw",@progbits
	.globl	_Z10k_dot2_f16PK6__halfS1_Pfii
	.p2align	3, 0x0
_Z10k_dot2_f16PK6__halfS1_Pfii:
	.quad	_Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii
	.size	_Z10k_dot2_f16PK6__halfS1_Pfii, 8

	.type	_Z9k_fma_f16PK6__halfS1_Pfii,@object # @_Z9k_fma_f16PK6__halfS1_Pfii
	.globl	_Z9k_fma_f16PK6__halfS1_Pfii
	.p2align	3, 0x0
_Z9k_fma_f16PK6__halfS1_Pfii:
	.quad	_Z24__device_stub__k_fma_f16PK6__halfS1_Pfii
	.size	_Z9k_fma_f16PK6__halfS1_Pfii, 8

	.type	_Z9k_dot4_i8PKiS0_Piii,@object  # @_Z9k_dot4_i8PKiS0_Piii
	.globl	_Z9k_dot4_i8PKiS0_Piii
	.p2align	3, 0x0
_Z9k_dot4_i8PKiS0_Piii:
	.quad	_Z24__device_stub__k_dot4_i8PKiS0_Piii
	.size	_Z9k_dot4_i8PKiS0_Piii, 8

	.type	_Z12bench_raw_i8PKiPii,@object  # @_Z12bench_raw_i8PKiPii
	.globl	_Z12bench_raw_i8PKiPii
	.p2align	3, 0x0
_Z12bench_raw_i8PKiPii:
	.quad	_Z27__device_stub__bench_raw_i8PKiPii
	.size	_Z12bench_raw_i8PKiPii, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HIP %s:%d -> %s\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"probe_dot.hip"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"dot2_f16  D=%d NK=%d  max_abs=%.3e  max_rel=%.3e\n"
	.size	.L.str.2, 50

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"fma_f16   D=%d NK=%d  max_abs=%.3e  max_rel=%.3e\n"
	.size	.L.str.3, 50

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"dot4_i8   D=%d NK=%d  mismatches=%d\n"
	.size	.L.str.4, 37

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"raw fma_f16 : %8.2f ms -> %6.2f TFLOPS\n"
	.size	.L.str.5, 40

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"raw dot2_f16: %8.2f ms -> %6.2f TFLOPS\n"
	.size	.L.str.6, 40

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"raw dot4_i8 : %8.2f ms -> %6.2f TIOPS\n"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"stream fma  : %8.2f ms -> %6.2f TFLOPS\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"stream dot2 : %8.2f ms -> %6.2f TFLOPS\n"
	.size	.L.str.9, 40

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"speedup: raw %.2fx  stream %.2fx\n"
	.size	.L.str.10, 34

	.type	_Z9bench_rawILi0EEvPK7__half2Pfi,@object # @_Z9bench_rawILi0EEvPK7__half2Pfi
	.section	.data.rel.ro._Z9bench_rawILi0EEvPK7__half2Pfi,"awG",@progbits,_Z9bench_rawILi0EEvPK7__half2Pfi,comdat
	.weak	_Z9bench_rawILi0EEvPK7__half2Pfi
	.p2align	3, 0x0
_Z9bench_rawILi0EEvPK7__half2Pfi:
	.quad	_Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi
	.size	_Z9bench_rawILi0EEvPK7__half2Pfi, 8

	.type	_Z9bench_rawILi1EEvPK7__half2Pfi,@object # @_Z9bench_rawILi1EEvPK7__half2Pfi
	.section	.data.rel.ro._Z9bench_rawILi1EEvPK7__half2Pfi,"awG",@progbits,_Z9bench_rawILi1EEvPK7__half2Pfi,comdat
	.weak	_Z9bench_rawILi1EEvPK7__half2Pfi
	.p2align	3, 0x0
_Z9bench_rawILi1EEvPK7__half2Pfi:
	.quad	_Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi
	.size	_Z9bench_rawILi1EEvPK7__half2Pfi, 8

	.type	_Z12bench_streamILi0EEvPK6__halfS2_Pfii,@object # @_Z12bench_streamILi0EEvPK6__halfS2_Pfii
	.section	.data.rel.ro._Z12bench_streamILi0EEvPK6__halfS2_Pfii,"awG",@progbits,_Z12bench_streamILi0EEvPK6__halfS2_Pfii,comdat
	.weak	_Z12bench_streamILi0EEvPK6__halfS2_Pfii
	.p2align	3, 0x0
_Z12bench_streamILi0EEvPK6__halfS2_Pfii:
	.quad	_Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii
	.size	_Z12bench_streamILi0EEvPK6__halfS2_Pfii, 8

	.type	_Z12bench_streamILi1EEvPK6__halfS2_Pfii,@object # @_Z12bench_streamILi1EEvPK6__halfS2_Pfii
	.section	.data.rel.ro._Z12bench_streamILi1EEvPK6__halfS2_Pfii,"awG",@progbits,_Z12bench_streamILi1EEvPK6__halfS2_Pfii,comdat
	.weak	_Z12bench_streamILi1EEvPK6__halfS2_Pfii
	.p2align	3, 0x0
_Z12bench_streamILi1EEvPK6__halfS2_Pfii:
	.quad	_Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii
	.size	_Z12bench_streamILi1EEvPK6__halfS2_Pfii, 8

	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"_Z10k_dot2_f16PK6__halfS1_Pfii"
	.size	.L__unnamed_1, 31

	.type	.L__unnamed_2,@object           # @1
.L__unnamed_2:
	.asciz	"_Z9k_fma_f16PK6__halfS1_Pfii"
	.size	.L__unnamed_2, 29

	.type	.L__unnamed_3,@object           # @2
.L__unnamed_3:
	.asciz	"_Z9k_dot4_i8PKiS0_Piii"
	.size	.L__unnamed_3, 23

	.type	.L__unnamed_4,@object           # @3
.L__unnamed_4:
	.asciz	"_Z12bench_raw_i8PKiPii"
	.size	.L__unnamed_4, 23

	.type	.L__unnamed_5,@object           # @4
.L__unnamed_5:
	.asciz	"_Z9bench_rawILi0EEvPK7__half2Pfi"
	.size	.L__unnamed_5, 33

	.type	.L__unnamed_6,@object           # @5
.L__unnamed_6:
	.asciz	"_Z9bench_rawILi1EEvPK7__half2Pfi"
	.size	.L__unnamed_6, 33

	.type	.L__unnamed_7,@object           # @6
.L__unnamed_7:
	.asciz	"_Z12bench_streamILi0EEvPK6__halfS2_Pfii"
	.size	.L__unnamed_7, 40

	.type	.L__unnamed_8,@object           # @7
.L__unnamed_8:
	.asciz	"_Z12bench_streamILi1EEvPK6__halfS2_Pfii"
	.size	.L__unnamed_8, 40

	.type	.L__unnamed_9,@object           # @8
	.section	.hip_fatbin,"a",@progbits
	.p2align	12, 0x0
.L__unnamed_9:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\000\000\000\000\000\000\000host-x86_64-unknown-linux-gnu-\000\020\000\000\000\000\000\000\020V\000\000\000\000\000\000\037\000\000\000\000\000\000\000hipv4-amdgcn-amd-amdhsa--gfx906\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\177ELF\002\001\001@\004\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\320Q\000\000\000\000\000\000/\005\000\000@\0008\000\t\000@\000\021\000\017\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\370\001\000\000\000\000\000\000\370\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300$\000\000\000\000\000\000\300$\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000%\000\000\000\000\000\000\0005\000\000\000\000\000\000\0005\000\000\000\000\000\000`\023\000\000\000\000\000\000`\023\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000`8\000\000\000\000\000\000`X\000\000\000\000\000\000`X\000\000\000\000\000\000p\000\000\000\000\000\000\000\240\007\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\3208\000\000\000\000\000\000\320h\000\000\000\000\000\000\320h\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000`8\000\000\000\000\000\000`X\000\000\000\000\000\000`X\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000`8\000\000\000\000\000\000`X\000\000\000\000\000\000`X\000\000\000\000\000\000p\000\000\000\000\000\000\000\240\007\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000p\033\000\000\000\000\000\000p\033\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000\\\033\000\000 \000\000\000AMDGPU\000\000\203\256amdhsa.kernels\230\336\000\021\245.args\334\000\022\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset$\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset(\245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset,\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset.\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset0\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset2\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset4\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset6\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetX\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offset`\245.size\002\253.value_kind\260hidden_grid_dims\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001 \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\276_Z10k_dot2_f16PK6__halfS1_Pfii\273.private_segment_fixed_size\000\253.sgpr_count\026\261.sgpr_spill_count\000\247.symbol\331!_Z10k_dot2_f16PK6__halfS1_Pfii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\022\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\334\000\022\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset$\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset(\245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset,\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset.\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset0\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset2\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset4\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset6\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetX\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offset`\245.size\002\253.value_kind\260hidden_grid_dims\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001 \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\274_Z9k_fma_f16PK6__halfS1_Pfii\273.private_segment_fixed_size\000\253.sgpr_count\016\261.sgpr_spill_count\000\247.symbol\277_Z9k_fma_f16PK6__halfS1_Pfii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\007\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\334\000\022\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\203\247.offset \245.size\004\253.value_kind\264hidden_block_count_x\203\247.offset$\245.size\004\253.value_kind\264hidden_block_count_y\203\247.offset(\245.size\004\253.value_kind\264hidden_block_count_z\203\247.offset,\245.size\002\253.value_kind\263hidden_group_size_x\203\247.offset.\245.size\002\253.value_kind\263hidden_group_size_y\203\247.offset0\245.size\002\253.value_kind\263hidden_group_size_z\203\247.offset2\245.size\002\253.value_kind\262hidden_remainder_x\203\247.offset4\245.size\002\253.value_kind\262hidden_remainder_y\203\247.offset6\245.size\002\253.value_kind\262hidden_remainder_z\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetX\245.size\b\253.value_kind\266hidden_global_offset_z\203\247.offset`\245.size\002\253.value_kind\260hidden_grid_dims\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\315\001 \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\004\000\245.name\266_Z9k_dot4_i8PKiS0_Piii\273.private_segment_fixed_size\000\253.sgpr_count\016\261.sgpr_spill_count\000\247.symbol\271_Z9k_dot4_i8PKiS0_Piii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\007\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\223\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size\024\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\266_Z12bench_raw_i8PKiPii\273.private_segment_fixed_size\000\253.sgpr_count\013\261.sgpr_spill_count\000\247.symbol\271_Z12bench_raw_i8PKiPii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\017\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\223\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\315\020\000\266.kernarg_segment_align\b\265.kernarg_segment_size\024\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\331 _Z9bench_rawILi0EEvPK7__half2Pfi\273.private_segment_fixed_size\000\253.sgpr_count\r\261.sgpr_spill_count\000\247.symbol\331#_Z9bench_rawILi0EEvPK7__half2Pfi.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\024\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\223\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\203\247.offset\020\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\315\020\000\266.kernarg_segment_align\b\265.kernarg_segment_size\024\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\331 _Z9bench_rawILi1EEvPK7__half2Pfi\273.private_segment_fixed_size\000\253.sgpr_count\r\261.sgpr_spill_count\000\247.symbol\331#_Z9bench_rawILi1EEvPK7__half2Pfi.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count\017\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\225\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\315\306\000\266.kernarg_segment_align\b\265.kernarg_segment_size \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\002\000\245.name\331'_Z12bench_streamILi0EEvPK6__halfS2_Pfii\273.private_segment_fixed_size\000\253.sgpr_count\r\261.sgpr_spill_count\000\247.symbol\331*_Z12bench_streamILi0EEvPK6__halfS2_Pfii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_countQ\261.vgpr_spill_count\000\257.wavefront_size@\336\000\021\245.args\225\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\203\247.offset\030\245.size\004\253.value_kind\250by_value\203\247.offset\034\245.size\004\253.value_kind\250by_value\271.group_segment_fixed_size\315\306\000\266.kernarg_segment_align\b\265.kernarg_segment_size \251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\002\000\245.name\331'_Z12bench_streamILi1EEvPK6__halfS2_Pfii\273.private_segment_fixed_size\000\253.sgpr_count\r\261.sgpr_spill_count\000\247.symbol\331*_Z12bench_streamILi1EEvPK6__halfS2_Pfii.kd\270.uniform_work_group_size\001\263.uses_dynamic_stack\302\253.vgpr_count1\261.vgpr_spill_count\000\257.wavefront_size@\255amdhsa.target\271amdgcn-amd-amdhsa--gfx906\256amdhsa.version\222\001\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \000\000\000\021\003\006\000\300\"\000\000\000\000\000\000@\000\000\000\000\000\000\000\260\000\000\000\022\003\007\000\0009\000\000\000\000\000\000\334\001\000\000\000\000\000\000G\001\000\000\021\003\006\000\000$\000\000\000\000\000\000@\000\000\000\000\000\000\000k\001\000\000\022\003\007\000\000@\000\000\000\000\000\000\224\004\000\000\000\000\000\000\177\000\000\000\022\003\007\000\0008\000\000\000\000\000\000\344\000\000\000\000\000\000\000\307\000\000\000\021\003\006\000\200#\000\000\000\000\000\000@\000\000\000\000\000\000\000\223\001\000\000\021\003\006\000@$\000\000\000\000\000\000@\000\000\000\000\000\000\000\276\001\000\000\022\003\007\000\000E\000\000\000\000\000\000`\003\000\000\000\000\000\000B\000\000\000\022\003\007\000\0007\000\000\000\000\000\000\354\000\000\000\000\000\000\000\226\000\000\000\021\003\006\000@#\000\000\000\000\000\000@\000\000\000\000\000\000\000\341\000\000\000\022\003\007\000\000;\000\000\000\000\000\000\024\002\000\000\000\000\000\000\346\001\000\000\021\003\006\000\200$\000\000\000\000\000\000@\000\000\000\000\000\000\000\021\002\000\000\021\000\n\000\320h\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\0005\000\000\000\000\000\000\310\001\000\000\000\000\000\000_\000\000\000\021\003\006\000\000#\000\000\000\000\000\000@\000\000\000\000\000\000\000\002\001\000\000\021\003\006\000\300#\000\000\000\000\000\000@\000\000\000\000\000\000\000&\001\000\000\022\003\007\000\000>\000\000\000\000\000\000\324\001\000\000\000\000\000\000\004\000\000\000\001\000\000\000\004\000\000\000\032\000\000\000\013\004\002\001\000 \000\000\000(A\000\020@@\000\200\000\210\000A\000\002\000\000 \020\000\bM\t\202\001\000\000\000\005\000\000\000\t\000\000\000\016\000\000\000\000~\341a\360\207t\345\350\026\bPQ\370\t\220L\345y.\314\223\177\253,\250\223\007\261&1\\v\215\241B\n\320\226E\352\206\005\374\356F\311\317Wc:\273\002g\344\003\222\363\223\230\206\350\340\203\353h\337\216\022\000\000\000\022\000\000\000\020\000\000\000\000\000\000\000\f\000\000\000\r\000\000\000\007\000\000\000\016\000\000\000\n\000\000\000\021\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\t\000\000\000\000\000\000\000\013\000\000\000\017\000\000\000\000\000\000\000\003\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000_Z10k_dot2_f16PK6__halfS1_Pfii\000_Z10k_dot2_f16PK6__halfS1_Pfii.kd\000_Z9k_fma_f16PK6__halfS1_Pfii\000_Z9k_fma_f16PK6__halfS1_Pfii.kd\000_Z9k_dot4_i8PKiS0_Piii\000_Z9k_dot4_i8PKiS0_Piii.kd\000_Z12bench_raw_i8PKiPii\000_Z12bench_raw_i8PKiPii.kd\000_Z9bench_rawILi0EEvPK7__half2Pfi\000_Z9bench_rawILi0EEvPK7__half2Pfi.kd\000_Z9bench_rawILi1EEvPK7__half2Pfi\000_Z9bench_rawILi1EEvPK7__half2Pfi.kd\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.kd\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.kd\000__hip_cuid_b1e4d951e7e1a1e7\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \001\000\000\000\000\000\000@\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\204\000\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \001\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \001\000\000\000\000\000\000\300\024\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\200\025\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\000\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\024\000\000\000\000\000\000\000@\027\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000D\000\257\000\220\020\000\000\013\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000\032\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\000\257\000\220\020\000\000\013\000\000\000\000\000\000\000\000\306\000\000\000\000\000\000 \000\000\000\000\000\000\000\300\033\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\025\003\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\306\000\000\000\000\000\000 \000\000\000\000\000\000\000\200 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\025\003\257\000\214\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\002\300,\000\000\000\002\002\006\300\030\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\006\000\006\222\006\000\000h\t\000\210}j \200\276e\000\210\277\002\000\n\300\000\000\000\000\202\001\006\300\020\000\000\000\001\004\351\321\000\021\000\002\b\237\004\217\b\004\004\201\004\201\n\220\002\000\217\322\201\002\002\000\b\210\004\277\237\000\002\"+\000\205\277\177\300\214\277\003\002\b~\002\004\0202\004\007\0228\200\002\b~\200\000\204\276\200\001\210\276\200\002\n~\200\002\f~\200\002\016~\000\b\020\200\001\t\021\202\b\003\n\300\000\000\000\000\004\000\205\276\004\204\004\201\b\020\0242\b\220\b\200\t\002\026~\t\200\t\202\005\210\005\201\t\027\0268\005\n\002\277\000\200\\\334\n\000\177\n\177\300\214\277\f\002\034~\r\002\036~\016\002 ~\017\002\"~p\017\214\277\004@\243\323\016\025\022\034\005@\243\323\017\027\026\034\006@\243\323\020\031\032\034\007@\243\323\021\033\036\034\342\377\204\277\004\n\003\277\b\000\204\277!\000\202\277\200\000\204\276\200\002\b~\200\002\n~\200\002\f~\200\002\016~\004\n\003\277\032\000\205\277\200\000\205\276\004\202\210\216\177\300\214\277\000\b\000\200\001\t\001\202\002\b\002\200\003\t\003\202\003\002\020~\002\004\0042\b\007\0068\200\000\002\300\000\000\000\000\004\201\004\201\000\204\000\200\000\200P\334\002\000\177\b\204\004\0042\001\200\001\202\200\006\0068\004\n\004\277\177\300\214\277\002\002\022~p\017\214\277\004@\243\323\t\021\022\034\360\377\205\277\000\000\217\322\202\000\002\000\005\t\004\002\006\005\004\002\177\300\214\277\007\002\006~\006\000\0002\007\005\004\002\003\003\0028\000\200p\334\000\002\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\002\000\002\300,\000\000\000\002\002\006\300\030\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\006\000\006\222\006\000\000h\t\000\210}j \200\276.\000\210\277\002\000\n\300\000\000\000\000\202\001\006\300\020\000\000\000\237\000\002\"\b\202\004\277\200\002\004~\036\000\205\277\002\004\351\321\000\021\000\002\177\300\214\277\003\002\b~\200\002\n~\002\000\217\322\201\004\002\000\002\004\0042\b\237\002\217\b\002\002\201\004\007\0068\002\201\002\220\200\002\b~\000\200P\334\002\000\177\006\300\000\002\300\000\000\000\000\002\301\002\201\000\204\000\200\204\004\0042\001\200\001\202\200\006\0068\002\200\006\277p\000\214\277\004\000\240\323\003\f\022\034\005\030\240\323\003\f\026\034\360\377\204\277\005\t\004\002\000\000\217\322\202\000\002\000\177\300\214\277\007\002\006~\006\000\0002\003\003\0028\000\200p\334\000\002\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\002\000\002\300,\000\000\000\002\002\006\300\030\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\006\000\006\222\006\000\000h\t\000\210}j \200\276,\000\210\277\002\000\n\300\000\000\000\000\202\001\006\300\020\000\000\000\b\201\004\277\237\000\002\"\034\000\205\277\002\004\350\321\000\021\000\002\003\004\350\321\001\021\f\004\177\300\214\277\003\002\b~\002\000\217\322\202\004\002\000\002\004\0042\004\007\0068\200\002\b~\200\000\002\300\000\000\000\000\b\301\b\201\000\204\000\200\000\200P\334\002\000\177\005\204\004\0042\001\200\001\202\200\006\0068\b\200\006\277\177\300\214\277\002\002\f~p\017\214\277\004@\250\323\006\013\022\034\360\377\204\277\001\000\202\277\200\002\b~\000\000\217\322\202\000\002\000\177\300\214\277\007\002\004~\006\000\0002\002\003\0028\000\200p\334\000\004\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\202\001\002\300\020\000\000\000\177\300\214\277\006\201\004\277q\000\205\277\277\000\002&\202\002\f$\201\000\002h\002\000\n\300\000\000\000\000\277\002\002&\202\002\016$\202\000\002h\277\002\002&\202\002\020$\203\000\002h\277\002\002&\202\002\022$\177\300\214\277\000\200P\334\006\000\000\001\000\201P\334\006\000\000\002\000\201P\334\007\000\000\003\000\201P\334\b\000\000\004\000\201P\334\t\000\000\005\200\002\f~\200\000\200\276\200\002\016~\200\002\020~\200\002\022~\200\002\024~\200\002\026~\200\002\030~\200\002\032~\000\203\001\206\001\201\006\277\301\200\352\205\001\202\006\277r\017\214\277\002\007\034\000\301\200\352\205\001\203\006\277q\017\214\277\016\t\034\000\301\200\352\205\000\201\004\201\004\203\005\206\005\201\006\277p\017\214\277\016\013\034\000\301\200\352\205\005\202\006\277\006@\250\323\001\035\032\034\007@\250\323\001\035\036\034\002\007\034\000\301\200\352\205\005\203\006\277\016\t\034\000\301\200\352\205\001\202\001\210\001\201\006\277\016\013\034\000\301\200\352\205\001\202\006\277\r@\250\323\001\0356\034\n@\250\323\001\035*\034\002\007\034\000\301\200\352\205\001\203\006\277\016\t\034\000\301\200\352\205\000\301\001\201\001\203\001\206\001\201\006\277\016\013\034\000\301\200\352\205\001\202\006\277\f@\250\323\001\0352\034\t@\250\323\001\035&\034\002\007\034\000\301\200\352\205\001\203\006\277\004\000\200\276\016\t\034\000\301\200\352\205\006\004\006\277\016\013\034\000\013@\250\323\001\035.\034\b@\250\323\001\035\"\034\300\377\204\277\f\033\002h\001\000\377\321\001\027*\004\001\000\377\321\001\023\"\004\001\000\377\321\001\017\032\004\307\317\000\260\000\002\224}j \200\276\005\000\210\277\202\000\000$\377\002\002~\307\317\377\377\000\200p\334\000\001\002\000\000\000\201\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\201\000\bh\277\b\b&\003\000\n\300\000\000\000\000\003\002\002\300\020\000\000\000\202\b\020$\202\000\bh\277\b\b&\277\000\006&\202\b\022$\203\000\bh\202\006\006$\277\b\b&\202\b\024$\177\300\214\277\000\201P\334\003\000\000\004\000\201P\334\b\000\000\005\000\201P\334\t\000\000\006\000\201P\334\n\000\000\007\202\001\006\300\004\000\000\000\177\300\214\277\006\220\004\217\004\007\004\222\b\000\205\322\004\000\002\000\b\201\004\277\001\000\303\321\001\017 \004\001\000\376\321\001\005\022\002p\017\214\277\000\000\276\331\001\004\000\000\\\000\205\277\001\002\b~\000\006\0042\200\b\0068\000\200P\334\002\000\177\006\200\002\004~\200\000\200\276\200\002\006~\200\002\b~\200\002\n~\200\002\016~\200\002\020~\200\002\022~p\017\214\277\006\027\024~\371\026\026~\006\006\005\000\200\002\f~\000\203\001\206\000\201\004\201\000\301\000\201\f\000\375\321\001\004\005\004\004\203\005\206\001\202\001\210\000\203\006\206\r\000\375\321\005\004\005\004\016\000\375\321\001\004\005\004\017\000\375\321\006\004\005\004\000\000l\330\f\000\000\f\000\000l\330\r\000\000\r\000\000l\330\016\000\000\016\000\000l\330\017\000\000\017\004\000\200\276\177\303\214\277\371\026 ~\f\006\005\000\177\302\214\277\371\026\"~\r\006\005\000\177\301\214\277\371\026$~\016\006\005\000\177\300\214\277\371\026&~\017\006\005\000\013! \n\f\000\240\323\n\031B\024\013# \n\013%\"\n\013'$\n\r\000\240\323\n\033B\024\016\000\240\323\n\035F\024\017\000\240\323\n\037J\024\b\004\006\277\002\031\004\002\t\031\022\002\003\033\006\002\004\035\b\002\005\037\n\002\006\033\f\002\007\035\016\002\b\037\020\002\307\377\204\277\003\005\002\002\004\003\002\002\005\003\002\002\006\003\002\002\007\003\002\002\b\003\002\002\t\003\002\002\377\000\200\276\000\344@\306\000\002\204|j \200\276\005\000\210\277\202\000\000$\377\002\002~\000\344@\306\000\200p\334\000\001\002\000\000\000\201\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\201\000\bh\277\b\b&\003\000\n\300\000\000\000\000\003\002\002\300\020\000\000\000\202\b\020$\202\000\bh\277\b\b&\277\000\006&\202\b\022$\203\000\bh\202\006\006$\277\b\b&\202\b\024$\177\300\214\277\000\201P\334\003\000\000\004\000\201P\334\b\000\000\005\000\201P\334\t\000\000\006\000\201P\334\n\000\000\007\202\001\006\300\004\000\000\000\177\300\214\277\006\220\004\217\004\007\004\222\b\000\205\322\004\000\002\000\b\201\004\277\001\000\303\321\001\017 \004\001\000\376\321\001\005\022\002p\017\214\277\000\000\276\331\001\004\000\000L\000\205\277\001\002\b~\000\006\0042\200\b\0068\000\200P\334\002\000\177\003\200\002\004~\200\000\200\276\200\002\b~\200\002\n~\200\002\f~\200\002\016~\200\002\020~\200\002\022~\200\002\024~\000\203\001\206\000\201\004\201\000\301\000\201\013\000\375\321\001\004\005\004\004\203\005\206\001\202\001\210\000\203\006\206\f\000\375\321\005\004\005\004\r\000\375\321\001\004\005\004\016\000\375\321\006\004\005\004\000\000l\330\013\000\000\013\000\000l\330\f\000\000\f\000\000l\330\r\000\000\r\000\000l\330\016\000\000\016\004\000\200\276\b\004\006\277p\003\214\277\002@\243\323\003\027\n\034\n@\243\323\003\027*\034\177\302\214\277\004@\243\323\003\031\022\034\177\301\214\277\005@\243\323\003\033\026\034\177\300\214\277\006@\243\323\003\035\032\034\007@\243\323\003\031\036\034\b@\243\323\003\033\"\034\t@\243\323\003\035&\034\323\377\204\277\004\005\002\002\005\003\002\002\006\003\002\002\007\003\002\002\b\003\002\002\t\003\002\002\n\003\002\002\377\000\200\276\000\344@\306\000\002\204|j \200\276\005\000\210\277\202\000\000$\377\002\002~\000\344@\306\000\200p\334\000\001\002\000\000\000\201\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\n\300\000\000\000\000\202\001\006\300\020\000\000\000\277\000\f&\206\000\b \204\f\002$ \004\b\260\005\000\303\321\004\021\004\004\001\000\000\322\004\025\005\004\377\000\006(\000\376\377\377\177\300\214\277\001\002\004~\000\002\0022\200\004\0048\200\001\200\276\377\005\b\260\005\003\016~\003\003\020~\000\200\\\334\001\000\177\t\377\002\0022\000 \000\000\377\020\020h\000\002\000\000\200\004\0048\b\020\222}j\000\200\207p\017\214\277\000\000\276\331\007\t\000\000\377\016\016h\000!\000\000~\000\376\211\360\377\211\277~\000\376\207\002\000\006\300\030\000\000\000\177\300\214\277\001\201\004\277\370\000\205\277\0000\204\276\004\f\002~\200\004\200\201\204\f\f$\217\000\004&\001G\002~\204\000\024 \003\002\016~\377\002\022~\000\204\000\000\377\002\002\n\376\377\177O\001\017\002~\002\f\f2\001\204\005\216\b\000\205\322\000\002\002\000 \004\000\260\200\000\210\276\377\n\nh\000\204\000\000\013\000\206\322\001\021\002\000\200\016\0168\b\000\303\321\002\001$\004\001\027\022h\377\024\024\020 \004\000\000\200\002\004~\200\002\026~\200\001\200\276\004\003\030~\005\003\032~\003\003\034~\001\000\206\322\f\023\002\000\001\000\205\322\001\t\000\000\f\003\002j\004\002\036l\004\002\226}\001\037\002\000\004\002\036l\004\002\226}\001\037\002\000\017\000\217\322\212\002\002\000\210\030\030h\006\037\0362\007! 8\000\200\\\334\017\000\177\017\377\034\0342\000\002\000\000j\301\202\210~\002\202\206\002\000\200\207p\017\214\277\000\000\276\331\r\017\000\000\377\032\032h\000!\000\000~\000\376\211\342\377\211\277~\000\376\207\200\002\032~\304\000\200\276\n\003\002~\b\003\030~\200\002\034~\200\002\036~\200\002 ~\177\300\214\277\000\000\212\277\000\000\376\331\f\000\000\021\020\000\376\331\f\000\000\025 \000\376\331\f\000\000\0310\000\376\331\f\000\000\035\000\000\376\331\001\000\000!\020\000\376\331\001\000\000% \000\376\331\001\000\000)0\000\376\331\001\000\000-\177\307\214\277\371\026b~\021\006\005\000\371\026d~\022\006\005\000\371\026f~\023\006\005\000\371\026h~\024\006\005\000\177\303\214\277\371\026j~!\006\005\000\371\026l~\"\006\005\000\371\026n~#\006\005\000\371\026p~$\006\005\000\371\026r~\025\006\005\000\371\026t~\026\006\005\000\371\026v~\027\006\005\000\371\026x~\030\006\005\000\177\302\214\277\371\026z~%\006\005\000\371\026|~&\006\005\000\371\026~~'\006\005\000\371\026\200~(\006\005\000\371\026\202~\031\006\005\000\371\026\204~\032\006\005\000\371\026\206~\033\006\005\000\371\026\210~\034\006\005\000\177\301\214\277\371\026\212~)\006\005\000\371\026\214~*\006\005\000\371\026\216~+\006\005\000\371\026\220~,\006\005\000\371\026\222~\035\006\005\000\371\026\224~\036\006\005\000\371\026\226~\037\006\005\000\371\026\230~ \006\005\000\177\300\214\277\371\026\232~-\006\005\000\371\026\234~.\006\005\000\371\026\236~/\006\005\000\371\026\240~0\006\005\0001kb\n2md\n3of\n4qh\n9{j\n:}l\n;\177n\n<\201p\n\021\000\240\323\021C\306\034\022\000\240\323\022E\312\034\023\000\240\323\023G\316\034\024\000\240\323\024I\322\034A\213r\nB\215t\nC\217v\nD\221x\n\025\000\240\323\025K\326\034\026\000\240\323\026M\332\034\027\000\240\323\027O\336\034\030\000\240\323\030Q\342\034\r#\032\002\016%\034\002\017'\036\002\020) \002I\233z\nJ\235|\nK\237~\nL\241\200\n\031\000\240\323\031S\346\034\032\000\240\323\032U\352\034\033\000\240\323\033W\356\034\034\000\240\323\034Y\362\034\r+\032\002\016-\034\002\017/\036\002\0201 \002\000\220\000\201\035\000\240\323\035[\366\034\036\000\240\323\036]\372\034\037\000\240\323\037_\376\034 \000\240\323 a\002\035\r3\032\002\0165\034\002\0177\036\002\0209 \002\300\030\030h\300\002\002h\373\000\000\265\r;\032\002\016=\034\002\017?\036\002\020A \002f\377\204\277\016\033\002\002\017\003\002\002\020\003\002\002\b\220\b\201\013\003\026\002\b\005\003\277\220\b\bh\000\000\212\2771\377\204\277\377\000\200\276\000\344@\306\000\026\204|j \200\276\005\000\210\277\202\000\000$\377\002\002~\000\344@\306\000\200p\334\000\001\006\000\000\000\201\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\000\n\300\000\000\000\000\202\001\006\300\020\000\000\000\277\000\f&\206\000\b \204\f\002$ \004\b\260\005\000\303\321\004\021\004\004\001\000\000\322\004\025\005\004\377\000\006(\000\376\377\377\177\300\214\277\001\002\004~\000\002\0022\200\004\0048\200\001\200\276\377\005\b\260\005\003\016~\003\003\020~\000\200\\\334\001\000\177\t\377\002\0022\000 \000\000\377\020\020h\000\002\000\000\200\004\0048\b\020\222}j\000\200\207p\017\214\277\000\000\276\331\007\t\000\000\377\016\016h\000!\000\000~\000\376\211\360\377\211\277~\000\376\207\002\000\006\300\030\000\000\000\177\300\214\277\001\201\004\277\253\000\205\277\0000\204\276\004\f\002~\200\004\200\201\204\f\f$\217\000\004&\001G\002~\204\000\020 \003\002\016~\377\002\024~\000\204\000\000\377\002\002\n\376\377\177O\001\017\002~\002\f\f2\001\204\005\216\t\000\205\322\000\002\002\000 \004\000\260\200\000\210\276\377\n\nh\000\204\000\000\t\000\206\322\001\023\002\000\200\016\0168\377\020\020\020 \004\000\000\001\023\022h\n\000\303\321\002\001(\004\200\002\004~\200\002\026~\200\001\200\276\004\003\030~\005\003\032~\003\003\034~\001\000\206\322\f\023\002\000\001\000\205\322\001\t\000\000\f\003\002j\004\002\036l\004\002\226}\001\037\002\000\004\002\036l\004\002\226}\001\037\002\000\017\000\217\322\212\002\002\000\210\030\030h\006\037\0362\007! 8\000\200\\\334\017\000\177\017\377\034\0342\000\002\000\000j\301\202\210~\002\202\206\002\000\200\207p\017\214\277\000\000\276\331\r\017\000\000\377\032\032h\000!\000\000~\000\376\211\342\377\211\277~\000\376\207\200\002\032~\304\000\200\276\n\003\002~\b\003\030~\200\002\034~\200\002\036~\200\002 ~\177\300\214\277\000\000\212\277\000\001n\330\f\000\000\021\002\003n\330\f\000\000\023\004\005n\330\f\000\000\025\006\007n\330\f\000\000\027\b\tn\330\f\000\000\031\n\013n\330\f\000\000\033\f\rn\330\f\000\000\035\016\017n\330\f\000\000\037\000\001n\330\001\000\000!\002\003n\330\001\000\000#\004\005n\330\001\000\000%\006\007n\330\001\000\000'\b\tn\330\001\000\000)\n\013n\330\001\000\000+\f\rn\330\001\000\000-\016\017n\330\001\000\000/\177\307\214\277\r@\243\323\021C6\034\016@\243\323\022E:\034\177\306\214\277\017@\243\323\023G>\034\020@\243\323\024IB\034\000\220\000\201\177\305\214\277\r@\243\323\025K6\034\016@\243\323\026M:\034\177\304\214\277\017@\243\323\027O>\034\020@\243\323\030QB\034\300\030\030h\300\002\002h\373\000\000\265\177\303\214\277\r@\243\323\031S6\034\016@\243\323\032U:\034\177\302\214\277\017@\243\323\033W>\034\020@\243\323\034YB\034\177\301\214\277\r@\243\323\035[6\034\016@\243\323\036]:\034\177\300\214\277\017@\243\323\037_>\034\020@\243\323 aB\034\263\377\204\277\016\033\002\002\017\003\002\002\020\003\002\002\b\220\b\201\013\003\026\002\b\005\003\277\220\b\bh\000\000\212\277~\377\204\277\377\000\200\276\000\344@\306\000\026\204|j \200\276\005\000\210\277\202\000\000$\377\002\002~\000\344@\306\000\200p\334\000\001\006\000\000\000\201\277\006\000\000\000\000\000\000\000\250\035\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000t \000\000\000\000\000\000\n\000\000\000\000\000\000\000-\002\000\000\000\000\000\000\365\376\377o\000\000\000\000X\037\000\000\000\000\000\000\004\000\000\000\000\000\000\000\334\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000Linker: Ubuntu LLD 21.1.8\000Ubuntu clang version 21.1.8 (6ubuntu1)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\361\377\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000Q\000\000\000\000\000\361\377\022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000~\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\256\000\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\326\000\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000:\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000g\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\230\001\000\000\000\000\361\377\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\276\001\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\344\001\000\000\000\000\361\377\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\002\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000=\002\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000c\002\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\222\002\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\303\002\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\356\002\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\035\003\000\000\000\000\361\377\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000=\003\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000]\003\000\000\000\000\361\377\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\202\003\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\252\003\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\312\003\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\363\003\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\036\004\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\004\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000l\004\000\000\000\000\361\377\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\214\004\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\254\004\000\000\000\000\361\377\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\321\004\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\371\004\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\005\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000B\005\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000m\005\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\222\005\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\273\005\000\000\000\000\361\377\024\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\345\005\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\006\000\000\000\000\361\377\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000>\006\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p\006\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\232\006\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\315\006\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\007\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\007\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000d\007\000\000\000\000\361\377\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\216\007\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\270\007\000\000\000\000\361\377\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\347\007\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\b\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000C\b\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\b\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\253\b\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\332\b\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\r\t\000\000\000\000\361\377Q\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000>\t\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000o\t\000\000\000\000\361\377\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\245\t\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\336\t\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\n\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000I\n\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\205\n\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\273\n\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\365\n\000\000\000\000\361\3771\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000&\013\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000W\013\000\000\000\000\361\377\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\215\013\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\306\013\000\000\000\000\361\377\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\367\013\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0001\f\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000m\f\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\243\f\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\335\f\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\361\f\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\005\r\000\000\000\000\361\377\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000E\017\000\000\000\002\b\000`X\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\r\000\000\022\003\007\000\0005\000\000\000\000\000\000\310\001\000\000\000\000\000\0008\r\000\000\021\003\006\000\300\"\000\000\000\000\000\000@\000\000\000\000\000\000\000Z\r\000\000\022\003\007\000\0007\000\000\000\000\000\000\354\000\000\000\000\000\000\000w\r\000\000\021\003\006\000\000#\000\000\000\000\000\000@\000\000\000\000\000\000\000\227\r\000\000\022\003\007\000\0008\000\000\000\000\000\000\344\000\000\000\000\000\000\000\256\r\000\000\021\003\006\000@#\000\000\000\000\000\000@\000\000\000\000\000\000\000\310\r\000\000\022\003\007\000\0009\000\000\000\000\000\000\334\001\000\000\000\000\000\000\337\r\000\000\021\003\006\000\200#\000\000\000\000\000\000@\000\000\000\000\000\000\000\371\r\000\000\022\003\007\000\000;\000\000\000\000\000\000\024\002\000\000\000\000\000\000\032\016\000\000\021\003\006\000\300#\000\000\000\000\000\000@\000\000\000\000\000\000\000>\016\000\000\022\003\007\000\000>\000\000\000\000\000\000\324\001\000\000\000\000\000\000_\016\000\000\021\003\006\000\000$\000\000\000\000\000\000@\000\000\000\000\000\000\000\203\016\000\000\022\003\007\000\000@\000\000\000\000\000\000\224\004\000\000\000\000\000\000\253\016\000\000\021\003\006\000@$\000\000\000\000\000\000@\000\000\000\000\000\000\000\326\016\000\000\022\003\007\000\000E\000\000\000\000\000\000`\003\000\000\000\000\000\000\376\016\000\000\021\003\006\000\200$\000\000\000\000\000\000@\000\000\000\000\000\000\000)\017\000\000\021\000\n\000\320h\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.relro_padding\000.bss\000.AMDGPU.csdata\000.AMDGPU.gpr_maximums\000.comment\000.symtab\000.shstrtab\000.strtab\000\000_Z10k_dot2_f16PK6__halfS1_Pfii.num_vgpr\000_Z10k_dot2_f16PK6__halfS1_Pfii.num_agpr\000_Z10k_dot2_f16PK6__halfS1_Pfii.numbered_sgpr\000_Z10k_dot2_f16PK6__halfS1_Pfii.private_seg_size\000_Z10k_dot2_f16PK6__halfS1_Pfii.uses_vcc\000_Z10k_dot2_f16PK6__halfS1_Pfii.uses_flat_scratch\000_Z10k_dot2_f16PK6__halfS1_Pfii.has_dyn_sized_stack\000_Z10k_dot2_f16PK6__halfS1_Pfii.has_recursion\000_Z10k_dot2_f16PK6__halfS1_Pfii.has_indirect_call\000_Z9k_fma_f16PK6__halfS1_Pfii.num_vgpr\000_Z9k_fma_f16PK6__halfS1_Pfii.num_agpr\000_Z9k_fma_f16PK6__halfS1_Pfii.numbered_sgpr\000_Z9k_fma_f16PK6__halfS1_Pfii.private_seg_size\000_Z9k_fma_f16PK6__halfS1_Pfii.uses_vcc\000_Z9k_fma_f16PK6__halfS1_Pfii.uses_flat_scratch\000_Z9k_fma_f16PK6__halfS1_Pfii.has_dyn_sized_stack\000_Z9k_fma_f16PK6__halfS1_Pfii.has_recursion\000_Z9k_fma_f16PK6__halfS1_Pfii.has_indirect_call\000_Z9k_dot4_i8PKiS0_Piii.num_vgpr\000_Z9k_dot4_i8PKiS0_Piii.num_agpr\000_Z9k_dot4_i8PKiS0_Piii.numbered_sgpr\000_Z9k_dot4_i8PKiS0_Piii.private_seg_size\000_Z9k_dot4_i8PKiS0_Piii.uses_vcc\000_Z9k_dot4_i8PKiS0_Piii.uses_flat_scratch\000_Z9k_dot4_i8PKiS0_Piii.has_dyn_sized_stack\000_Z9k_dot4_i8PKiS0_Piii.has_recursion\000_Z9k_dot4_i8PKiS0_Piii.has_indirect_call\000_Z12bench_raw_i8PKiPii.num_vgpr\000_Z12bench_raw_i8PKiPii.num_agpr\000_Z12bench_raw_i8PKiPii.numbered_sgpr\000_Z12bench_raw_i8PKiPii.private_seg_size\000_Z12bench_raw_i8PKiPii.uses_vcc\000_Z12bench_raw_i8PKiPii.uses_flat_scratch\000_Z12bench_raw_i8PKiPii.has_dyn_sized_stack\000_Z12bench_raw_i8PKiPii.has_recursion\000_Z12bench_raw_i8PKiPii.has_indirect_call\000_Z9bench_rawILi0EEvPK7__half2Pfi.num_vgpr\000_Z9bench_rawILi0EEvPK7__half2Pfi.num_agpr\000_Z9bench_rawILi0EEvPK7__half2Pfi.numbered_sgpr\000_Z9bench_rawILi0EEvPK7__half2Pfi.private_seg_size\000_Z9bench_rawILi0EEvPK7__half2Pfi.uses_vcc\000_Z9bench_rawILi0EEvPK7__half2Pfi.uses_flat_scratch\000_Z9bench_rawILi0EEvPK7__half2Pfi.has_dyn_sized_stack\000_Z9bench_rawILi0EEvPK7__half2Pfi.has_recursion\000_Z9bench_rawILi0EEvPK7__half2Pfi.has_indirect_call\000_Z9bench_rawILi1EEvPK7__half2Pfi.num_vgpr\000_Z9bench_rawILi1EEvPK7__half2Pfi.num_agpr\000_Z9bench_rawILi1EEvPK7__half2Pfi.numbered_sgpr\000_Z9bench_rawILi1EEvPK7__half2Pfi.private_seg_size\000_Z9bench_rawILi1EEvPK7__half2Pfi.uses_vcc\000_Z9bench_rawILi1EEvPK7__half2Pfi.uses_flat_scratch\000_Z9bench_rawILi1EEvPK7__half2Pfi.has_dyn_sized_stack\000_Z9bench_rawILi1EEvPK7__half2Pfi.has_recursion\000_Z9bench_rawILi1EEvPK7__half2Pfi.has_indirect_call\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.num_vgpr\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.num_agpr\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.numbered_sgpr\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.private_seg_size\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.uses_vcc\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.uses_flat_scratch\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_dyn_sized_stack\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_recursion\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.has_indirect_call\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.num_vgpr\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.num_agpr\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.numbered_sgpr\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.private_seg_size\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.uses_vcc\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.uses_flat_scratch\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_dyn_sized_stack\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_recursion\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.has_indirect_call\000amdgpu.max_num_vgpr\000amdgpu.max_num_agpr\000amdgpu.max_num_sgpr\000_Z10k_dot2_f16PK6__halfS1_Pfii\000_Z10k_dot2_f16PK6__halfS1_Pfii.kd\000_Z9k_fma_f16PK6__halfS1_Pfii\000_Z9k_fma_f16PK6__halfS1_Pfii.kd\000_Z9k_dot4_i8PKiS0_Piii\000_Z9k_dot4_i8PKiS0_Piii.kd\000_Z12bench_raw_i8PKiPii\000_Z12bench_raw_i8PKiPii.kd\000_Z9bench_rawILi0EEvPK7__half2Pfi\000_Z9bench_rawILi0EEvPK7__half2Pfi.kd\000_Z9bench_rawILi1EEvPK7__half2Pfi\000_Z9bench_rawILi1EEvPK7__half2Pfi.kd\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii\000_Z12bench_streamILi0EEvPK6__halfS2_Pfii.kd\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii\000_Z12bench_streamILi1EEvPK6__halfS2_Pfii.kd\000__hip_cuid_b1e4d951e7e1a1e7\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\0008\002\000\000\000\000\000\0008\002\000\000\000\000\000\000p\033\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\250\035\000\000\000\000\000\000\250\035\000\000\000\000\000\000\260\001\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000X\037\000\000\000\000\000\000X\037\000\000\000\000\000\000\204\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000\334\037\000\000\000\000\000\000\334\037\000\000\000\000\000\000\230\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000t \000\000\000\000\000\000t \000\000\000\000\000\000-\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\300\"\000\000\000\000\000\000\300\"\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\0005\000\000\000\000\000\000\000%\000\000\000\000\000\000`\023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000`X\000\000\000\000\000\000`8\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\320X\000\000\000\000\000\000\3208\000\000\000\000\000\0000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\b\000\000\000\003\000\000\000\000\000\000\000\320h\000\000\000\000\000\000\3208\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\3208\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000a\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\3208\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000v\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\3208\000\000\000\000\000\000B\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\177\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0309\000\000\000\000\000\000\320\b\000\000\000\000\000\000\020\000\000\000M\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\207\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350A\000\000\000\000\000\000\231\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\221\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\201B\000\000\000\000\000\000N\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_9, 26128

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"aw",@progbits
	.p2align	3, 0x0
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_9
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle_b1e4d951e7e1a1e7,@object # @__hip_gpubin_handle_b1e4d951e7e1a1e7
	.local	__hip_gpubin_handle_b1e4d951e7e1a1e7
	.comm	__hip_gpubin_handle_b1e4d951e7e1a1e7,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	__hip_module_ctor
	.type	__hip_cuid_b1e4d951e7e1a1e7,@object # @__hip_cuid_b1e4d951e7e1a1e7
	.bss
	.globl	__hip_cuid_b1e4d951e7e1a1e7
__hip_cuid_b1e4d951e7e1a1e7:
	.byte	0                               # 0x0
	.size	__hip_cuid_b1e4d951e7e1a1e7, 1

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 21.1.8 (6ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z25__device_stub__k_dot2_f16PK6__halfS1_Pfii
	.addrsig_sym _Z24__device_stub__k_fma_f16PK6__halfS1_Pfii
	.addrsig_sym _Z24__device_stub__k_dot4_i8PKiS0_Piii
	.addrsig_sym _Z27__device_stub__bench_raw_i8PKiPii
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z24__device_stub__bench_rawILi0EEvPK7__half2Pfi
	.addrsig_sym _Z24__device_stub__bench_rawILi1EEvPK7__half2Pfi
	.addrsig_sym _Z27__device_stub__bench_streamILi0EEvPK6__halfS2_Pfii
	.addrsig_sym _Z27__device_stub__bench_streamILi1EEvPK6__halfS2_Pfii
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _Z10k_dot2_f16PK6__halfS1_Pfii
	.addrsig_sym _Z9k_fma_f16PK6__halfS1_Pfii
	.addrsig_sym _Z9k_dot4_i8PKiS0_Piii
	.addrsig_sym _Z12bench_raw_i8PKiPii
	.addrsig_sym _Z9bench_rawILi0EEvPK7__half2Pfi
	.addrsig_sym _Z9bench_rawILi1EEvPK7__half2Pfi
	.addrsig_sym _Z12bench_streamILi0EEvPK6__halfS2_Pfii
	.addrsig_sym _Z12bench_streamILi1EEvPK6__halfS2_Pfii
	.addrsig_sym .L__unnamed_9
	.addrsig_sym __hip_fatbin_wrapper
	.addrsig_sym __hip_cuid_b1e4d951e7e1a1e7
