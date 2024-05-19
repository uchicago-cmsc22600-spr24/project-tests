	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_check_code                     ## -- Begin function check_code
	.p2align	4, 0x90
_check_code:                            ## @check_code
	.cfi_startproc
## %bb.0:                               ## %entry_00C5
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r14
	leaq	__slit_0(%rip), %rax
	movq	16(%rdi), %r15
	movq	%rax, %rdi
	callq	__mml_print
Ltmp0:
	movq	%rbx, %rdi
	callq	__mml_print
Ltmp1:
	cmpq	%r15, %r14
	je	LBB0_3
## %bb.1:                               ## %else_00C6
	leaq	__slit_2(%rip), %rdi
	jmp	LBB0_2
LBB0_3:                                 ## %then_00C7
	leaq	__slit_1(%rip), %rdi
LBB0_2:                                 ## %else_00C6
	callq	__mml_print
Ltmp2:
	movl	$1, %eax
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
## %bb.0:                               ## %entry_00C8
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$3, %edi
	callq	__mml_alloc
Ltmp3:
	leaq	__slit_3(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$5, 8(%rax)
	movq	$5, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp4:
	movl	$3, %edi
	callq	__mml_alloc
Ltmp5:
	leaq	__slit_4(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$7, 8(%rax)
	movq	$7, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp6:
	movl	$3, %edi
	callq	__mml_alloc
Ltmp7:
	leaq	__slit_5(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$1, 8(%rax)
	movq	$1, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp8:
	movl	$3, %edi
	callq	__mml_alloc
Ltmp9:
	leaq	__slit_6(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$-1, 8(%rax)
	movq	$-1, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp10:
	movl	$3, %edi
	callq	__mml_alloc
Ltmp11:
	leaq	__slit_7(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$3, 8(%rax)
	movq	$3, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp12:
	movl	$3, %edi
	callq	__mml_alloc
Ltmp13:
	leaq	__slit_8(%rip), %rcx
	movq	%rcx, (%rax)
	movq	$97, 8(%rax)
	movq	$97, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp14:
	movl	$7, %r14d
	movb	$1, %bl
	testb	%bl, %bl
	jne	LBB1_2
## %bb.1:                               ## %else_00C9
	leaq	__slit_11(%rip), %rdi
	callq	__mml_fail
Ltmp15:
	movl	$1, %r14d
LBB1_2:                                 ## %join_00CB
	movl	$3, %edi
	callq	__mml_alloc
Ltmp16:
	leaq	__slit_9(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%r14, 8(%rax)
	movq	$7, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp17:
	movl	$5, %r14d
	testb	%bl, %bl
	jne	LBB1_4
## %bb.3:                               ## %else_00CC
	leaq	__slit_11(%rip), %rdi
	callq	__mml_fail
Ltmp18:
	movl	$1, %r14d
LBB1_4:                                 ## %join_00CE
	movl	$3, %edi
	callq	__mml_alloc
Ltmp19:
	leaq	__slit_10(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%r14, 8(%rax)
	movq	$5, 16(%rax)
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_check_code
Ltmp20:
	movl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	__slit_0                        ## @_slit_0
	.p2align	3, 0x0
__slit_0:
	.quad	11                              ## 0xb
	.quad	139392673140                    ## 0x2074736574

	.globl	__slit_1                        ## @_slit_1
	.p2align	3, 0x0
__slit_1:
	.quad	9                               ## 0x9
	.quad	172707616                       ## 0xa4b4f20

	.globl	__slit_2                        ## @_slit_2
	.p2align	3, 0x0
__slit_2:
	.quad	13                              ## 0xd
	.quad	11322762806816                  ## 0xa4c49414620

	.globl	__slit_3                        ## @_slit_3
	.p2align	3, 0x0
__slit_3:
	.quad	7                               ## 0x7
	.quad	3222321                         ## 0x312b31

	.globl	__slit_4                        ## @_slit_4
	.p2align	3, 0x0
__slit_4:
	.quad	7                               ## 0x7
	.quad	3287857                         ## 0x322b31

	.globl	__slit_5                        ## @_slit_5
	.p2align	3, 0x0
__slit_5:
	.quad	7                               ## 0x7
	.quad	3222833                         ## 0x312d31

	.globl	__slit_6                        ## @_slit_6
	.p2align	3, 0x0
__slit_6:
	.quad	7                               ## 0x7
	.quad	3288369                         ## 0x322d31

	.globl	__slit_7                        ## @_slit_7
	.p2align	3, 0x0
__slit_7:
	.quad	7                               ## 0x7
	.quad	3222065                         ## 0x312a31

	.globl	__slit_8                        ## @_slit_8
	.p2align	3, 0x0
__slit_8:
	.quad	9                               ## 0x9
	.quad	875180593                       ## 0x342a3231

	.globl	__slit_9                        ## @_slit_9
	.p2align	3, 0x0
__slit_9:
	.quad	9                               ## 0x9
	.quad	875508273                       ## 0x342f3231

	.globl	__slit_10                       ## @_slit_10
	.p2align	3, 0x0
__slit_10:
	.quad	9                               ## 0x9
	.quad	892285489                       ## 0x352f3231

	.globl	__slit_11                       ## @_slit_11
	.p2align	4, 0x0
__slit_11:
	.quad	29                              ## 0x1d
	.quad	7070762896912181572             ## 0x6220656469766944
	.quad	122537119457401                 ## 0x6f72657a2079

	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	2
	.long	0
	.long	21
	.quad	_check_code
	.quad	24
	.quad	3
	.quad	__mml_entry
	.quad	24
	.quad	18
	.quad	0
	.long	Ltmp0-_check_code
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
	.long	Ltmp1-_check_code
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
	.long	Ltmp2-_check_code
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
	.long	Ltmp5-__mml_entry
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
	.long	Ltmp7-__mml_entry
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
	.long	Ltmp15-__mml_entry
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
	.quad	0
	.long	Ltmp17-__mml_entry
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
	.long	Ltmp18-__mml_entry
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
	.long	Ltmp19-__mml_entry
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
	.long	Ltmp20-__mml_entry
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
