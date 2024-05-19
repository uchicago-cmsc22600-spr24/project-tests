define fastcc i64 @fact_code(i64 %n1) gc "statepoint-example" {
entry_0088:
	br label %fact_code0073_hdr_0089
fact_code0073_hdr_0089:
	; IF IntLte(n0081, 1)
	%b2 = icmp sle i64 %n1, 3
	br i1 %b2, label %then_008B, label %else_008A
else_008A:
	; LET _t10085 = IntSub (n0084,1)
	%n3 = sub i64 %n1, 2
	; LET _t00086 = apply $fact_code0076 (_t10085)
	%tok4 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fact_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%n5 = call i64 @llvm.experimental.gc.result.i64(token %tok4)
	; LET _t20087 = IntMul (n0084,_t00086)
	%n6 = sub i64 %n1, 1
	%n7 = ashr i64 %n5, 1
	%n8 = mul i64 %n6, %n7
	%n9 = add i64 %n8, 1
	ret i64 %n9
then_008B:
	ret i64 3
}

define fastcc i64 @ignore_code(ptr addrspace(1) %x10) gc "statepoint-example" {
entry_008C:
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments11) gc "statepoint-example" {
entry_008D:
	; LET _t4007A = apply $fact_code0076 (5)
	%tok12 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fact_code,
		i32 1,i32 0,
		i64 11,
		i32 0,i32 0)
	%n13 = call i64 @llvm.experimental.gc.result.i64(token %tok12)
	; LET un007B = apply $ignore_code0077 (_t4007A)
	%g14 = inttoptr i64 %n13 to ptr addrspace(1)
	%tok15 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @ignore_code,
		i32 1,i32 0,
		ptr addrspace(1) %g14,
		i32 0,i32 0)
	%n16 = call i64 @llvm.experimental.gc.result.i64(token %tok15)
	; LET _t5007C = apply $fact_code0076 (6)
	%tok17 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fact_code,
		i32 1,i32 0,
		i64 13,
		i32 0,i32 0)
	%n18 = call i64 @llvm.experimental.gc.result.i64(token %tok17)
	; LET un007D = apply $ignore_code0077 (_t5007C)
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	%tok20 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @ignore_code,
		i32 1,i32 0,
		ptr addrspace(1) %g19,
		i32 0,i32 0)
	%n21 = call i64 @llvm.experimental.gc.result.i64(token %tok20)
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
