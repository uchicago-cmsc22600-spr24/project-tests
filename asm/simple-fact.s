	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_fact_code                      ## -- Begin function fact_code
	.p2align	4, 0x90
_fact_code:                             ## @fact_code
	.cfi_startproc
## %bb.0:                               ## %entry_008E
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rax
	cmpq	(%rdi), %rsi
	jle	LBB0_2
## %bb.1:                               ## %else_0090
	movq	%rsi, %rcx
	subq	%rax, %rcx
	incq	%rcx
	movq	%rdi, 8(%rsp)
	movq	%rsi, %rbx
	movq	%rcx, %rsi
	callq	_fact_code
Ltmp0:
	decq	%rbx
	sarq	%rax
	imulq	%rbx, %rax
	incq	%rax
LBB0_2:                                 ## %then_0091
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_0092
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$2, %edi
	callq	__mml_alloc
Ltmp1:
	movq	$1, (%rax)
	movq	$3, 8(%rax)
	movq	%rax, (%rsp)
	movl	$11, %esi
	movq	%rax, %rdi
	callq	_fact_code
Ltmp2:
	cmpq	$241, %rax
	jne	LBB1_1
## %bb.2:                               ## %then_0094
	leaq	__slit_0(%rip), %rdi
	jmp	LBB1_3
LBB1_1:                                 ## %else_0093
	leaq	__slit_1(%rip), %rdi
LBB1_3:                                 ## %join_0095
	callq	__mml_print
Ltmp3:
	movl	$1, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	__slit_0                        ## @_slit_0
	.p2align	3, 0x0
__slit_0:
	.quad	7                               ## 0x7
	.quad	682831                          ## 0xa6b4f

	.globl	__slit_1                        ## @_slit_1
	.p2align	3, 0x0
__slit_1:
	.quad	11                              ## 0xb
	.quad	44768518470                     ## 0xa6c696146

	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	2
	.long	0
	.long	4
	.quad	_fact_code
	.quad	24
	.quad	1
	.quad	__mml_entry
	.quad	8
	.quad	3
	.quad	0
	.long	Ltmp0-_fact_code
	.short	0
	.short	5
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	3
	.byte	0
	.short	8
	.short	7
	.short	0
	.long	8
	.byte	3
	.byte	0
	.short	8
	.short	7
	.short	0
	.long	8
	.p2align	3, 0x0
	.short	0
	.short	0
	.p2align	3, 0x0
	.quad	0
	.long	Ltmp1-__mml_entry
	.short	0
	.short	3
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.p2align	3, 0x0
	.short	0
	.short	0
	.p2align	3, 0x0
	.quad	0
	.long	Ltmp2-__mml_entry
	.short	0
	.short	5
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	3
	.byte	0
	.short	8
	.short	7
	.short	0
	.long	0
	.byte	3
	.byte	0
	.short	8
	.short	7
	.short	0
	.long	0
	.p2align	3, 0x0
	.short	0
	.short	0
	.p2align	3, 0x0
	.quad	0
	.long	Ltmp3-__mml_entry
	.short	0
	.short	3
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.byte	4
	.byte	0
	.short	8
	.short	0
	.short	0
	.long	0
	.p2align	3, 0x0
	.short	0
	.short	0
	.p2align	3, 0x0

.subsections_via_symbols
