	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_lp_code                        ## -- Begin function lp_code
	.p2align	4, 0x90
_lp_code:                               ## @lp_code
	.cfi_startproc
## %bb.0:                               ## %entry_0098
	movq	%rsi, %rax
	testq	%rax, %rax
	jle	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## %else_009A
                                        ## =>This Inner Loop Header: Depth=1
	subq	8(%rdi), %rax
	incq	%rax
	testq	%rax, %rax
	jg	LBB0_2
LBB0_3:                                 ## %then_009B
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f_code                         ## -- Begin function f_code
	.p2align	4, 0x90
_f_code:                                ## @f_code
	.cfi_startproc
## %bb.0:                               ## %entry_009C
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$2, %edi
	callq	__mml_alloc
Ltmp0:
	leaq	_lp_code(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ignore_code                    ## -- Begin function ignore_code
	.p2align	4, 0x90
_ignore_code:                           ## @ignore_code
	.cfi_startproc
## %bb.0:                               ## %entry_009D
	movl	$1, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_009E
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$85, %edi
	callq	_f_code
Ltmp1:
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_ignore_code
Ltmp2:
	movl	$35, %edi
	callq	_f_code
Ltmp3:
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_ignore_code
Ltmp4:
	movl	$1, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	2
	.long	0
	.long	5
	.quad	_f_code
	.quad	8
	.quad	1
	.quad	__mml_entry
	.quad	8
	.quad	4
	.quad	0
	.long	Ltmp0-_f_code
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
	.quad	0
	.long	Ltmp4-__mml_entry
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
