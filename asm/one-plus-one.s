	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_005B
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
