	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_fib_code                       ## -- Begin function fib_code
	.p2align	4, 0x90
_fib_code:                              ## @fib_code
	.cfi_startproc
## %bb.0:                               ## %entry_0080
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpq	$4, %rdi
	jge	LBB0_1
## %bb.2:                               ## %then_0083
	movl	$3, %eax
	jmp	LBB0_3
LBB0_1:                                 ## %else_0082
	leaq	-2(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	_fib_code
Ltmp0:
	movq	%rax, %r14
	addq	$-4, %rbx
	movq	%rbx, %rdi
	callq	_fib_code
Ltmp1:
	leaq	-1(%r14,%rax), %rax
LBB0_3:                                 ## %then_0083
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_0084
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$11, %edi
	callq	_fib_code
Ltmp2:
	cmpq	$17, %rax
	jne	LBB1_1
## %bb.2:                               ## %then_0086
	leaq	__slit_0(%rip), %rdi
	jmp	LBB1_3
LBB1_1:                                 ## %else_0085
	leaq	__slit_1(%rip), %rdi
LBB1_3:                                 ## %join_0087
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
	.quad	_fib_code
	.quad	24
	.quad	2
	.quad	__mml_entry
	.quad	8
	.quad	2
	.quad	0
	.long	Ltmp0-_fib_code
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
	.long	Ltmp1-_fib_code
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

.subsections_via_symbols
