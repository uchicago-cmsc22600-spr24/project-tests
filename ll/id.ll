define fastcc ptr addrspace(1) @id_code(ptr addrspace(1) %id1,ptr addrspace(1) %x2) gc "statepoint-example" {
entry_0083:
	ret ptr addrspace(1) %x2
}

define i64 @_mml_entry(ptr addrspace(1) %arguments3) gc "statepoint-example" {
entry_0084:
	; LET id0075 = alloc [$id_code0072]
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	%n6 = ptrtoint ptr addrspace(1) %g5 to i64
	%p7 = inttoptr i64 %n6 to ptr
	%p8 = getelementptr i64, ptr %p7, i32 0
	store ptr @id_code, ptr %p8
	; LET _t00076 = apply $id_code0072 (id0075,id0075)
	%tok9 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @id_code,
		i32 2,i32 0,
		ptr addrspace(1) %g5, ptr addrspace(1) %g5,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g5)]
	%g10 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok9)
	%g11 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok9,i32 9,i32 9)
	; LET cp0077 = #0(_t00076)
	%n12 = ptrtoint ptr addrspace(1) %g10 to i64
	%p13 = inttoptr i64 %n12 to ptr
	%p14 = getelementptr ptr, ptr %p13, i32 0
	%p15 = load ptr, ptr %p14
	; LET _t10078 = apply cp0077 (_t00076,id0075)
	%n16 = ptrtoint ptr %p15 to i64
	%g17 = inttoptr i64 %n16 to ptr addrspace(1)
	%n18 = ptrtoint ptr addrspace(1) %g17 to i64
	%f19 = inttoptr i64 %n18 to ptr
	%tok20 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f19,
		i32 2,i32 0,
		ptr addrspace(1) %g10, ptr addrspace(1) %g11,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g11, ptr addrspace(1) %g10)]
	%g21 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok20)
	%g22 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok20,i32 9,i32 9)
	%g23 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok20,i32 10,i32 10)
	; LET cp0079 = #0(_t10078)
	%n24 = ptrtoint ptr addrspace(1) %g21 to i64
	%p25 = inttoptr i64 %n24 to ptr
	%p26 = getelementptr ptr, ptr %p25, i32 0
	%p27 = load ptr, ptr %p26
	; LET n007A = apply cp0079 (_t10078,42)
	%n28 = ptrtoint ptr %p27 to i64
	%g29 = inttoptr i64 %n28 to ptr addrspace(1)
	%n30 = ptrtoint ptr addrspace(1) %g29 to i64
	%f31 = inttoptr i64 %n30 to ptr
	%tok32 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f31,
		i32 2,i32 0,
		ptr addrspace(1) %g21, i64 85,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g21)]
	%n33 = call i64 @llvm.experimental.gc.result.i64(token %tok32)
	%g34 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok32,i32 9,i32 9)
	; IF IntEq(n007A, 42)
	%b35 = icmp eq i64 %n33, 85
	br i1 %b35, label %then_0086, label %else_0085
else_0085:
	; LET _t30080 = call _mml_print ("Fail\n")
	%n40 = ptrtoint ptr @_slit_1 to i64
	%g41 = inttoptr i64 %n40 to ptr addrspace(1)
	%tok42 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g41,
		i32 0,i32 0)
	br label %join_0087
then_0086:
	; LET _t2007E = call _mml_print ("Ok\n")
	%n36 = ptrtoint ptr @_slit_0 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	%tok38 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g37,
		i32 0,i32 0)
	br label %join_0087
join_0087:
	%un39 = phi i64 [ 1, %else_0085 ], [ 1, %then_0086 ]
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
