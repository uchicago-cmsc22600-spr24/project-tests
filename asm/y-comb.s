	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_g_code                         ## -- Begin function g_code
	.p2align	4, 0x90
_g_code:                                ## @g_code
	.cfi_startproc
## %bb.0:                               ## %entry_0090
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	movq	%rsi, (%rsp)
	callq	_y_code
Ltmp0:
	movq	(%rsp), %rsi
	movq	(%rax), %rcx
	movq	%rax, %rdi
	popq	%rax
	jmpq	*%rcx                           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_y1_code                        ## -- Begin function y1_code
	.p2align	4, 0x90
_y1_code:                               ## @y1_code
	.cfi_startproc
## %bb.0:                               ## %entry_0091
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	8(%rdi), %rbx
	movq	%rsi, (%rsp)
	movl	$2, %edi
	callq	__mml_alloc
Ltmp1:
	leaq	_g_code(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	(%rbx), %rcx
	movq	%rax, 8(%rsp)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*%rcx
Ltmp2:
	movq	(%rsp), %rsi
	movq	(%rax), %rcx
	movq	%rax, %rdi
	addq	$16, %rsp
	popq	%rbx
	jmpq	*%rcx                           ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_y_code                         ## -- Begin function y_code
	.p2align	4, 0x90
_y_code:                                ## @y_code
	.cfi_startproc
## %bb.0:                               ## %entry_0092
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	$2, %edi
	callq	__mml_alloc
Ltmp3:
	movq	(%rsp), %rcx
	leaq	_y1_code(%rip), %rdx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_0093
	movl	$1, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	3
	.long	0
	.long	4
	.quad	_g_code
	.quad	8
	.quad	1
	.quad	_y1_code
	.quad	24
	.quad	2
	.quad	_y_code
	.quad	8
	.quad	1
	.quad	0
	.long	Ltmp0-_g_code
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
	.long	Ltmp1-_y1_code
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
	.long	Ltmp2-_y1_code
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
	.long	8
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
	.long	Ltmp3-_y_code
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

.subsections_via_symbols
