define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_00EA:
	br label %intToString_code0093_hdr_00EB
intToString_code0093_hdr_00EB:
	; IF IntLt(i00AE, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_0107, label %else_00EC
else_00EC:
	; IF IntEq(i00B5, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_0106, label %else_00ED
else_00ED:
	; IF IntEq(i00B8, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_0105, label %else_00EE
else_00EE:
	; IF IntEq(i00BB, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_0104, label %else_00EF
else_00EF:
	; IF IntEq(i00BE, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_0103, label %else_00F0
else_00F0:
	; IF IntEq(i00C1, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_0102, label %else_00F1
else_00F1:
	; IF IntEq(i00C4, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_0101, label %else_00F2
else_00F2:
	; IF IntEq(i00C7, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_0100, label %else_00F3
else_00F3:
	; IF IntEq(i00CA, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_00FF, label %else_00F4
else_00F4:
	; IF IntEq(i00CD, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_00FE, label %else_00F5
else_00F5:
	; IF IntEq(i00D0, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_00FD, label %else_00F6
else_00F6:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_00F8, label %else_00F7
else_00F7:
	; LET _t600E9 = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_00F9
then_00F8:
	; LET _t500E6 = IntDiv (i00E5,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_00F9
join_00F9:
	%_t446 = phi i64 [ 1, %else_00F7 ], [ %n45, %then_00F8 ]
	%i47 = phi i64 [ %i1, %else_00F7 ], [ %i1, %then_00F8 ]
	; LET _t300D7 = apply $intToString_code0095 (_t400D5)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_00FB, label %else_00FA
else_00FA:
	; LET _t1000E3 = call _mml_fail ("Remainder by zero")
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
	br label %join_00FC
then_00FB:
	; LET _t900E0 = IntMod (i00DE,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_00FC
join_00FC:
	%_t855 = phi i64 [ 1, %else_00FA ], [ %n54, %then_00FB ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_00FA ], [ %g49, %then_00FB ]
	; LET _t700DB = apply $intToString_code0095 (_t800D9)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t1100DC = call _mml_concat (_t300DA,_t700DB)
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
then_00FD:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_00FE:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_00FF:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_0100:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_0101:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_0102:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_0103:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_0104:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_0105:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_0106:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_0107:
	; LET _t100B1 = IntNeg (i00B0)
	%n3 = sub i64 2, %i1
	; LET _t000B2 = apply $intToString_code0095 (_t100B1)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t200B3 = call _mml_concat ("-",_t000B2)
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

define fastcc i64 @fib_code(i64 %n71) gc "statepoint-example" {
entry_0108:
	br label %fib_code0092_hdr_0109
fib_code0092_hdr_0109:
	; IF IntLte(n00A3, 1)
	%b72 = icmp sle i64 %n71, 3
	br i1 %b72, label %then_010B, label %else_010A
else_010A:
	; LET _t1300A7 = IntSub (n00A6,1)
	%n73 = sub i64 %n71, 2
	; LET _t1200A8 = apply $fib_code0096 (_t1300A7)
	%tok74 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 %n73,
		i32 0,i32 0)
	%n75 = call i64 @llvm.experimental.gc.result.i64(token %tok74)
	; LET _t1500A9 = IntSub (n00A6,2)
	%n76 = sub i64 %n71, 4
	; LET _t1400AA = apply $fib_code0096 (_t1500A9)
	%tok77 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 %n76,
		i32 0,i32 0)
	%n78 = call i64 @llvm.experimental.gc.result.i64(token %tok77)
	; LET _t1600AB = IntAdd (_t1200A8,_t1400AA)
	%n79 = sub i64 %n75, 1
	%n80 = add i64 %n79, %n78
	ret i64 %n80
then_010B:
	ret i64 3
}

define i64 @_mml_entry(ptr addrspace(1) %arguments81) gc "statepoint-example" {
entry_010C:
	; LET fib_n0099 = apply $fib_code0096 (20)
	%tok82 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (i64)) @fib_code,
		i32 1,i32 0,
		i64 41,
		i32 0,i32 0)
	%n83 = call i64 @llvm.experimental.gc.result.i64(token %tok82)
	; LET un009A = call _mml_print ("fib ")
	%n84 = ptrtoint ptr @_slit_13 to i64
	%g85 = inttoptr i64 %n84 to ptr addrspace(1)
	%tok86 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g85,
		i32 0,i32 0)
	; LET _t17009B = apply $intToString_code0095 (20)
	%tok87 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 41,
		i32 0,i32 0)
	%g88 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok87)
	; LET un009C = call _mml_print (_t17009B)
	%tok89 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g88,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g88)]
	%g90 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok89,i32 8,i32 8)
	; LET un009D = call _mml_print (" = ")
	%n91 = ptrtoint ptr @_slit_14 to i64
	%g92 = inttoptr i64 %n91 to ptr addrspace(1)
	%tok93 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g92,
		i32 0,i32 0)
	; LET _t18009E = apply $intToString_code0095 (fib_n0099)
	%tok94 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n83,
		i32 0,i32 0)
	%g95 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok94)
	; LET un009F = call _mml_print (_t18009E)
	%tok96 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g95,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g95)]
	%g97 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok96,i32 8,i32 8)
	; LET un00A0 = call _mml_print ("\n")
	%n98 = ptrtoint ptr @_slit_15 to i64
	%g99 = inttoptr i64 %n98 to ptr addrspace(1)
	%tok100 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g99,
		i32 0,i32 0)
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
	i64 9,
	i64 543320422
]

@_slit_14 = global [2 x i64] [
	i64 7,
	i64 2112800
]

@_slit_15 = global [2 x i64] [
	i64 3,
	i64 10
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
