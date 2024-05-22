	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_id_code                        ## -- Begin function id_code
	.p2align	4, 0x90
_id_code:                               ## @id_code
	.cfi_startproc
## %bb.0:                               ## %entry_0083
	movq	%rsi, %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_0084
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, %edi
	callq	__mml_alloc
Ltmp0:
	leaq	_id_code(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	_id_code
Ltmp1:
	movq	8(%rsp), %rsi
	movq	(%rax), %rcx
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	callq	*%rcx
Ltmp2:
	movq	(%rax), %rcx
	movq	%rax, 8(%rsp)
	movl	$85, %esi
	movq	%rax, %rdi
	callq	*%rcx
Ltmp3:
	cmpq	$85, %rax
	jne	LBB1_1
## %bb.2:                               ## %then_0086
	leaq	__slit_0(%rip), %rdi
	jmp	LBB1_3
LBB1_1:                                 ## %else_0085
	leaq	__slit_1(%rip), %rdi
LBB1_3:                                 ## %join_0087
	callq	__mml_print
Ltmp4:
	movl	$1, %eax
	addq	$24, %rsp
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
	.long	1
	.long	0
	.long	5
	.quad	__mml_entry
	.quad	24
	.quad	5
	.quad	0
	.long	Ltmp0-__mml_entry
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
	.long	Ltmp1-__mml_entry
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
	.long	Ltmp2-__mml_entry
	.short	0
	.short	7
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
	.long	16
	.byte	3
	.byte	0
	.short	8
	.short	7
	.short	0
	.long	16
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
	.long	Ltmp3-__mml_entry
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
	.long	Ltmp4-__mml_entry
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
