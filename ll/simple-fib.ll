define fastcc i64 @fib_code(i64 %n1) gc "statepoint-example" {
entry_0080:
	br label %fib_code0069_hdr_0081
fib_code0069_hdr_0081:
	; IF IntLte(n0077, 1)
	%b2 = icmp sle i64 %n1, 3
	br i1 %b2, label %then_0083, label %else_0082
else_0082:
	; LET _t1007B = IntSub (n007A,1)
	%n3 = sub i64 %n1, 2
	; LET _t0007C = apply $fib_code006B (_t1007B)
	%tok4 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%n5 = call i64 @llvm.experimental.gc.result.i64(token %tok4)
	; LET _t3007D = IntSub (n007A,2)
	%n6 = sub i64 %n1, 4
	; LET _t2007E = apply $fib_code006B (_t3007D)
	%tok7 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 %n6,
		i32 0,i32 0)
	%n8 = call i64 @llvm.experimental.gc.result.i64(token %tok7)
	; LET _t4007F = IntAdd (_t0007C,_t2007E)
	%n9 = sub i64 %n5, 1
	%n10 = add i64 %n9, %n8
	ret i64 %n10
then_0083:
	ret i64 3
}

define i64 @_mml_entry(ptr addrspace(1) %arguments11) gc "statepoint-example" {
entry_0084:
	; LET _t5006E = apply $fib_code006B (5)
	%tok12 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 11,
		i32 0,i32 0)
	%n13 = call i64 @llvm.experimental.gc.result.i64(token %tok12)
	; IF IntEq(_t5006E, 8)
	%b14 = icmp eq i64 %n13, 17
	br i1 %b14, label %then_0086, label %else_0085
else_0085:
	; LET _t70074 = call _mml_print ("Fail\n")
	%n19 = ptrtoint ptr @_slit_1 to i64
	%g20 = inttoptr i64 %n19 to ptr addrspace(1)
	%tok21 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g20,
		i32 0,i32 0)
	br label %join_0087
then_0086:
	; LET _t60072 = call _mml_print ("Ok\n")
	%n15 = ptrtoint ptr @_slit_0 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	%tok17 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g16,
		i32 0,i32 0)
	br label %join_0087
join_0087:
	%un18 = phi i64 [ 1, %else_0085 ], [ 1, %then_0086 ]
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 7,
	i64 682831
]

@_slit_1 = global [2 x i64] [
	i64 11,
	i64 44768518470
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
