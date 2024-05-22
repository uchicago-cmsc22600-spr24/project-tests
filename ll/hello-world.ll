define i64 @_mml_entry(ptr addrspace(1) %arguments1) gc "statepoint-example" {
entry_0059:
	; LET un0058 = call _mml_print ("hello world\n")
	%n2 = ptrtoint ptr @_slit_0 to i64
	%g3 = inttoptr i64 %n2 to ptr addrspace(1)
	%tok4 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g3,
		i32 0,i32 0)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)
@_slit_0 = global [3 x i64] [
	i64 25,
	i64 8031924123371070824,
	i64 174353522
]


declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
