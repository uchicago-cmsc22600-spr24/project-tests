	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_loop_code                      ## -- Begin function loop_code
	.p2align	4, 0x90
_loop_code:                             ## @loop_code
	.cfi_startproc
## %bb.0:                               ## %entry_00B5
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	leaq	__slit_0(%rip), %r14
	cmpq	(%rdi), %rbx
	jge	LBB0_2
	.p2align	4, 0x90
LBB0_3:                                 ## %then_00B8
                                        ## =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rsp)
	movq	%r14, %rdi
	callq	__mml_print
Ltmp0:
	movq	(%rsp), %rdi
	addq	$2, %rbx
	cmpq	(%rdi), %rbx
	jl	LBB0_3
LBB0_2:                                 ## %else_00B7
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_f_code                         ## -- Begin function f_code
	.p2align	4, 0x90
_f_code:                                ## @f_code
	.cfi_startproc
## %bb.0:                               ## %entry_00B9
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movl	$1, %edi
	callq	__mml_alloc
Ltmp1:
	movq	%rbx, (%rax)
	leaq	__slit_1(%rip), %rsi
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	callq	__mml_concat
Ltmp2:
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	__mml_print
Ltmp3:
	movq	(%rsp), %rdi
	movl	$1, %esi
	callq	_loop_code
Ltmp4:
	leaq	__slit_2(%rip), %rsi
	movq	%r15, %rdi
	callq	__mml_concat
Ltmp5:
	leaq	__slit_3(%rip), %rdi
	movq	%rax, (%rsp)
	movq	%rax, %rsi
	callq	__mml_concat
Ltmp6:
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	__mml_print
Ltmp7:
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_00BA
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	leaq	__slit_4(%rip), %rbx
	leaq	__slit_2(%rip), %rsi
	movq	%rbx, %rdi
	callq	__mml_concat
Ltmp8:
	leaq	__slit_5(%rip), %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %rsi
	callq	__mml_concat
Ltmp9:
	leaq	__slit_6(%rip), %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %rsi
	callq	__mml_concat
Ltmp10:
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	__mml_print
Ltmp11:
	movl	$2, %edi
	callq	__mml_alloc
Ltmp12:
	leaq	__slit_7(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	%rax, 8(%rsp)
	movl	$11, %esi
	movq	%rax, %rdi
	callq	_f_code
Ltmp13:
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	__slit_0                        ## @_slit_0
	.p2align	3, 0x0
__slit_0:
	.quad	13                              ## 0xd
	.quad	119183017927456                 ## 0x6c6575726320

	.globl	__slit_1                        ## @_slit_1
	.p2align	3, 0x0
__slit_1:
	.quad	3                               ## 0x3
	.quad	44                              ## 0x2c

	.globl	__slit_2                        ## @_slit_2
	.p2align	3, 0x0
__slit_2:
	.quad	5                               ## 0x5
	.quad	2593                            ## 0xa21

	.globl	__slit_3                        ## @_slit_3
	.p2align	3, 0x0
__slit_3:
	.quad	3                               ## 0x3
	.quad	32                              ## 0x20

	.globl	__slit_4                        ## @_slit_4
	.p2align	3, 0x0
__slit_4:
	.quad	11                              ## 0xb
	.quad	431316168567                    ## 0x646c726f77

	.globl	__slit_5                        ## @_slit_5
	.p2align	3, 0x0
__slit_5:
	.quad	5                               ## 0x5
	.quad	8236                            ## 0x202c

	.globl	__slit_6                        ## @_slit_6
	.p2align	3, 0x0
__slit_6:
	.quad	11                              ## 0xb
	.quad	478560413000                    ## 0x6f6c6c6548

	.globl	__slit_7                        ## @_slit_7
	.p2align	3, 0x0
__slit_7:
	.quad	15                              ## 0xf
	.quad	28562436146556743               ## 0x657962646f6f47

	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	3
	.long	0
	.long	14
	.quad	_loop_code
	.quad	24
	.quad	1
	.quad	_f_code
	.quad	40
	.quad	7
	.quad	__mml_entry
	.quad	24
	.quad	6
	.quad	0
	.long	Ltmp0-_loop_code
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
	.long	Ltmp1-_f_code
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
	.long	Ltmp2-_f_code
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
	.long	Ltmp3-_f_code
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
	.long	Ltmp4-_f_code
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
	.long	Ltmp5-_f_code
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
	.long	Ltmp6-_f_code
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
	.long	Ltmp7-_f_code
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
	.long	Ltmp8-__mml_entry
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
	.long	Ltmp9-__mml_entry
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
	.long	Ltmp10-__mml_entry
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
	.long	Ltmp11-__mml_entry
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
	.long	Ltmp12-__mml_entry
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
	.long	Ltmp13-__mml_entry
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
