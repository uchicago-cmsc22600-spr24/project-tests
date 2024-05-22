define fastcc ptr addrspace(1) @g_code(ptr addrspace(1) %g1,ptr addrspace(1) %x2) gc "statepoint-example" {
entry_0090:
	; LET f008D = #1(g008B)
	%n3 = ptrtoint ptr addrspace(1) %g1 to i64
	%p4 = inttoptr i64 %n3 to ptr
	%p5 = getelementptr ptr, ptr %p4, i32 1
	%p6 = load ptr, ptr %p5
	; LET _t0008E = apply $y_code007D (f008D)
	%n7 = ptrtoint ptr %p6 to i64
	%g8 = inttoptr i64 %n7 to ptr addrspace(1)
	%tok9 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @y_code,
		i32 1,i32 0,
		ptr addrspace(1) %g8,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %x2)]
	%g10 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok9)
	%g11 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok9,i32 8,i32 8)
	; LET cp008F = #0(_t0008E)
	%n12 = ptrtoint ptr addrspace(1) %g10 to i64
	%p13 = inttoptr i64 %n12 to ptr
	%p14 = getelementptr ptr, ptr %p13, i32 0
	%p15 = load ptr, ptr %p14
	; TAIL_APPLY cp008F(_t0008E,x008C)
	%n16 = ptrtoint ptr %p15 to i64
	%g17 = inttoptr i64 %n16 to ptr addrspace(1)
	%n18 = ptrtoint ptr addrspace(1) %g17 to i64
	%f19 = inttoptr i64 %n18 to ptr
	; emitTailCall: %f19 (%g10, %g11)
	%g20 = tail call ptr addrspace(1) %f19 (ptr addrspace(1) %g10, ptr addrspace(1) %g11)
	ret ptr addrspace(1) %g20
}

define fastcc ptr addrspace(1) @y1_code(ptr addrspace(1) %y121,ptr addrspace(1) %x22) gc "statepoint-example" {
entry_0091:
	; LET f0086 = #1(y10084)
	%n23 = ptrtoint ptr addrspace(1) %y121 to i64
	%p24 = inttoptr i64 %n23 to ptr
	%p25 = getelementptr ptr, ptr %p24, i32 1
	%p26 = load ptr, ptr %p25
	; LET g0087 = alloc [$g_code007F,f0086]
	%tok27 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %x22)]
	%g28 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok27)
	%g29 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok27,i32 8,i32 8)
	%n30 = ptrtoint ptr addrspace(1) %g28 to i64
	%p31 = inttoptr i64 %n30 to ptr
	%p32 = getelementptr i64, ptr %p31, i32 0
	store ptr @g_code, ptr %p32
	%n33 = ptrtoint ptr addrspace(1) %g28 to i64
	%p34 = inttoptr i64 %n33 to ptr
	%p35 = getelementptr i64, ptr %p34, i32 1
	%n36 = ptrtoint ptr %p26 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	store ptr addrspace(1) %g37, ptr %p35
	; LET cp0088 = #0(f0086)
	%n38 = ptrtoint ptr %p26 to i64
	%g39 = inttoptr i64 %n38 to ptr addrspace(1)
	%n40 = ptrtoint ptr addrspace(1) %g39 to i64
	%p41 = inttoptr i64 %n40 to ptr
	%p42 = getelementptr ptr, ptr %p41, i32 0
	%p43 = load ptr, ptr %p42
	; LET _t10089 = apply cp0088 (f0086,g0087)
	%n44 = ptrtoint ptr %p43 to i64
	%g45 = inttoptr i64 %n44 to ptr addrspace(1)
	%n46 = ptrtoint ptr addrspace(1) %g45 to i64
	%f47 = inttoptr i64 %n46 to ptr
	%n48 = ptrtoint ptr %p26 to i64
	%g49 = inttoptr i64 %n48 to ptr addrspace(1)
	%tok50 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f47,
		i32 2,i32 0,
		ptr addrspace(1) %g49, ptr addrspace(1) %g28,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g29, ptr addrspace(1) %g28)]
	%g51 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok50)
	%g52 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok50,i32 9,i32 9)
	%g53 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok50,i32 10,i32 10)
	; LET cp008A = #0(_t10089)
	%n54 = ptrtoint ptr addrspace(1) %g51 to i64
	%p55 = inttoptr i64 %n54 to ptr
	%p56 = getelementptr ptr, ptr %p55, i32 0
	%p57 = load ptr, ptr %p56
	; TAIL_APPLY cp008A(_t10089,x0085)
	%n58 = ptrtoint ptr %p57 to i64
	%g59 = inttoptr i64 %n58 to ptr addrspace(1)
	%n60 = ptrtoint ptr addrspace(1) %g59 to i64
	%f61 = inttoptr i64 %n60 to ptr
	; emitTailCall: %f61 (%g51, %g52)
	%g62 = tail call ptr addrspace(1) %f61 (ptr addrspace(1) %g51, ptr addrspace(1) %g52)
	ret ptr addrspace(1) %g62
}

define fastcc ptr addrspace(1) @y_code(ptr addrspace(1) %f63) gc "statepoint-example" {
entry_0092:
	; LET y10083 = alloc [$y1_code007E,f0082]
	%tok64 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %f63)]
	%g65 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok64)
	%g66 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok64,i32 8,i32 8)
	%n67 = ptrtoint ptr addrspace(1) %g65 to i64
	%p68 = inttoptr i64 %n67 to ptr
	%p69 = getelementptr i64, ptr %p68, i32 0
	store ptr @y1_code, ptr %p69
	%n70 = ptrtoint ptr addrspace(1) %g65 to i64
	%p71 = inttoptr i64 %n70 to ptr
	%p72 = getelementptr i64, ptr %p71, i32 1
	store ptr addrspace(1) %g66, ptr %p72
	ret ptr addrspace(1) %g65
}

define i64 @_mml_entry(ptr addrspace(1) %arguments73) gc "statepoint-example" {
entry_0093:
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)

declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
