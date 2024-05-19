define fastcc i64 @check_code(ptr addrspace(1) %tpl1) gc "statepoint-example" {
entry_00C5:
	; LET msg00BC = #0(tpl00BB)
	%n2 = ptrtoint ptr addrspace(1) %tpl1 to i64
	%p3 = inttoptr i64 %n2 to ptr
	%p4 = getelementptr ptr, ptr %p3, i32 0
	%p5 = load ptr, ptr %p4
	; LET result00BD = #1(tpl00BB)
	%n6 = ptrtoint ptr addrspace(1) %tpl1 to i64
	%p7 = inttoptr i64 %n6 to ptr
	%p8 = getelementptr ptr, ptr %p7, i32 1
	%p9 = load ptr, ptr %p8
	; LET expected00BE = #2(tpl00BB)
	%n10 = ptrtoint ptr addrspace(1) %tpl1 to i64
	%p11 = inttoptr i64 %n10 to ptr
	%p12 = getelementptr ptr, ptr %p11, i32 2
	%p13 = load ptr, ptr %p12
	; LET un00BF = call _mml_print ("test ")
	%n14 = ptrtoint ptr @_slit_0 to i64
	%g15 = inttoptr i64 %n14 to ptr addrspace(1)
	%tok16 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g15,
		i32 0,i32 0)
	; LET un00C0 = call _mml_print (msg00BC)
	%n17 = ptrtoint ptr %p5 to i64
	%g18 = inttoptr i64 %n17 to ptr addrspace(1)
	%tok19 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g18,
		i32 0,i32 0)
	; IF IntEq(result00BD, expected00BE)
	%b20 = icmp eq ptr %p9, %p13
	br i1 %b20, label %then_00C7, label %else_00C6
else_00C6:
	; LET _t100C4 = call _mml_print (" FAIL\n")
	%n24 = ptrtoint ptr @_slit_2 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	%tok26 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g25,
		i32 0,i32 0)
	ret i64 1
then_00C7:
	; LET _t000C2 = call _mml_print (" OK\n")
	%n21 = ptrtoint ptr @_slit_1 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	%tok23 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g22,
		i32 0,i32 0)
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments27) gc "statepoint-example" {
entry_00C8:
	; LET _t30098 = IntAdd (1,1)
	; LET _t20099 = alloc ["1+1",_t30098,2]
	%tok28 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g29 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok28)
	%n30 = ptrtoint ptr addrspace(1) %g29 to i64
	%p31 = inttoptr i64 %n30 to ptr
	%p32 = getelementptr i64, ptr %p31, i32 0
	store ptr @_slit_3, ptr %p32
	%n33 = ptrtoint ptr addrspace(1) %g29 to i64
	%p34 = inttoptr i64 %n33 to ptr
	%p35 = getelementptr i64, ptr %p34, i32 1
	store i64 5, ptr %p35
	%n36 = ptrtoint ptr addrspace(1) %g29 to i64
	%p37 = inttoptr i64 %n36 to ptr
	%p38 = getelementptr i64, ptr %p37, i32 2
	store i64 5, ptr %p38
	; LET un009A = apply $check_code0095 (_t20099)
	%tok39 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g29,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g29)]
	%n40 = call i64 @llvm.experimental.gc.result.i64(token %tok39)
	%g41 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok39,i32 8,i32 8)
	; LET _t5009B = IntAdd (1,2)
	; LET _t4009C = alloc ["1+2",_t5009B,3]
	%tok42 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g43 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok42)
	%n44 = ptrtoint ptr addrspace(1) %g43 to i64
	%p45 = inttoptr i64 %n44 to ptr
	%p46 = getelementptr i64, ptr %p45, i32 0
	store ptr @_slit_4, ptr %p46
	%n47 = ptrtoint ptr addrspace(1) %g43 to i64
	%p48 = inttoptr i64 %n47 to ptr
	%p49 = getelementptr i64, ptr %p48, i32 1
	store i64 7, ptr %p49
	%n50 = ptrtoint ptr addrspace(1) %g43 to i64
	%p51 = inttoptr i64 %n50 to ptr
	%p52 = getelementptr i64, ptr %p51, i32 2
	store i64 7, ptr %p52
	; LET un009D = apply $check_code0095 (_t4009C)
	%tok53 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g43,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g43)]
	%n54 = call i64 @llvm.experimental.gc.result.i64(token %tok53)
	%g55 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok53,i32 8,i32 8)
	; LET _t7009E = IntSub (1,1)
	; LET _t6009F = alloc ["1-1",_t7009E,0]
	%tok56 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g57 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok56)
	%n58 = ptrtoint ptr addrspace(1) %g57 to i64
	%p59 = inttoptr i64 %n58 to ptr
	%p60 = getelementptr i64, ptr %p59, i32 0
	store ptr @_slit_5, ptr %p60
	%n61 = ptrtoint ptr addrspace(1) %g57 to i64
	%p62 = inttoptr i64 %n61 to ptr
	%p63 = getelementptr i64, ptr %p62, i32 1
	store i64 1, ptr %p63
	%n64 = ptrtoint ptr addrspace(1) %g57 to i64
	%p65 = inttoptr i64 %n64 to ptr
	%p66 = getelementptr i64, ptr %p65, i32 2
	store i64 1, ptr %p66
	; LET un00A0 = apply $check_code0095 (_t6009F)
	%tok67 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g57,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g57)]
	%n68 = call i64 @llvm.experimental.gc.result.i64(token %tok67)
	%g69 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok67,i32 8,i32 8)
	; LET _t900A1 = IntSub (1,2)
	; LET _t1000A2 = IntNeg (1)
	; LET _t800A3 = alloc ["1-2",_t900A1,_t1000A2]
	%tok70 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g71 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok70)
	%n72 = ptrtoint ptr addrspace(1) %g71 to i64
	%p73 = inttoptr i64 %n72 to ptr
	%p74 = getelementptr i64, ptr %p73, i32 0
	store ptr @_slit_6, ptr %p74
	%n75 = ptrtoint ptr addrspace(1) %g71 to i64
	%p76 = inttoptr i64 %n75 to ptr
	%p77 = getelementptr i64, ptr %p76, i32 1
	store i64 -1, ptr %p77
	%n78 = ptrtoint ptr addrspace(1) %g71 to i64
	%p79 = inttoptr i64 %n78 to ptr
	%p80 = getelementptr i64, ptr %p79, i32 2
	store i64 -1, ptr %p80
	; LET un00A4 = apply $check_code0095 (_t800A3)
	%tok81 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g71,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g71)]
	%n82 = call i64 @llvm.experimental.gc.result.i64(token %tok81)
	%g83 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok81,i32 8,i32 8)
	; LET _t1200A5 = IntMul (1,1)
	; LET _t1100A6 = alloc ["1*1",_t1200A5,1]
	%tok84 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g85 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok84)
	%n86 = ptrtoint ptr addrspace(1) %g85 to i64
	%p87 = inttoptr i64 %n86 to ptr
	%p88 = getelementptr i64, ptr %p87, i32 0
	store ptr @_slit_7, ptr %p88
	%n89 = ptrtoint ptr addrspace(1) %g85 to i64
	%p90 = inttoptr i64 %n89 to ptr
	%p91 = getelementptr i64, ptr %p90, i32 1
	store i64 3, ptr %p91
	%n92 = ptrtoint ptr addrspace(1) %g85 to i64
	%p93 = inttoptr i64 %n92 to ptr
	%p94 = getelementptr i64, ptr %p93, i32 2
	store i64 3, ptr %p94
	; LET un00A7 = apply $check_code0095 (_t1100A6)
	%tok95 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g85,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g85)]
	%n96 = call i64 @llvm.experimental.gc.result.i64(token %tok95)
	%g97 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok95,i32 8,i32 8)
	; LET _t1400A8 = IntMul (12,4)
	; LET _t1300A9 = alloc ["12*4",_t1400A8,48]
	%tok98 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g99 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok98)
	%n100 = ptrtoint ptr addrspace(1) %g99 to i64
	%p101 = inttoptr i64 %n100 to ptr
	%p102 = getelementptr i64, ptr %p101, i32 0
	store ptr @_slit_8, ptr %p102
	%n103 = ptrtoint ptr addrspace(1) %g99 to i64
	%p104 = inttoptr i64 %n103 to ptr
	%p105 = getelementptr i64, ptr %p104, i32 1
	store i64 97, ptr %p105
	%n106 = ptrtoint ptr addrspace(1) %g99 to i64
	%p107 = inttoptr i64 %n106 to ptr
	%p108 = getelementptr i64, ptr %p107, i32 2
	store i64 97, ptr %p108
	; LET un00AA = apply $check_code0095 (_t1300A9)
	%tok109 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g99,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g99)]
	%n110 = call i64 @llvm.experimental.gc.result.i64(token %tok109)
	%g111 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok109,i32 8,i32 8)
	; IF IntNEq(4, 0)
	%b112 = icmp ne i64 9, 1
	br i1 %b112, label %then_00CA, label %else_00C9
else_00C9:
	; LET _t1800BA = call _mml_fail ("Divide by zero")
	%n147 = ptrtoint ptr @_slit_11 to i64
	%g148 = inttoptr i64 %n147 to ptr addrspace(1)
	%tok149 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g148,
		i32 0,i32 0)
	br label %join_00CB
then_00CA:
	; LET _t1700B8 = IntDiv (12,4)
	br label %join_00CB
join_00CB:
	%_t16113 = phi i64 [ 1, %else_00C9 ], [ 7, %then_00CA ]
	; LET _t1500AD = alloc ["12/4",_t1600AC,3]
	%tok114 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g115 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok114)
	%n116 = ptrtoint ptr addrspace(1) %g115 to i64
	%p117 = inttoptr i64 %n116 to ptr
	%p118 = getelementptr i64, ptr %p117, i32 0
	store ptr @_slit_9, ptr %p118
	%n119 = ptrtoint ptr addrspace(1) %g115 to i64
	%p120 = inttoptr i64 %n119 to ptr
	%p121 = getelementptr i64, ptr %p120, i32 1
	store i64 %_t16113, ptr %p121
	%n122 = ptrtoint ptr addrspace(1) %g115 to i64
	%p123 = inttoptr i64 %n122 to ptr
	%p124 = getelementptr i64, ptr %p123, i32 2
	store i64 7, ptr %p124
	; LET un00AE = apply $check_code0095 (_t1500AD)
	%tok125 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g115,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g115)]
	%n126 = call i64 @llvm.experimental.gc.result.i64(token %tok125)
	%g127 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok125,i32 8,i32 8)
	; IF IntNEq(5, 0)
	%b128 = icmp ne i64 11, 1
	br i1 %b128, label %then_00CD, label %else_00CC
else_00CC:
	; LET _t2200B6 = call _mml_fail ("Divide by zero")
	%n144 = ptrtoint ptr @_slit_11 to i64
	%g145 = inttoptr i64 %n144 to ptr addrspace(1)
	%tok146 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g145,
		i32 0,i32 0)
	br label %join_00CE
then_00CD:
	; LET _t2100B4 = IntDiv (12,5)
	br label %join_00CE
join_00CE:
	%_t20129 = phi i64 [ 1, %else_00CC ], [ 5, %then_00CD ]
	; LET _t1900B1 = alloc ["12/5",_t2000B0,2]
	%tok130 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
	%g131 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok130)
	%n132 = ptrtoint ptr addrspace(1) %g131 to i64
	%p133 = inttoptr i64 %n132 to ptr
	%p134 = getelementptr i64, ptr %p133, i32 0
	store ptr @_slit_10, ptr %p134
	%n135 = ptrtoint ptr addrspace(1) %g131 to i64
	%p136 = inttoptr i64 %n135 to ptr
	%p137 = getelementptr i64, ptr %p136, i32 1
	store i64 %_t20129, ptr %p137
	%n138 = ptrtoint ptr addrspace(1) %g131 to i64
	%p139 = inttoptr i64 %n138 to ptr
	%p140 = getelementptr i64, ptr %p139, i32 2
	store i64 5, ptr %p140
	; LET un00B2 = apply $check_code0095 (_t1900B1)
	%tok141 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @check_code,
		i32 1,i32 0,
		ptr addrspace(1) %g131,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g131)]
	%n142 = call i64 @llvm.experimental.gc.result.i64(token %tok141)
	%g143 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok141,i32 8,i32 8)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 11,
	i64 139392673140
]

@_slit_1 = global [2 x i64] [
	i64 9,
	i64 172707616
]

@_slit_2 = global [2 x i64] [
	i64 13,
	i64 11322762806816
]

@_slit_3 = global [2 x i64] [
	i64 7,
	i64 3222321
]

@_slit_4 = global [2 x i64] [
	i64 7,
	i64 3287857
]

@_slit_5 = global [2 x i64] [
	i64 7,
	i64 3222833
]

@_slit_6 = global [2 x i64] [
	i64 7,
	i64 3288369
]

@_slit_7 = global [2 x i64] [
	i64 7,
	i64 3222065
]

@_slit_8 = global [2 x i64] [
	i64 9,
	i64 875180593
]

@_slit_9 = global [2 x i64] [
	i64 9,
	i64 875508273
]

@_slit_10 = global [2 x i64] [
	i64 9,
	i64 892285489
]

@_slit_11 = global [3 x i64] [
	i64 29,
	i64 7070762896912181572,
	i64 122537119457401
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
