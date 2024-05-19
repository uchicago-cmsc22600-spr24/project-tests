	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	_f_code                         ## -- Begin function f_code
	.p2align	4, 0x90
_f_code:                                ## @f_code
	.cfi_startproc
## %bb.0:                               ## %entry_009B
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	testb	$1, %cl
	jne	LBB0_3
## %bb.1:                               ## %boxed_009C
	cmpq	$1, (%rcx)
	jne	LBB0_7
## %bb.2:                               ## %tlab_009E
	movq	8(%rcx), %rax
	retq
LBB0_3:                                 ## %unboxed_009F
	cmpq	$1, %rcx
	jne	LBB0_5
## %bb.4:                               ## %tlab_00A3
	movl	$3, %eax
LBB0_7:                                 ## %dflt_00A4
	retq
LBB0_5:                                 ## %flab_00A0
	cmpq	$3, %rcx
	jne	LBB0_7
## %bb.6:                               ## %tlab_00A2
	movl	$5, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_00A5
	movl	$1, %eax
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
	.section __LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte   3
	.byte   0
	.short  0
	.long   0
	.long   0
	.long   0
