define fastcc i64 @lp_code(ptr addrspace(1) %lp1,i64 %x2) gc "statepoint-example" {
entry_0098:
	br label %lp_code007B_hdr_0099
lp_code007B_hdr_0099:
	%lp3 = phi ptr addrspace(1) [ %lp3, %else_009A ], [ %lp1, %entry_0098 ]
	%x4 = phi i64 [ %n12, %else_009A ], [ %x2, %entry_0098 ]
	; LET n0090 = #1(lp008E)
	%n5 = ptrtoint ptr addrspace(1) %lp3 to i64
	%p6 = inttoptr i64 %n5 to ptr
	%p7 = getelementptr ptr, ptr %p6, i32 1
	%p8 = load ptr, ptr %p7
	; IF IntLt(x008F, 0)
	%b9 = icmp slt i64 %x4, 1
	%n10 = ptrtoint ptr %p8 to i64
	br i1 %b9, label %then_009B, label %else_009A
else_009A:
	; LET _t00097 = IntSub (x0094,n0096)
	%n11 = sub i64 %x4, %n10
	%n12 = add i64 %n11, 1
	br label %lp_code007B_hdr_0099
then_009B:
	ret i64 %x4
}

define fastcc ptr addrspace(1) @f_code(i64 %n13) gc "statepoint-example" {
entry_009C:
	; LET lp008A = alloc [$lp_code0080,n0089]
	%tok14 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g15 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok14)
	%n16 = ptrtoint ptr addrspace(1) %g15 to i64
	%p17 = inttoptr i64 %n16 to ptr
	%p18 = getelementptr i64, ptr %p17, i32 0
	store ptr @lp_code, ptr %p18
	%n19 = ptrtoint ptr addrspace(1) %g15 to i64
	%p20 = inttoptr i64 %n19 to ptr
	%p21 = getelementptr i64, ptr %p20, i32 1
	store i64 %n13, ptr %p21
	ret ptr addrspace(1) %g15
}

define fastcc i64 @ignore_code(ptr addrspace(1) %x22) gc "statepoint-example" {
entry_009D:
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments23) gc "statepoint-example" {
entry_009E:
	; LET _t20084 = apply $f_code007F (42)
	%tok24 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @f_code,
		i32 1,i32 0,
		i64 85,
		i32 0,i32 0)
	%g25 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok24)
	; LET un0085 = apply $ignore_code0081 (_t20084)
	%tok26 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @ignore_code,
		i32 1,i32 0,
		ptr addrspace(1) %g25,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g25)]
	%n27 = call i64 @llvm.experimental.gc.result.i64(token %tok26)
	%g28 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok26,i32 8,i32 8)
	; LET _t30086 = apply $f_code007F (17)
	%tok29 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @f_code,
		i32 1,i32 0,
		i64 35,
		i32 0,i32 0)
	%g30 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok29)
	; LET un0087 = apply $ignore_code0081 (_t30086)
	%tok31 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @ignore_code,
		i32 1,i32 0,
		ptr addrspace(1) %g30,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g30)]
	%n32 = call i64 @llvm.experimental.gc.result.i64(token %tok31)
	%g33 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok31,i32 8,i32 8)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)

declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
