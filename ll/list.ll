define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_01F9:
	br label %intToString_code012B_hdr_01FA
intToString_code012B_hdr_01FA:
	; IF IntLt(i01BD, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_0216, label %else_01FB
else_01FB:
	; IF IntEq(i01C4, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_0215, label %else_01FC
else_01FC:
	; IF IntEq(i01C7, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_0214, label %else_01FD
else_01FD:
	; IF IntEq(i01CA, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_0213, label %else_01FE
else_01FE:
	; IF IntEq(i01CD, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_0212, label %else_01FF
else_01FF:
	; IF IntEq(i01D0, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_0211, label %else_0200
else_0200:
	; IF IntEq(i01D3, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_0210, label %else_0201
else_0201:
	; IF IntEq(i01D6, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_020F, label %else_0202
else_0202:
	; IF IntEq(i01D9, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_020E, label %else_0203
else_0203:
	; IF IntEq(i01DC, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_020D, label %else_0204
else_0204:
	; IF IntEq(i01DF, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_020C, label %else_0205
else_0205:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_0207, label %else_0206
else_0206:
	; LET _t601F8 = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_0208
then_0207:
	; LET _t501F5 = IntDiv (i01F4,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_0208
join_0208:
	%_t446 = phi i64 [ 1, %else_0206 ], [ %n45, %then_0207 ]
	%i47 = phi i64 [ %i1, %else_0206 ], [ %i1, %then_0207 ]
	; LET _t301E6 = apply $intToString_code014C (_t401E4)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_020A, label %else_0209
else_0209:
	; LET _t1001F2 = call _mml_fail ("Remainder by zero")
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
	br label %join_020B
then_020A:
	; LET _t901EF = IntMod (i01ED,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_020B
join_020B:
	%_t855 = phi i64 [ 1, %else_0209 ], [ %n54, %then_020A ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_0209 ], [ %g49, %then_020A ]
	; LET _t701EA = apply $intToString_code014C (_t801E8)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t1101EB = call _mml_concat (_t301E9,_t701EA)
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
then_020C:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_020D:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_020E:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_020F:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_0210:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_0211:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_0212:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_0213:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_0214:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_0215:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_0216:
	; LET _t101C0 = IntNeg (i01BF)
	%n3 = sub i64 2, %i1
	; LET _t001C1 = apply $intToString_code014C (_t101C0)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t201C2 = call _mml_concat ("-",_t001C1)
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

define fastcc ptr addrspace(1) @foldl2_code(ptr addrspace(1) %foldl271,ptr addrspace(1) %l72) gc "statepoint-example" {
entry_0217:
	; LET f01A8 = #1(foldl201A6)
	%n73 = ptrtoint ptr addrspace(1) %foldl271 to i64
	%p74 = inttoptr i64 %n73 to ptr
	%p75 = getelementptr ptr, ptr %p74, i32 1
	%p76 = load ptr, ptr %p75
	; LET b01A9 = #2(foldl201A6)
	%n77 = ptrtoint ptr addrspace(1) %foldl271 to i64
	%p78 = inttoptr i64 %n77 to ptr
	%p79 = getelementptr ptr, ptr %p78, i32 2
	%p80 = load ptr, ptr %p79
	; IF Boxed(l01A7)
	%n82 = ptrtoint ptr addrspace(1) %l72 to i64
	%n81 = and i64 %n82, 1
	%b83 = icmp eq i64 %n81, 0
	%n84 = ptrtoint ptr %p76 to i64
	%g85 = inttoptr i64 %n84 to ptr addrspace(1)
	%n86 = ptrtoint ptr %p80 to i64
	%g87 = inttoptr i64 %n86 to ptr addrspace(1)
	%n151 = ptrtoint ptr %p80 to i64
	%g152 = inttoptr i64 %n151 to ptr addrspace(1)
	br i1 %b83, label %boxed_0218, label %unboxed_0219
boxed_0218:
	; LET hd01B1 = #0(l01AE)
	%n88 = ptrtoint ptr addrspace(1) %l72 to i64
	%p89 = inttoptr i64 %n88 to ptr
	%p90 = getelementptr ptr, ptr %p89, i32 0
	%p91 = load ptr, ptr %p90
	; LET tl01B2 = #1(l01AE)
	%n92 = ptrtoint ptr addrspace(1) %l72 to i64
	%p93 = inttoptr i64 %n92 to ptr
	%p94 = getelementptr ptr, ptr %p93, i32 1
	%p95 = load ptr, ptr %p94
	; LET _t1201B3 = apply $foldl_code014D (f01AF)
	%tok96 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @foldl_code,
		i32 1,i32 0,
		ptr addrspace(1) %g85,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g85, ptr addrspace(1) %g87)]
	%g97 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok96)
	%g98 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok96,i32 8,i32 8)
	%g99 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok96,i32 9,i32 9)
	; LET cp01B4 = #0(f01AF)
	%n100 = ptrtoint ptr addrspace(1) %g98 to i64
	%p101 = inttoptr i64 %n100 to ptr
	%p102 = getelementptr ptr, ptr %p101, i32 0
	%p103 = load ptr, ptr %p102
	; LET _t1501B5 = apply cp01B4 (f01AF,hd01B1)
	%n104 = ptrtoint ptr %p103 to i64
	%g105 = inttoptr i64 %n104 to ptr addrspace(1)
	%n106 = ptrtoint ptr addrspace(1) %g105 to i64
	%f107 = inttoptr i64 %n106 to ptr
	%n108 = ptrtoint ptr %p91 to i64
	%g109 = inttoptr i64 %n108 to ptr addrspace(1)
	%tok110 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f107,
		i32 2,i32 0,
		ptr addrspace(1) %g98, ptr addrspace(1) %g109,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g98, ptr addrspace(1) %g99, ptr addrspace(1) %g97)]
	%g111 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok110)
	%g112 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok110,i32 9,i32 9)
	%g113 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok110,i32 10,i32 10)
	%g114 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok110,i32 11,i32 11)
	; LET cp01B6 = #0(_t1501B5)
	%n115 = ptrtoint ptr addrspace(1) %g111 to i64
	%p116 = inttoptr i64 %n115 to ptr
	%p117 = getelementptr ptr, ptr %p116, i32 0
	%p118 = load ptr, ptr %p117
	; LET _t1401B7 = apply cp01B6 (_t1501B5,b01B0)
	%n119 = ptrtoint ptr %p118 to i64
	%g120 = inttoptr i64 %n119 to ptr addrspace(1)
	%n121 = ptrtoint ptr addrspace(1) %g120 to i64
	%f122 = inttoptr i64 %n121 to ptr
	%tok123 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f122,
		i32 2,i32 0,
		ptr addrspace(1) %g111, ptr addrspace(1) %g113,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g113, ptr addrspace(1) %g114, ptr addrspace(1) %g111)]
	%g124 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok123)
	%g125 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok123,i32 9,i32 9)
	%g126 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok123,i32 10,i32 10)
	%g127 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok123,i32 11,i32 11)
	; LET cp01B8 = #0(_t1201B3)
	%n128 = ptrtoint ptr addrspace(1) %g126 to i64
	%p129 = inttoptr i64 %n128 to ptr
	%p130 = getelementptr ptr, ptr %p129, i32 0
	%p131 = load ptr, ptr %p130
	; LET _t1301B9 = apply cp01B8 (_t1201B3,_t1401B7)
	%n132 = ptrtoint ptr %p131 to i64
	%g133 = inttoptr i64 %n132 to ptr addrspace(1)
	%n134 = ptrtoint ptr addrspace(1) %g133 to i64
	%f135 = inttoptr i64 %n134 to ptr
	%tok136 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f135,
		i32 2,i32 0,
		ptr addrspace(1) %g126, ptr addrspace(1) %g124,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g126, ptr addrspace(1) %g124)]
	%g137 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok136)
	%g138 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok136,i32 9,i32 9)
	%g139 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok136,i32 10,i32 10)
	; LET cp01BA = #0(_t1301B9)
	%n140 = ptrtoint ptr addrspace(1) %g137 to i64
	%p141 = inttoptr i64 %n140 to ptr
	%p142 = getelementptr ptr, ptr %p141, i32 0
	%p143 = load ptr, ptr %p142
	; TAIL_APPLY cp01BA(_t1301B9,tl01B2)
	%n144 = ptrtoint ptr %p143 to i64
	%g145 = inttoptr i64 %n144 to ptr addrspace(1)
	%n146 = ptrtoint ptr addrspace(1) %g145 to i64
	%f147 = inttoptr i64 %n146 to ptr
	%n148 = ptrtoint ptr %p95 to i64
	%g149 = inttoptr i64 %n148 to ptr addrspace(1)
	; emitTailCall: %f147 (%g137, %g149)
	%g150 = tail call ptr addrspace(1) %f147 (ptr addrspace(1) %g137, ptr addrspace(1) %g149)
	ret ptr addrspace(1) %g150
unboxed_0219:
	ret ptr addrspace(1) %g152
}

define fastcc ptr addrspace(1) @foldl1_code(ptr addrspace(1) %foldl1153,ptr addrspace(1) %b154) gc "statepoint-example" {
entry_021A:
	; LET f01A4 = #1(foldl101A2)
	%n155 = ptrtoint ptr addrspace(1) %foldl1153 to i64
	%p156 = inttoptr i64 %n155 to ptr
	%p157 = getelementptr ptr, ptr %p156, i32 1
	%p158 = load ptr, ptr %p157
	; LET foldl201A5 = alloc [$foldl2_code014F,f01A4,b01A3]
	%tok159 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %b154)]
	%g160 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok159)
	%g161 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok159,i32 8,i32 8)
	%n162 = ptrtoint ptr addrspace(1) %g160 to i64
	%p163 = inttoptr i64 %n162 to ptr
	%p164 = getelementptr i64, ptr %p163, i32 0
	store ptr @foldl2_code, ptr %p164
	%n165 = ptrtoint ptr addrspace(1) %g160 to i64
	%p166 = inttoptr i64 %n165 to ptr
	%p167 = getelementptr i64, ptr %p166, i32 1
	%n168 = ptrtoint ptr %p158 to i64
	%g169 = inttoptr i64 %n168 to ptr addrspace(1)
	store ptr addrspace(1) %g169, ptr %p167
	%n170 = ptrtoint ptr addrspace(1) %g160 to i64
	%p171 = inttoptr i64 %n170 to ptr
	%p172 = getelementptr i64, ptr %p171, i32 2
	store ptr addrspace(1) %g161, ptr %p172
	ret ptr addrspace(1) %g160
}

define fastcc ptr addrspace(1) @foldl_code(ptr addrspace(1) %f173) gc "statepoint-example" {
entry_021B:
	; LET foldl101A1 = alloc [$foldl1_code014E,f01A0]
	%tok174 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %f173)]
	%g175 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok174)
	%g176 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok174,i32 8,i32 8)
	%n177 = ptrtoint ptr addrspace(1) %g175 to i64
	%p178 = inttoptr i64 %n177 to ptr
	%p179 = getelementptr i64, ptr %p178, i32 0
	store ptr @foldl1_code, ptr %p179
	%n180 = ptrtoint ptr addrspace(1) %g175 to i64
	%p181 = inttoptr i64 %n180 to ptr
	%p182 = getelementptr i64, ptr %p181, i32 1
	store ptr addrspace(1) %g176, ptr %p182
	ret ptr addrspace(1) %g175
}

define fastcc ptr addrspace(1) @cons1_code(ptr addrspace(1) %cons1183,ptr addrspace(1) %tl184) gc "statepoint-example" {
entry_021C:
	; LET hd019E = #1(cons1019C)
	%n185 = ptrtoint ptr addrspace(1) %cons1183 to i64
	%p186 = inttoptr i64 %n185 to ptr
	%p187 = getelementptr ptr, ptr %p186, i32 1
	%p188 = load ptr, ptr %p187
	; LET _t16019F = alloc [hd019E,tl019D]
	%tok189 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %tl184)]
	%g190 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok189)
	%g191 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok189,i32 8,i32 8)
	%n192 = ptrtoint ptr addrspace(1) %g190 to i64
	%p193 = inttoptr i64 %n192 to ptr
	%p194 = getelementptr i64, ptr %p193, i32 0
	%n195 = ptrtoint ptr %p188 to i64
	%g196 = inttoptr i64 %n195 to ptr addrspace(1)
	store ptr addrspace(1) %g196, ptr %p194
	%n197 = ptrtoint ptr addrspace(1) %g190 to i64
	%p198 = inttoptr i64 %n197 to ptr
	%p199 = getelementptr i64, ptr %p198, i32 1
	store ptr addrspace(1) %g191, ptr %p199
	ret ptr addrspace(1) %g190
}

define fastcc ptr addrspace(1) @cons_code(ptr addrspace(1) %cons200,ptr addrspace(1) %hd201) gc "statepoint-example" {
entry_021D:
	; LET cons1019B = alloc [$cons1_code0152,hd019A]
	%tok202 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %hd201)]
	%g203 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok202)
	%g204 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok202,i32 8,i32 8)
	%n205 = ptrtoint ptr addrspace(1) %g203 to i64
	%p206 = inttoptr i64 %n205 to ptr
	%p207 = getelementptr i64, ptr %p206, i32 0
	store ptr @cons1_code, ptr %p207
	%n208 = ptrtoint ptr addrspace(1) %g203 to i64
	%p209 = inttoptr i64 %n208 to ptr
	%p210 = getelementptr i64, ptr %p209, i32 1
	store ptr addrspace(1) %g204, ptr %p210
	ret ptr addrspace(1) %g203
}

define fastcc ptr addrspace(1) @rev_code(ptr addrspace(1) %xs211) gc "statepoint-example" {
entry_021E:
	; LET cons0194 = alloc [$cons_code0151]
	%tok212 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %xs211)]
	%g213 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok212)
	%g214 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok212,i32 8,i32 8)
	%n215 = ptrtoint ptr addrspace(1) %g213 to i64
	%p216 = inttoptr i64 %n215 to ptr
	%p217 = getelementptr i64, ptr %p216, i32 0
	store ptr @cons_code, ptr %p217
	; LET _t170195 = apply $foldl_code014D (cons0194)
	%tok218 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @foldl_code,
		i32 1,i32 0,
		ptr addrspace(1) %g213,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g214, ptr addrspace(1) %g213)]
	%g219 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok218)
	%g220 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok218,i32 8,i32 8)
	%g221 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok218,i32 9,i32 9)
	; LET cp0196 = #0(_t170195)
	%n222 = ptrtoint ptr addrspace(1) %g219 to i64
	%p223 = inttoptr i64 %n222 to ptr
	%p224 = getelementptr ptr, ptr %p223, i32 0
	%p225 = load ptr, ptr %p224
	; LET _t180197 = apply cp0196 (_t170195,0)
	%n226 = ptrtoint ptr %p225 to i64
	%g227 = inttoptr i64 %n226 to ptr addrspace(1)
	%n228 = ptrtoint ptr addrspace(1) %g227 to i64
	%f229 = inttoptr i64 %n228 to ptr
	%tok230 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),i64)) %f229,
		i32 2,i32 0,
		ptr addrspace(1) %g219, i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g220, ptr addrspace(1) %g219)]
	%g231 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok230)
	%g232 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok230,i32 9,i32 9)
	%g233 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok230,i32 10,i32 10)
	; LET cp0198 = #0(_t180197)
	%n234 = ptrtoint ptr addrspace(1) %g231 to i64
	%p235 = inttoptr i64 %n234 to ptr
	%p236 = getelementptr ptr, ptr %p235, i32 0
	%p237 = load ptr, ptr %p236
	; TAIL_APPLY cp0198(_t180197,xs0193)
	%n238 = ptrtoint ptr %p237 to i64
	%g239 = inttoptr i64 %n238 to ptr addrspace(1)
	%n240 = ptrtoint ptr addrspace(1) %g239 to i64
	%f241 = inttoptr i64 %n240 to ptr
	; emitTailCall: %f241 (%g231, %g232)
	%g242 = tail call ptr addrspace(1) %f241 (ptr addrspace(1) %g231, ptr addrspace(1) %g232)
	ret ptr addrspace(1) %g242
}

define fastcc ptr addrspace(1) @loop_code(ptr addrspace(1) %loop243,ptr addrspace(1) %tpl244) gc "statepoint-example" {
entry_021F:
	br label %loop_code0133_hdr_0220
loop_code0133_hdr_0220:
	%loop245 = phi ptr addrspace(1) [ %g298, %then_0222 ], [ %loop243, %entry_021F ]
	%tpl246 = phi ptr addrspace(1) [ %g297, %then_0222 ], [ %tpl244, %entry_021F ]
	; LET n0183 = #0(loop0181)
	%n247 = ptrtoint ptr addrspace(1) %loop245 to i64
	%p248 = inttoptr i64 %n247 to ptr
	%p249 = getelementptr ptr, ptr %p248, i32 0
	%p250 = load ptr, ptr %p249
	; LET f0184 = #1(loop0181)
	%n251 = ptrtoint ptr addrspace(1) %loop245 to i64
	%p252 = inttoptr i64 %n251 to ptr
	%p253 = getelementptr ptr, ptr %p252, i32 1
	%p254 = load ptr, ptr %p253
	; LET i0185 = #0(tpl0182)
	%n255 = ptrtoint ptr addrspace(1) %tpl246 to i64
	%p256 = inttoptr i64 %n255 to ptr
	%p257 = getelementptr ptr, ptr %p256, i32 0
	%p258 = load ptr, ptr %p257
	; LET acc0186 = #1(tpl0182)
	%n259 = ptrtoint ptr addrspace(1) %tpl246 to i64
	%p260 = inttoptr i64 %n259 to ptr
	%p261 = getelementptr ptr, ptr %p260, i32 1
	%p262 = load ptr, ptr %p261
	; IF IntLte(i0185, n0183)
	%n264 = ptrtoint ptr %p258 to i64
	%n265 = ptrtoint ptr %p250 to i64
	%b263 = icmp sle i64 %n264, %n265
	%n266 = ptrtoint ptr %p258 to i64
	%n267 = ptrtoint ptr %p262 to i64
	%g268 = inttoptr i64 %n267 to ptr addrspace(1)
	%n269 = ptrtoint ptr %p254 to i64
	%g270 = inttoptr i64 %n269 to ptr addrspace(1)
	%n306 = ptrtoint ptr %p262 to i64
	%g307 = inttoptr i64 %n306 to ptr addrspace(1)
	br i1 %b263, label %then_0222, label %else_0221
else_0221:
	; TAIL_APPLY $rev_code0150(acc0192)
	; emitTailCall: @rev_code (%g307)
	%g308 = tail call ptr addrspace(1) @rev_code (ptr addrspace(1) %g307)
	ret ptr addrspace(1) %g308
then_0222:
	; LET _t20018C = IntAdd (i0188,1)
	%n271 = add i64 %n266, 2
	; LET cp018D = #0(f018B)
	%n272 = ptrtoint ptr addrspace(1) %g270 to i64
	%p273 = inttoptr i64 %n272 to ptr
	%p274 = getelementptr ptr, ptr %p273, i32 0
	%p275 = load ptr, ptr %p274
	; LET _t22018E = apply cp018D (f018B,i0188)
	%n276 = ptrtoint ptr %p275 to i64
	%g277 = inttoptr i64 %n276 to ptr addrspace(1)
	%n278 = ptrtoint ptr addrspace(1) %g277 to i64
	%f279 = inttoptr i64 %n278 to ptr
	%tok280 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),i64)) %f279,
		i32 2,i32 0,
		ptr addrspace(1) %g270, i64 %n266,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g268, ptr addrspace(1) %loop245, ptr addrspace(1) %g270)]
	%g281 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok280)
	%g282 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok280,i32 9,i32 9)
	%g283 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok280,i32 10,i32 10)
	%g284 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok280,i32 11,i32 11)
	; LET _t21018F = alloc [_t22018E,acc0189]
	%tok285 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g282, ptr addrspace(1) %g283, ptr addrspace(1) %g281)]
	%g286 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok285)
	%g287 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok285,i32 8,i32 8)
	%g288 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok285,i32 9,i32 9)
	%g289 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok285,i32 10,i32 10)
	%n290 = ptrtoint ptr addrspace(1) %g286 to i64
	%p291 = inttoptr i64 %n290 to ptr
	%p292 = getelementptr i64, ptr %p291, i32 0
	store ptr addrspace(1) %g289, ptr %p292
	%n293 = ptrtoint ptr addrspace(1) %g286 to i64
	%p294 = inttoptr i64 %n293 to ptr
	%p295 = getelementptr i64, ptr %p294, i32 1
	store ptr addrspace(1) %g287, ptr %p295
	; LET _t190190 = alloc [_t20018C,_t21018F]
	%tok296 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g288, ptr addrspace(1) %g286)]
	%g297 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok296)
	%g298 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok296,i32 8,i32 8)
	%g299 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok296,i32 9,i32 9)
	%n300 = ptrtoint ptr addrspace(1) %g297 to i64
	%p301 = inttoptr i64 %n300 to ptr
	%p302 = getelementptr i64, ptr %p301, i32 0
	store i64 %n271, ptr %p302
	%n303 = ptrtoint ptr addrspace(1) %g297 to i64
	%p304 = inttoptr i64 %n303 to ptr
	%p305 = getelementptr i64, ptr %p304, i32 1
	store ptr addrspace(1) %g299, ptr %p305
	br label %loop_code0133_hdr_0220
}

define fastcc ptr addrspace(1) @tabulate_code(ptr addrspace(1) %tpl309) gc "statepoint-example" {
entry_0223:
	; LET n0176 = #0(tpl0175)
	%n310 = ptrtoint ptr addrspace(1) %tpl309 to i64
	%p311 = inttoptr i64 %n310 to ptr
	%p312 = getelementptr ptr, ptr %p311, i32 0
	%p313 = load ptr, ptr %p312
	; LET f0177 = #1(tpl0175)
	%n314 = ptrtoint ptr addrspace(1) %tpl309 to i64
	%p315 = inttoptr i64 %n314 to ptr
	%p316 = getelementptr ptr, ptr %p315, i32 1
	%p317 = load ptr, ptr %p316
	; LET loop0178 = alloc [n0176,f0177]
	%tok318 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g319 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok318)
	%n320 = ptrtoint ptr addrspace(1) %g319 to i64
	%p321 = inttoptr i64 %n320 to ptr
	%p322 = getelementptr i64, ptr %p321, i32 0
	%n323 = ptrtoint ptr %p313 to i64
	store i64 %n323, ptr %p322
	%n324 = ptrtoint ptr addrspace(1) %g319 to i64
	%p325 = inttoptr i64 %n324 to ptr
	%p326 = getelementptr i64, ptr %p325, i32 1
	%n327 = ptrtoint ptr %p317 to i64
	%g328 = inttoptr i64 %n327 to ptr addrspace(1)
	store ptr addrspace(1) %g328, ptr %p326
	; IF IntLt(n0176, 0)
	%n330 = ptrtoint ptr %p313 to i64
	%b329 = icmp slt i64 %n330, 1
	br i1 %b329, label %then_0225, label %else_0224
else_0224:
	; LET _t24017D = alloc [0,0]
	%tok335 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g319)]
	%g336 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok335)
	%g337 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok335,i32 8,i32 8)
	%n338 = ptrtoint ptr addrspace(1) %g336 to i64
	%p339 = inttoptr i64 %n338 to ptr
	%p340 = getelementptr i64, ptr %p339, i32 0
	store i64 1, ptr %p340
	%n341 = ptrtoint ptr addrspace(1) %g336 to i64
	%p342 = inttoptr i64 %n341 to ptr
	%p343 = getelementptr i64, ptr %p342, i32 1
	store i64 1, ptr %p343
	; TAIL_APPLY $loop_code0154(loop017C,_t24017D)
	; emitTailCall: @loop_code (%g337, %g336)
	%g344 = tail call ptr addrspace(1) @loop_code (ptr addrspace(1) %g337, ptr addrspace(1) %g336)
	ret ptr addrspace(1) %g344
then_0225:
	; LET _t23017A = call _mml_fail ("tabulate: n < 0")
	%n331 = ptrtoint ptr @_slit_13 to i64
	%g332 = inttoptr i64 %n331 to ptr addrspace(1)
	%tok333 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g332,
		i32 0,i32 0)
	%g334 = inttoptr i64 1 to ptr addrspace(1)
	ret ptr addrspace(1) %g334
}

define fastcc i64 @f1_code(ptr addrspace(1) %f1345,i64 %y346) gc "statepoint-example" {
entry_0226:
	; LET x0173 = #1(f10171)
	%n347 = ptrtoint ptr addrspace(1) %f1345 to i64
	%p348 = inttoptr i64 %n347 to ptr
	%p349 = getelementptr ptr, ptr %p348, i32 1
	%p350 = load ptr, ptr %p349
	; LET _t250174 = IntAdd (x0173,y0172)
	%n352 = ptrtoint ptr %p350 to i64
	%n351 = sub i64 %n352, 1
	%n353 = add i64 %n351, %y346
	ret i64 %n353
}

define fastcc ptr addrspace(1) @f_code(ptr addrspace(1) %f354,i64 %x355) gc "statepoint-example" {
entry_0227:
	; LET f10170 = alloc [$f1_code0156,x016F]
	%tok356 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g357 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok356)
	%n358 = ptrtoint ptr addrspace(1) %g357 to i64
	%p359 = inttoptr i64 %n358 to ptr
	%p360 = getelementptr i64, ptr %p359, i32 0
	store ptr @f1_code, ptr %p360
	%n361 = ptrtoint ptr addrspace(1) %g357 to i64
	%p362 = inttoptr i64 %n361 to ptr
	%p363 = getelementptr i64, ptr %p362, i32 1
	store i64 %x355, ptr %p363
	ret ptr addrspace(1) %g357
}

define fastcc ptr addrspace(1) @g_code(ptr addrspace(1) %g364,ptr addrspace(1) %i365) gc "statepoint-example" {
entry_0228:
	ret ptr addrspace(1) %i365
}

define i64 @_mml_entry(ptr addrspace(1) %arguments366) gc "statepoint-example" {
entry_0229:
	; LET f015A = alloc [$f_code0155]
	%tok367 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g368 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok367)
	%n369 = ptrtoint ptr addrspace(1) %g368 to i64
	%p370 = inttoptr i64 %n369 to ptr
	%p371 = getelementptr i64, ptr %p370, i32 0
	store ptr @f_code, ptr %p371
	; LET g015B = alloc [$g_code0157]
	%tok372 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g368)]
	%g373 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok372)
	%g374 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok372,i32 8,i32 8)
	%n375 = ptrtoint ptr addrspace(1) %g373 to i64
	%p376 = inttoptr i64 %n375 to ptr
	%p377 = getelementptr i64, ptr %p376, i32 0
	store ptr @g_code, ptr %p377
	; LET _t26015C = apply $foldl_code014D (f015A)
	%tok378 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @foldl_code,
		i32 1,i32 0,
		ptr addrspace(1) %g374,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g374, ptr addrspace(1) %g373)]
	%g379 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok378)
	%g380 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok378,i32 8,i32 8)
	%g381 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok378,i32 9,i32 9)
	; LET cp015D = #0(_t26015C)
	%n382 = ptrtoint ptr addrspace(1) %g379 to i64
	%p383 = inttoptr i64 %n382 to ptr
	%p384 = getelementptr ptr, ptr %p383, i32 0
	%p385 = load ptr, ptr %p384
	; LET _t27015E = apply cp015D (_t26015C,0)
	%n386 = ptrtoint ptr %p385 to i64
	%g387 = inttoptr i64 %n386 to ptr addrspace(1)
	%n388 = ptrtoint ptr addrspace(1) %g387 to i64
	%f389 = inttoptr i64 %n388 to ptr
	%tok390 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),i64)) %f389,
		i32 2,i32 0,
		ptr addrspace(1) %g379, i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g381, ptr addrspace(1) %g379)]
	%g391 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok390)
	%g392 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok390,i32 9,i32 9)
	%g393 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok390,i32 10,i32 10)
	; LET _t29015F = alloc [4999,g015B]
	%tok394 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g392, ptr addrspace(1) %g391)]
	%g395 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok394)
	%g396 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok394,i32 8,i32 8)
	%g397 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok394,i32 9,i32 9)
	%n398 = ptrtoint ptr addrspace(1) %g395 to i64
	%p399 = inttoptr i64 %n398 to ptr
	%p400 = getelementptr i64, ptr %p399, i32 0
	store i64 9999, ptr %p400
	%n401 = ptrtoint ptr addrspace(1) %g395 to i64
	%p402 = inttoptr i64 %n401 to ptr
	%p403 = getelementptr i64, ptr %p402, i32 1
	store ptr addrspace(1) %g396, ptr %p403
	; LET _t280160 = apply $tabulate_code0153 (_t29015F)
	%tok404 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @tabulate_code,
		i32 1,i32 0,
		ptr addrspace(1) %g395,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g397, ptr addrspace(1) %g395)]
	%g405 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok404)
	%g406 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok404,i32 8,i32 8)
	%g407 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok404,i32 9,i32 9)
	; LET cp0161 = #0(_t27015E)
	%n408 = ptrtoint ptr addrspace(1) %g406 to i64
	%p409 = inttoptr i64 %n408 to ptr
	%p410 = getelementptr ptr, ptr %p409, i32 0
	%p411 = load ptr, ptr %p410
	; LET sum_n0162 = apply cp0161 (_t27015E,_t280160)
	%n412 = ptrtoint ptr %p411 to i64
	%g413 = inttoptr i64 %n412 to ptr addrspace(1)
	%n414 = ptrtoint ptr addrspace(1) %g413 to i64
	%f415 = inttoptr i64 %n414 to ptr
	%tok416 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),ptr addrspace(1))) %f415,
		i32 2,i32 0,
		ptr addrspace(1) %g406, ptr addrspace(1) %g405,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g406, ptr addrspace(1) %g405)]
	%n417 = call i64 @llvm.experimental.gc.result.i64(token %tok416)
	%g418 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok416,i32 9,i32 9)
	%g419 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok416,i32 10,i32 10)
	; LET un0163 = call _mml_print ("foldl \n")
	%n420 = ptrtoint ptr @_slit_14 to i64
	%g421 = inttoptr i64 %n420 to ptr addrspace(1)
	%tok422 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g421,
		i32 0,i32 0)
	; LET un0164 = call _mml_print ("      (fn x y => x + y)\n")
	%n423 = ptrtoint ptr @_slit_15 to i64
	%g424 = inttoptr i64 %n423 to ptr addrspace(1)
	%tok425 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g424,
		i32 0,i32 0)
	; LET un0165 = call _mml_print ("      0 (tabulate (")
	%n426 = ptrtoint ptr @_slit_16 to i64
	%g427 = inttoptr i64 %n426 to ptr addrspace(1)
	%tok428 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g427,
		i32 0,i32 0)
	; LET _t300166 = apply $intToString_code014C (4999)
	%tok429 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 9999,
		i32 0,i32 0)
	%g430 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok429)
	; LET un0167 = call _mml_print (_t300166)
	%tok431 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g430,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g430)]
	%g432 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok431,i32 8,i32 8)
	; LET un0168 = call _mml_print (", (fn i => i))) = ")
	%n433 = ptrtoint ptr @_slit_17 to i64
	%g434 = inttoptr i64 %n433 to ptr addrspace(1)
	%tok435 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g434,
		i32 0,i32 0)
	; LET _t310169 = apply $intToString_code014C (sum_n0162)
	%tok436 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n417,
		i32 0,i32 0)
	%g437 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok436)
	; LET un016A = call _mml_print (_t310169)
	%tok438 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g437,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g437)]
	%g439 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok438,i32 8,i32 8)
	; LET un016B = call _mml_print ("\n")
	%n440 = ptrtoint ptr @_slit_18 to i64
	%g441 = inttoptr i64 %n440 to ptr addrspace(1)
	%tok442 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g441,
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

@_slit_13 = global [3 x i64] [
	i64 31,
	i64 7310575213582901620,
	i64 13546241496326202
]

@_slit_14 = global [2 x i64] [
	i64 15,
	i64 2850399680491366
]

@_slit_15 = global [5 x i64] [
	i64 49,
	i64 7361168913287094304,
	i64 4484776508538757230,
	i64 732249593493878816,
	i64 0
]

@_slit_16 = global [4 x i64] [
	i64 39,
	i64 2319389130445824032,
	i64 8386103232558101544,
	i64 2629733
]

@_slit_17 = global [4 x i64] [
	i64 37,
	i64 2335433540300709932,
	i64 2317428741092949565,
	i64 8253
]

@_slit_18 = global [2 x i64] [
	i64 3,
	i64 10
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
