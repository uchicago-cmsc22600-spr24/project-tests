	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_fact_code                      ## -- Begin function fact_code
	.p2align	4, 0x90
_fact_code:                             ## @fact_code
	.cfi_startproc
## %bb.0:                               ## %entry_0088
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$4, %rdi
	jge	LBB0_1
## %bb.2:                               ## %then_008B
	movl	$3, %eax
	popq	%rbx
	retq
LBB0_1:                                 ## %else_008A
	leaq	-2(%rbx), %rdi
	callq	_fact_code
Ltmp0:
	decq	%rbx
	sarq	%rax
	imulq	%rbx, %rax
	incq	%rax
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ignore_code                    ## -- Begin function ignore_code
	.p2align	4, 0x90
_ignore_code:                           ## @ignore_code
	.cfi_startproc
## %bb.0:                               ## %entry_008C
	movl	$1, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_008D
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$11, %edi
	callq	_fact_code
Ltmp1:
	movq	%rax, %rdi
	callq	_ignore_code
Ltmp2:
	movl	$13, %edi
	callq	_fact_code
Ltmp3:
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
	.quad	_fact_code
	.quad	8
	.quad	1
	.quad	__mml_entry
	.quad	8
	.quad	4
	.quad	0
	.long	Ltmp0-_fact_code
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
