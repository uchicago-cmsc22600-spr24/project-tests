	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0
	.globl	__mml_entry                     ## -- Begin function _mml_entry
	.p2align	4, 0x90
__mml_entry:                            ## @_mml_entry
	.cfi_startproc
## %bb.0:                               ## %entry_0059
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	__slit_0(%rip), %rdi
	callq	__mml_print
Ltmp0:
	movl	$1, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	__slit_0                        ## @_slit_0
	.p2align	4, 0x0
__slit_0:
	.quad	25                              ## 0x19
	.quad	8031924123371070824             ## 0x6f77206f6c6c6568
	.quad	174353522                       ## 0xa646c72

	.section	__LLVM_STACKMAPS,__llvm_stackmaps
	.globl __LLVM_StackMaps
__LLVM_StackMaps:
	.byte	3
	.byte	0
	.short	0
	.long	1
	.long	0
	.long	1
	.quad	__mml_entry
	.quad	8
	.quad	1
	.quad	0
	.long	Ltmp0-__mml_entry
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
