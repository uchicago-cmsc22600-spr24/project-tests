define fastcc i64 @fact_code(ptr addrspace(1) %fact1,i64 %n2) gc "statepoint-example" {
entry_008E:
	br label %fact_code006E_hdr_008F
fact_code006E_hdr_008F:
	; LET zero0083 = #0(fact0081)
	%n3 = ptrtoint ptr addrspace(1) %fact1 to i64
	%p4 = inttoptr i64 %n3 to ptr
	%p5 = getelementptr ptr, ptr %p4, i32 0
	%p6 = load ptr, ptr %p5
	; LET one0084 = #1(fact0081)
	%n7 = ptrtoint ptr addrspace(1) %fact1 to i64
	%p8 = inttoptr i64 %n7 to ptr
	%p9 = getelementptr ptr, ptr %p8, i32 1
	%p10 = load ptr, ptr %p9
	; IF IntLte(n0082, zero0083)
	%n12 = ptrtoint ptr %p6 to i64
	%b11 = icmp sle i64 %n2, %n12
	%n13 = ptrtoint ptr %p10 to i64
	%n14 = ptrtoint ptr %p10 to i64
	br i1 %b11, label %then_0091, label %else_0090
else_0090:
	; LET _t1008B = IntSub (n0088,one008A)
	%n15 = sub i64 %n2, %n14
	%n16 = add i64 %n15, 1
	; LET _t0008C = apply $fact_code0073 (fact0089,_t1008B)
	%tok17 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) @fact_code,
		i32 2,i32 0,
		ptr addrspace(1) %fact1, i64 %n16,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %fact1)]
	%n18 = call i64 @llvm.experimental.gc.result.i64(token %tok17)
	%g19 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok17,i32 9,i32 9)
	; LET _t2008D = IntMul (n0088,_t0008C)
	%n20 = sub i64 %n2, 1
	%n21 = ashr i64 %n18, 1
	%n22 = mul i64 %n20, %n21
	%n23 = add i64 %n22, 1
	ret i64 %n23
then_0091:
	ret i64 %n13
}

define i64 @_mml_entry(ptr addrspace(1) %arguments24) gc "statepoint-example" {
entry_0092:
	; LET fact0076 = alloc [0,1]
	%tok25 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g26 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok25)
	%n27 = ptrtoint ptr addrspace(1) %g26 to i64
	%p28 = inttoptr i64 %n27 to ptr
	%p29 = getelementptr i64, ptr %p28, i32 0
	store i64 1, ptr %p29
	%n30 = ptrtoint ptr addrspace(1) %g26 to i64
	%p31 = inttoptr i64 %n30 to ptr
	%p32 = getelementptr i64, ptr %p31, i32 1
	store i64 3, ptr %p32
	; LET _t30077 = apply $fact_code0073 (fact0076,5)
	%tok33 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) @fact_code,
		i32 2,i32 0,
		ptr addrspace(1) %g26, i64 11,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g26)]
	%n34 = call i64 @llvm.experimental.gc.result.i64(token %tok33)
	%g35 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok33,i32 9,i32 9)
	; IF IntEq(_t30077, 120)
	%b36 = icmp eq i64 %n34, 241
	br i1 %b36, label %then_0094, label %else_0093
else_0093:
	; LET _t5007D = call _mml_print ("Fail\n")
	%n41 = ptrtoint ptr @_slit_1 to i64
	%g42 = inttoptr i64 %n41 to ptr addrspace(1)
	%tok43 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g42,
		i32 0,i32 0)
	br label %join_0095
then_0094:
	; LET _t4007B = call _mml_print ("Ok\n")
	%n37 = ptrtoint ptr @_slit_0 to i64
	%g38 = inttoptr i64 %n37 to ptr addrspace(1)
	%tok39 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g38,
		i32 0,i32 0)
	br label %join_0095
join_0095:
	%un40 = phi i64 [ 1, %else_0093 ], [ 1, %then_0094 ]
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
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
