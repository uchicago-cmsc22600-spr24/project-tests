	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_lp_code                        ## -- Begin function lp_code
	.p2align	4, 0x90
_lp_code:                               ## @lp_code
	.cfi_startproc
## %bb.0:                               ## %entry_00B2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpq	8(%rdi), %rbx
	jge	LBB0_2
	.p2align	4, 0x90
LBB0_3:                                 ## %then_00B5
                                        ## =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rax
	movq	(%rax), %rcx
	movq	%rdi, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*%rcx
Ltmp0:
	movq	(%rsp), %rdi
	addq	$2, %rbx
	cmpq	8(%rdi), %rbx
	jl	LBB0_3
LBB0_2:                                 ## %else_00B4
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_repeat_code                    ## -- Begin function repeat_code
	.p2align	4, 0x90
_repeat_code:                           ## @repeat_code
	.cfi_startproc
## %bb.0:                               ## %entry_00B6
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	movl	$2, %edi
	callq	__mml_alloc
Ltmp1:
	movq	%rbx, (%rax)
	movq	%r14, 8(%rax)
	movl	$1, %esi
	movq	%rax, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	_lp_code                        ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_ignore_code                    ## -- Begin function ignore_code
	.p2align	4, 0x90
_ignore_code:                           ## @ignore_code
	.cfi_startproc
## %bb.0:                               ## %entry_00B7
	movl	$1, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_00B8
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$1, %edi
	callq	__mml_alloc
Ltmp2:
	leaq	_ignore_code(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 8(%rsp)
	movl	$2, %edi
	callq	__mml_alloc
Ltmp3:
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	$11, 8(%rax)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	callq	_repeat_code
Ltmp4:
	movq	8(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ignore_code
Ltmp5:
	movl	$2, %edi
	callq	__mml_alloc
Ltmp6:
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	$13, 8(%rax)
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
	callq	_repeat_code
Ltmp7:
	movq	8(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ignore_code
Ltmp8:
	movl	$1, %eax
	addq	$24, %rsp
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
	.long	9
	.quad	_lp_code
	.quad	24
	.quad	1
	.quad	_repeat_code
	.quad	24
	.quad	1
	.quad	__mml_entry
	.quad	24
	.quad	7
	.quad	0
	.long	Ltmp0-_lp_code
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
	.long	Ltmp1-_repeat_code
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
	.long	Ltmp5-__mml_entry
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
	.long	Ltmp6-__mml_entry
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
	.long	Ltmp7-__mml_entry
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
	.long	Ltmp8-__mml_entry
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

.subsections_via_symbols
