	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_intToString_code               ## -- Begin function intToString_code
	.p2align	4, 0x90
_intToString_code:                      ## @intToString_code
	.cfi_startproc
## %bb.0:                               ## %entry_00EA
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testq	%rdi, %rdi
	jle	LBB0_29
## %bb.1:                               ## %else_00EC
	cmpq	$1, %rdi
	jne	LBB0_2
## %bb.28:                              ## %then_0106
	leaq	__slit_1(%rip), %rax
	jmp	LBB0_19
LBB0_29:                                ## %then_0107
	movl	$2, %eax
	subq	%rdi, %rax
	movq	%rax, %rdi
	callq	_intToString_code
Ltmp0:
	leaq	__slit_0(%rip), %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, %rsi
	callq	__mml_concat
Ltmp1:
	jmp	LBB0_19
LBB0_2:                                 ## %else_00ED
	cmpq	$3, %rdi
	jne	LBB0_3
## %bb.27:                              ## %then_0105
	leaq	__slit_2(%rip), %rax
	jmp	LBB0_19
LBB0_3:                                 ## %else_00EE
	cmpq	$5, %rdi
	jne	LBB0_4
## %bb.26:                              ## %then_0104
	leaq	__slit_3(%rip), %rax
	jmp	LBB0_19
LBB0_4:                                 ## %else_00EF
	cmpq	$7, %rdi
	jne	LBB0_5
## %bb.25:                              ## %then_0103
	leaq	__slit_4(%rip), %rax
	jmp	LBB0_19
LBB0_5:                                 ## %else_00F0
	cmpq	$9, %rdi
	jne	LBB0_6
## %bb.24:                              ## %then_0102
	leaq	__slit_5(%rip), %rax
	jmp	LBB0_19
LBB0_6:                                 ## %else_00F1
	cmpq	$11, %rdi
	jne	LBB0_7
## %bb.23:                              ## %then_0101
	leaq	__slit_6(%rip), %rax
	jmp	LBB0_19
LBB0_7:                                 ## %else_00F2
	cmpq	$13, %rdi
	jne	LBB0_8
## %bb.22:                              ## %then_0100
	leaq	__slit_7(%rip), %rax
	jmp	LBB0_19
LBB0_8:                                 ## %else_00F3
	cmpq	$15, %rdi
	jne	LBB0_9
## %bb.21:                              ## %then_00FF
	leaq	__slit_8(%rip), %rax
	jmp	LBB0_19
LBB0_9:                                 ## %else_00F4
	cmpq	$17, %rdi
	jne	LBB0_10
## %bb.20:                              ## %then_00FE
	leaq	__slit_9(%rip), %rax
	jmp	LBB0_19
LBB0_10:                                ## %else_00F5
	cmpq	$19, %rdi
	jne	LBB0_11
## %bb.18:                              ## %then_00FD
	leaq	__slit_10(%rip), %rax
	jmp	LBB0_19
LBB0_11:                                ## %else_00F6
	movb	$1, %al
	testb	%al, %al
	movabsq	$7378697629483820647, %rbx      ## imm = 0x6666666666666667
	je	LBB0_12
## %bb.13:                              ## %then_00F8
	movq	%rdi, %r14
	movq	%rdi, %rax
	sarq	%rax
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	leaq	1(%rdx,%rdx), %rdi
	jmp	LBB0_14
LBB0_12:                                ## %else_00F7
	movq	%rdi, %r14
	leaq	__slit_12(%rip), %rdi
	callq	__mml_fail
Ltmp2:
	movl	$1, %edi
LBB0_14:                                ## %join_00F9
	callq	_intToString_code
Ltmp3:
	movq	%rax, %rcx
	movb	$1, %al
	testb	%al, %al
	je	LBB0_15
## %bb.16:                              ## %then_00FB
	movq	%r14, %rsi
	sarq	%rsi
	movq	%rsi, %rax
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rdx
	leaq	(%rdx,%rdx,4), %rax
	subq	%rax, %rsi
	leaq	1(%rsi,%rsi), %rdi
	jmp	LBB0_17
LBB0_15:                                ## %else_00FA
	leaq	__slit_11(%rip), %rdi
	movq	%rcx, 8(%rsp)
	callq	__mml_fail
Ltmp4:
	movl	$1, %edi
	movq	8(%rsp), %rcx
LBB0_17:                                ## %join_00FC
	movq	%rcx, 8(%rsp)
	callq	_intToString_code
Ltmp5:
	movq	8(%rsp), %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %rsi
	callq	__mml_concat
Ltmp6:
LBB0_19:                                ## %then_00FD
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fib_code                       ## -- Begin function fib_code
	.p2align	4, 0x90
_fib_code:                              ## @fib_code
	.cfi_startproc
## %bb.0:                               ## %entry_0108
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpq	$4, %rdi
	jge	LBB1_1
## %bb.2:                               ## %then_010B
	movl	$3, %eax
	jmp	LBB1_3
LBB1_1:                                 ## %else_010A
	leaq	-2(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	_fib_code
Ltmp7:
	movq	%rax, %r14
	addq	$-4, %rbx
	movq	%rbx, %rdi
	callq	_fib_code
Ltmp8:
	leaq	-1(%r14,%rax), %rax
LBB1_3:                                 ## %then_010B
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
## %bb.0:                               ## %entry_010C
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	$41, %edi
	callq	_fib_code
Ltmp9:
	movq	%rax, %rbx
	leaq	__slit_13(%rip), %rdi
	callq	__mml_print
Ltmp10:
	movl	$41, %edi
	callq	_intToString_code
Ltmp11:
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	__mml_print
Ltmp12:
	leaq	__slit_14(%rip), %rdi
	callq	__mml_print
Ltmp13:
	movq	%rbx, %rdi
	callq	_intToString_code
Ltmp14:
	movq	%rax, 8(%rsp)
	movq	%rax, %rdi
	callq	__mml_print
Ltmp15:
	leaq	__slit_15(%rip), %rdi
	callq	__mml_print
Ltmp16:
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
	.quad	3                               ## 0x3
	.quad	45                              ## 0x2d

	.globl	__slit_1                        ## @_slit_1
	.p2align	3, 0x0
__slit_1:
	.quad	3                               ## 0x3
	.quad	48                              ## 0x30

	.globl	__slit_2                        ## @_slit_2
	.p2align	3, 0x0
__slit_2:
	.quad	3                               ## 0x3
	.quad	49                              ## 0x31

	.globl	__slit_3                        ## @_slit_3
	.p2align	3, 0x0
__slit_3:
	.quad	3                               ## 0x3
	.quad	50                              ## 0x32

	.globl	__slit_4                        ## @_slit_4
	.p2align	3, 0x0
__slit_4:
	.quad	3                               ## 0x3
	.quad	51                              ## 0x33

	.globl	__slit_5                        ## @_slit_5
	.p2align	3, 0x0
__slit_5:
	.quad	3                               ## 0x3
	.quad	52                              ## 0x34

	.globl	__slit_6                        ## @_slit_6
	.p2align	3, 0x0
__slit_6:
	.quad	3                               ## 0x3
	.quad	53                              ## 0x35

	.globl	__slit_7                        ## @_slit_7
	.p2align	3, 0x0
__slit_7:
	.quad	3                               ## 0x3
	.quad	54                              ## 0x36

	.globl	__slit_8                        ## @_slit_8
	.p2align	3, 0x0
__slit_8:
	.quad	3                               ## 0x3
	.quad	55                              ## 0x37

	.globl	__slit_9                        ## @_slit_9
	.p2align	3, 0x0
__slit_9:
	.quad	3                               ## 0x3
	.quad	56                              ## 0x38

	.globl	__slit_10                       ## @_slit_10
	.p2align	3, 0x0
__slit_10:
	.quad	3                               ## 0x3
	.quad	57                              ## 0x39

	.globl	__slit_11                       ## @_slit_11
	.p2align	4, 0x0
__slit_11:
	.quad	35                              ## 0x23
	.quad	7306085894386967890             ## 0x65646e69616d6552
	.quad	8243128972865577074             ## 0x72657a2079622072
	.quad	111                             ## 0x6f

	.globl	__slit_12                       ## @_slit_12
	.p2align	4, 0x0
__slit_12:
	.quad	29                              ## 0x1d
	.quad	7070762896912181572             ## 0x6220656469766944
	.quad	122537119457401                 ## 0x6f72657a2079

	.globl	__slit_13                       ## @_slit_13
	.p2align	3, 0x0
__slit_13:
	.quad	9                               ## 0x9
	.quad	543320422                       ## 0x20626966

	.globl	__slit_14                       ## @_slit_14
	.p2align	3, 0x0
__slit_14:
	.quad	7                               ## 0x7
	.quad	2112800                         ## 0x203d20

	.globl	__slit_15                       ## @_slit_15
	.p2align	3, 0x0
__slit_15:
	.quad	3                               ## 0x3
	.quad	10                              ## 0xa

	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	3
	.long	0
	.long	17
	.quad	_intToString_code
	.quad	40
	.quad	7
	.quad	_fib_code
	.quad	24
	.quad	2
	.quad	__mml_entry
	.quad	24
	.quad	8
	.quad	0
	.long	Ltmp0-_intToString_code
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
	.long	Ltmp1-_intToString_code
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
	.long	Ltmp2-_intToString_code
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
	.long	Ltmp3-_intToString_code
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
	.long	Ltmp4-_intToString_code
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
	.long	Ltmp5-_intToString_code
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
	.long	Ltmp6-_intToString_code
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
	.long	Ltmp7-_fib_code
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
	.long	Ltmp8-_fib_code
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
	.long	Ltmp10-__mml_entry
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
	.long	Ltmp11-__mml_entry
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
	.long	Ltmp12-__mml_entry
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
	.long	Ltmp13-__mml_entry
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
	.long	Ltmp14-__mml_entry
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
	.long	Ltmp15-__mml_entry
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
	.long	Ltmp16-__mml_entry
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
