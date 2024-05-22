define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_0154:
	br label %intToString_code00CA_hdr_0155
intToString_code00CA_hdr_0155:
	; IF IntLt(i0118, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_0171, label %else_0156
else_0156:
	; IF IntEq(i011F, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_0170, label %else_0157
else_0157:
	; IF IntEq(i0122, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_016F, label %else_0158
else_0158:
	; IF IntEq(i0125, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_016E, label %else_0159
else_0159:
	; IF IntEq(i0128, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_016D, label %else_015A
else_015A:
	; IF IntEq(i012B, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_016C, label %else_015B
else_015B:
	; IF IntEq(i012E, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_016B, label %else_015C
else_015C:
	; IF IntEq(i0131, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_016A, label %else_015D
else_015D:
	; IF IntEq(i0134, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_0169, label %else_015E
else_015E:
	; IF IntEq(i0137, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_0168, label %else_015F
else_015F:
	; IF IntEq(i013A, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_0167, label %else_0160
else_0160:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_0162, label %else_0161
else_0161:
	; LET _t60153 = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_0163
then_0162:
	; LET _t50150 = IntDiv (i014F,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_0163
join_0163:
	%_t446 = phi i64 [ 1, %else_0161 ], [ %n45, %then_0162 ]
	%i47 = phi i64 [ %i1, %else_0161 ], [ %i1, %then_0162 ]
	; LET _t30141 = apply $intToString_code00DE (_t4013F)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_0165, label %else_0164
else_0164:
	; LET _t10014D = call _mml_fail ("Remainder by zero")
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
	br label %join_0166
then_0165:
	; LET _t9014A = IntMod (i0148,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_0166
join_0166:
	%_t855 = phi i64 [ 1, %else_0164 ], [ %n54, %then_0165 ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_0164 ], [ %g49, %then_0165 ]
	; LET _t70145 = apply $intToString_code00DE (_t80143)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t110146 = call _mml_concat (_t30144,_t70145)
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
then_0167:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_0168:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_0169:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_016A:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_016B:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_016C:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_016D:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_016E:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_016F:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_0170:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_0171:
	; LET _t1011B = IntNeg (i011A)
	%n3 = sub i64 2, %i1
	; LET _t0011C = apply $intToString_code00DE (_t1011B)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t2011D = call _mml_concat ("-",_t0011C)
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

define fastcc ptr addrspace(1) @g_code(ptr addrspace(1) %g71,ptr addrspace(1) %z72) gc "statepoint-example" {
entry_0172:
	; LET f0113 = #1(g0111)
	%n73 = ptrtoint ptr addrspace(1) %g71 to i64
	%p74 = inttoptr i64 %n73 to ptr
	%p75 = getelementptr ptr, ptr %p74, i32 1
	%p76 = load ptr, ptr %p75
	; LET _t120114 = apply $y_code00DF (f0113)
	%n77 = ptrtoint ptr %p76 to i64
	%g78 = inttoptr i64 %n77 to ptr addrspace(1)
	%tok79 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @y_code,
		i32 1,i32 0,
		ptr addrspace(1) %g78,
		i32 0,i32 0)
	%g80 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok79)
	; LET cp0115 = #0(_t120114)
	%n81 = ptrtoint ptr addrspace(1) %g80 to i64
	%p82 = inttoptr i64 %n81 to ptr
	%p83 = getelementptr ptr, ptr %p82, i32 0
	%p84 = load ptr, ptr %p83
	; TAIL_APPLY cp0115(_t120114,0)
	%n85 = ptrtoint ptr %p84 to i64
	%g86 = inttoptr i64 %n85 to ptr addrspace(1)
	%n87 = ptrtoint ptr addrspace(1) %g86 to i64
	%f88 = inttoptr i64 %n87 to ptr
	; emitTailCall: %f88 (%g80, 1)
	%g89 = tail call ptr addrspace(1) %f88 (ptr addrspace(1) %g80, i64 1)
	ret ptr addrspace(1) %g89
}

define fastcc ptr addrspace(1) @y_code(ptr addrspace(1) %f90) gc "statepoint-example" {
entry_0173:
	; LET g010F = alloc [$g_code00E0,f010E]
	%tok91 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %f90)]
	%g92 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok91)
	%g93 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok91,i32 8,i32 8)
	%n94 = ptrtoint ptr addrspace(1) %g92 to i64
	%p95 = inttoptr i64 %n94 to ptr
	%p96 = getelementptr i64, ptr %p95, i32 0
	store ptr @g_code, ptr %p96
	%n97 = ptrtoint ptr addrspace(1) %g92 to i64
	%p98 = inttoptr i64 %n97 to ptr
	%p99 = getelementptr i64, ptr %p98, i32 1
	store ptr addrspace(1) %g93, ptr %p99
	; LET cp0110 = #0(f010E)
	%n100 = ptrtoint ptr addrspace(1) %g93 to i64
	%p101 = inttoptr i64 %n100 to ptr
	%p102 = getelementptr ptr, ptr %p101, i32 0
	%p103 = load ptr, ptr %p102
	; TAIL_APPLY cp0110(f010E,g010F)
	%n104 = ptrtoint ptr %p103 to i64
	%g105 = inttoptr i64 %n104 to ptr addrspace(1)
	%n106 = ptrtoint ptr addrspace(1) %g105 to i64
	%f107 = inttoptr i64 %n106 to ptr
	; emitTailCall: %f107 (%g93, %g92)
	%g108 = tail call ptr addrspace(1) %f107 (ptr addrspace(1) %g93, ptr addrspace(1) %g92)
	ret ptr addrspace(1) %g108
}

define fastcc i64 @fibY2_code(ptr addrspace(1) %fibY2109,i64 %n110) gc "statepoint-example" {
entry_0174:
	; LET fib00FC = #1(fibY200FA)
	%n111 = ptrtoint ptr addrspace(1) %fibY2109 to i64
	%p112 = inttoptr i64 %n111 to ptr
	%p113 = getelementptr ptr, ptr %p112, i32 1
	%p114 = load ptr, ptr %p113
	; LET z00FD = #2(fibY200FA)
	%n115 = ptrtoint ptr addrspace(1) %fibY2109 to i64
	%p116 = inttoptr i64 %n115 to ptr
	%p117 = getelementptr ptr, ptr %p116, i32 2
	%p118 = load ptr, ptr %p117
	; IF IntLte(n00FB, 1)
	%b119 = icmp sle i64 %n110, 3
	%n120 = ptrtoint ptr %p114 to i64
	%g121 = inttoptr i64 %n120 to ptr addrspace(1)
	%n122 = ptrtoint ptr %p118 to i64
	%g123 = inttoptr i64 %n122 to ptr addrspace(1)
	br i1 %b119, label %then_0176, label %else_0175
else_0175:
	; LET cp0103 = #0(fib0101)
	%n124 = ptrtoint ptr addrspace(1) %g121 to i64
	%p125 = inttoptr i64 %n124 to ptr
	%p126 = getelementptr ptr, ptr %p125, i32 0
	%p127 = load ptr, ptr %p126
	; LET _t150104 = apply cp0103 (fib0101,z0102)
	%n128 = ptrtoint ptr %p127 to i64
	%g129 = inttoptr i64 %n128 to ptr addrspace(1)
	%n130 = ptrtoint ptr addrspace(1) %g129 to i64
	%f131 = inttoptr i64 %n130 to ptr
	%tok132 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f131,
		i32 2,i32 0,
		ptr addrspace(1) %g121, ptr addrspace(1) %g123,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g121, ptr addrspace(1) %g123)]
	%g133 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok132)
	%g134 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok132,i32 9,i32 9)
	%g135 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok132,i32 10,i32 10)
	; LET _t160105 = IntSub (n0100,1)
	%n136 = sub i64 %n110, 2
	; LET cp0106 = #0(_t150104)
	%n137 = ptrtoint ptr addrspace(1) %g133 to i64
	%p138 = inttoptr i64 %n137 to ptr
	%p139 = getelementptr ptr, ptr %p138, i32 0
	%p140 = load ptr, ptr %p139
	; LET _t140107 = apply cp0106 (_t150104,_t160105)
	%n141 = ptrtoint ptr %p140 to i64
	%g142 = inttoptr i64 %n141 to ptr addrspace(1)
	%n143 = ptrtoint ptr addrspace(1) %g142 to i64
	%f144 = inttoptr i64 %n143 to ptr
	%tok145 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f144,
		i32 2,i32 0,
		ptr addrspace(1) %g133, i64 %n136,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g134, ptr addrspace(1) %g135, ptr addrspace(1) %g133)]
	%n146 = call i64 @llvm.experimental.gc.result.i64(token %tok145)
	%g147 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok145,i32 9,i32 9)
	%g148 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok145,i32 10,i32 10)
	%g149 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok145,i32 11,i32 11)
	; LET cp0108 = #0(fib0101)
	%n150 = ptrtoint ptr addrspace(1) %g147 to i64
	%p151 = inttoptr i64 %n150 to ptr
	%p152 = getelementptr ptr, ptr %p151, i32 0
	%p153 = load ptr, ptr %p152
	; LET _t180109 = apply cp0108 (fib0101,z0102)
	%n154 = ptrtoint ptr %p153 to i64
	%g155 = inttoptr i64 %n154 to ptr addrspace(1)
	%n156 = ptrtoint ptr addrspace(1) %g155 to i64
	%f157 = inttoptr i64 %n156 to ptr
	%tok158 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f157,
		i32 2,i32 0,
		ptr addrspace(1) %g147, ptr addrspace(1) %g148,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g147, ptr addrspace(1) %g148)]
	%g159 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok158)
	%g160 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok158,i32 9,i32 9)
	%g161 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok158,i32 10,i32 10)
	; LET _t19010A = IntSub (n0100,2)
	%n162 = sub i64 %n110, 4
	; LET cp010B = #0(_t180109)
	%n163 = ptrtoint ptr addrspace(1) %g159 to i64
	%p164 = inttoptr i64 %n163 to ptr
	%p165 = getelementptr ptr, ptr %p164, i32 0
	%p166 = load ptr, ptr %p165
	; LET _t17010C = apply cp010B (_t180109,_t19010A)
	%n167 = ptrtoint ptr %p166 to i64
	%g168 = inttoptr i64 %n167 to ptr addrspace(1)
	%n169 = ptrtoint ptr addrspace(1) %g168 to i64
	%f170 = inttoptr i64 %n169 to ptr
	%tok171 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f170,
		i32 2,i32 0,
		ptr addrspace(1) %g159, i64 %n162,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g159)]
	%n172 = call i64 @llvm.experimental.gc.result.i64(token %tok171)
	%g173 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok171,i32 9,i32 9)
	; LET _t20010D = IntAdd (_t140107,_t17010C)
	%n174 = sub i64 %n146, 1
	%n175 = add i64 %n174, %n172
	ret i64 %n175
then_0176:
	ret i64 3
}

define fastcc ptr addrspace(1) @fibY1_code(ptr addrspace(1) %fibY1176,ptr addrspace(1) %z177) gc "statepoint-example" {
entry_0177:
	; LET fib00F8 = #1(fibY100F6)
	%n178 = ptrtoint ptr addrspace(1) %fibY1176 to i64
	%p179 = inttoptr i64 %n178 to ptr
	%p180 = getelementptr ptr, ptr %p179, i32 1
	%p181 = load ptr, ptr %p180
	; LET fibY200F9 = alloc [$fibY2_code00E3,fib00F8,z00F7]
	%tok182 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 3,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %z177)]
	%g183 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok182)
	%g184 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok182,i32 8,i32 8)
	%n185 = ptrtoint ptr addrspace(1) %g183 to i64
	%p186 = inttoptr i64 %n185 to ptr
	%p187 = getelementptr i64, ptr %p186, i32 0
	store ptr @fibY2_code, ptr %p187
	%n188 = ptrtoint ptr addrspace(1) %g183 to i64
	%p189 = inttoptr i64 %n188 to ptr
	%p190 = getelementptr i64, ptr %p189, i32 1
	%n191 = ptrtoint ptr %p181 to i64
	%g192 = inttoptr i64 %n191 to ptr addrspace(1)
	store ptr addrspace(1) %g192, ptr %p190
	%n193 = ptrtoint ptr addrspace(1) %g183 to i64
	%p194 = inttoptr i64 %n193 to ptr
	%p195 = getelementptr i64, ptr %p194, i32 2
	store ptr addrspace(1) %g184, ptr %p195
	ret ptr addrspace(1) %g183
}

define fastcc ptr addrspace(1) @fibY_code(ptr addrspace(1) %fibY196,ptr addrspace(1) %fib197) gc "statepoint-example" {
entry_0178:
	; LET fibY100F5 = alloc [$fibY1_code00E2,fib00F4]
	%tok198 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %fib197)]
	%g199 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok198)
	%g200 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok198,i32 8,i32 8)
	%n201 = ptrtoint ptr addrspace(1) %g199 to i64
	%p202 = inttoptr i64 %n201 to ptr
	%p203 = getelementptr i64, ptr %p202, i32 0
	store ptr @fibY1_code, ptr %p203
	%n204 = ptrtoint ptr addrspace(1) %g199 to i64
	%p205 = inttoptr i64 %n204 to ptr
	%p206 = getelementptr i64, ptr %p205, i32 1
	store ptr addrspace(1) %g200, ptr %p206
	ret ptr addrspace(1) %g199
}

define i64 @_mml_entry(ptr addrspace(1) %arguments207) gc "statepoint-example" {
entry_0179:
	; LET fibY00E6 = alloc [$fibY_code00E1]
	%tok208 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g209 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok208)
	%n210 = ptrtoint ptr addrspace(1) %g209 to i64
	%p211 = inttoptr i64 %n210 to ptr
	%p212 = getelementptr i64, ptr %p211, i32 0
	store ptr @fibY_code, ptr %p212
	; LET _t2100E7 = apply $y_code00DF (fibY00E6)
	%tok213 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @y_code,
		i32 1,i32 0,
		ptr addrspace(1) %g209,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g209)]
	%g214 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok213)
	%g215 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok213,i32 8,i32 8)
	; LET cp00E8 = #0(_t2100E7)
	%n216 = ptrtoint ptr addrspace(1) %g214 to i64
	%p217 = inttoptr i64 %n216 to ptr
	%p218 = getelementptr ptr, ptr %p217, i32 0
	%p219 = load ptr, ptr %p218
	; LET fib00E9 = apply cp00E8 (_t2100E7,0)
	%n220 = ptrtoint ptr %p219 to i64
	%g221 = inttoptr i64 %n220 to ptr addrspace(1)
	%n222 = ptrtoint ptr addrspace(1) %g221 to i64
	%f223 = inttoptr i64 %n222 to ptr
	%tok224 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),i64)) %f223,
		i32 2,i32 0,
		ptr addrspace(1) %g214, i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g214)]
	%g225 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok224)
	%g226 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok224,i32 9,i32 9)
	; LET cp00EA = #0(fib00E9)
	%n227 = ptrtoint ptr addrspace(1) %g225 to i64
	%p228 = inttoptr i64 %n227 to ptr
	%p229 = getelementptr ptr, ptr %p228, i32 0
	%p230 = load ptr, ptr %p229
	; LET fib_n00EB = apply cp00EA (fib00E9,20)
	%n231 = ptrtoint ptr %p230 to i64
	%g232 = inttoptr i64 %n231 to ptr addrspace(1)
	%n233 = ptrtoint ptr addrspace(1) %g232 to i64
	%f234 = inttoptr i64 %n233 to ptr
	%tok235 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f234,
		i32 2,i32 0,
		ptr addrspace(1) %g225, i64 41,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g225)]
	%n236 = call i64 @llvm.experimental.gc.result.i64(token %tok235)
	%g237 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok235,i32 9,i32 9)
	; LET un00EC = call _mml_print ("fib ")
	%n238 = ptrtoint ptr @_slit_13 to i64
	%g239 = inttoptr i64 %n238 to ptr addrspace(1)
	%tok240 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g239,
		i32 0,i32 0)
	; LET _t2300ED = apply $intToString_code00DE (20)
	%tok241 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 41,
		i32 0,i32 0)
	%g242 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok241)
	; LET un00EE = call _mml_print (_t2300ED)
	%tok243 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g242,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g242)]
	%g244 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok243,i32 8,i32 8)
	; LET un00EF = call _mml_print (" = ")
	%n245 = ptrtoint ptr @_slit_14 to i64
	%g246 = inttoptr i64 %n245 to ptr addrspace(1)
	%tok247 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g246,
		i32 0,i32 0)
	; LET _t2400F0 = apply $intToString_code00DE (fib_n00EB)
	%tok248 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n236,
		i32 0,i32 0)
	%g249 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok248)
	; LET un00F1 = call _mml_print (_t2400F0)
	%tok250 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g249,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g249)]
	%g251 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok250,i32 8,i32 8)
	; LET un00F2 = call _mml_print ("\n")
	%n252 = ptrtoint ptr @_slit_15 to i64
	%g253 = inttoptr i64 %n252 to ptr addrspace(1)
	%tok254 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g253,
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
