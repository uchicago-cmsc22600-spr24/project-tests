define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_00B8:
	br label %intToString_code0072_hdr_00B9
intToString_code0072_hdr_00B9:
	; IF IntLt(i007C, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_00D5, label %else_00BA
else_00BA:
	; IF IntEq(i0083, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_00D4, label %else_00BB
else_00BB:
	; IF IntEq(i0086, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_00D3, label %else_00BC
else_00BC:
	; IF IntEq(i0089, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_00D2, label %else_00BD
else_00BD:
	; IF IntEq(i008C, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_00D1, label %else_00BE
else_00BE:
	; IF IntEq(i008F, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_00D0, label %else_00BF
else_00BF:
	; IF IntEq(i0092, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_00CF, label %else_00C0
else_00C0:
	; IF IntEq(i0095, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_00CE, label %else_00C1
else_00C1:
	; IF IntEq(i0098, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_00CD, label %else_00C2
else_00C2:
	; IF IntEq(i009B, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_00CC, label %else_00C3
else_00C3:
	; IF IntEq(i009E, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_00CB, label %else_00C4
else_00C4:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_00C6, label %else_00C5
else_00C5:
	; LET _t600B7 = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_00C7
then_00C6:
	; LET _t500B4 = IntDiv (i00B3,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_00C7
join_00C7:
	%_t446 = phi i64 [ 1, %else_00C5 ], [ %n45, %then_00C6 ]
	%i47 = phi i64 [ %i1, %else_00C5 ], [ %i1, %then_00C6 ]
	; LET _t300A5 = apply $intToString_code0074 (_t400A3)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_00C9, label %else_00C8
else_00C8:
	; LET _t1000B1 = call _mml_fail ("Remainder by zero")
	%n64 = ptrtoint ptr @_slit_11 to i64
	%g65 = inttoptr i64 %n64 to ptr addrspace(1)
	%tok66 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g65,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g49)]
	%g67 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok66,i32 8,i32 8)
	br label %join_00CA
then_00C9:
	; LET _t900AE = IntMod (i00AC,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_00CA
join_00CA:
	%_t855 = phi i64 [ 1, %else_00C8 ], [ %n54, %then_00C9 ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_00C8 ], [ %g49, %then_00C9 ]
	; LET _t700A9 = apply $intToString_code0074 (_t800A7)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t1100AA = call _mml_concat (_t300A8,_t700A9)
	%tok60 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g59, ptr addrspace(1) %g58,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g59, ptr addrspace(1) %g58)]
	%g61 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok60)
	%g62 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok60,i32 9,i32 9)
	%g63 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok60,i32 10,i32 10)
	ret ptr addrspace(1) %g61
then_00CB:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_00CC:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_00CD:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_00CE:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_00CF:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_00D0:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_00D1:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_00D2:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_00D3:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_00D4:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_00D5:
	; LET _t1007F = IntNeg (i007E)
	%n3 = sub i64 2, %i1
	; LET _t00080 = apply $intToString_code0074 (_t1007F)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t20081 = call _mml_concat ("-",_t00080)
	%n6 = ptrtoint ptr @_slit_0 to i64
	%g7 = inttoptr i64 %n6 to ptr addrspace(1)
	%tok8 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g7, ptr addrspace(1) %g5,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g5)]
	%g9 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok8)
	%g10 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok8,i32 9,i32 9)
	ret ptr addrspace(1) %g9
}

define i64 @_mml_entry(ptr addrspace(1) %arguments71) gc "statepoint-example" {
entry_00D6:
	; LET _t130077 = apply $intToString_code0074 (42)
	%tok72 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 85,
		i32 0,i32 0)
	%g73 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok72)
	; LET _t120078 = call _mml_concat (_t130077,"\n")
	%n74 = ptrtoint ptr @_slit_13 to i64
	%g75 = inttoptr i64 %n74 to ptr addrspace(1)
	%tok76 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g73, ptr addrspace(1) %g75,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g73)]
	%g77 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok76)
	%g78 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok76,i32 9,i32 9)
	; LET un0079 = call _mml_print (_t120078)
	%tok79 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g77,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g77)]
	%g80 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok79,i32 8,i32 8)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 3,
	i64 45
]

@_slit_1 = global [2 x i64] [
	i64 3,
	i64 48
]

@_slit_2 = global [2 x i64] [
	i64 3,
	i64 49
]

@_slit_3 = global [2 x i64] [
	i64 3,
	i64 50
]

@_slit_4 = global [2 x i64] [
	i64 3,
	i64 51
]

@_slit_5 = global [2 x i64] [
	i64 3,
	i64 52
]

@_slit_6 = global [2 x i64] [
	i64 3,
	i64 53
]

@_slit_7 = global [2 x i64] [
	i64 3,
	i64 54
]

@_slit_8 = global [2 x i64] [
	i64 3,
	i64 55
]

@_slit_9 = global [2 x i64] [
	i64 3,
	i64 56
]

@_slit_10 = global [2 x i64] [
	i64 3,
	i64 57
]

@_slit_11 = global [4 x i64] [
	i64 35,
	i64 7306085894386967890,
	i64 8243128972865577074,
	i64 111
]

@_slit_12 = global [3 x i64] [
	i64 29,
	i64 7070762896912181572,
	i64 122537119457401
]

@_slit_13 = global [2 x i64] [
	i64 3,
	i64 10
]


declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
