define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_013A:
	br label %intToString_code00BC_hdr_013B
intToString_code00BC_hdr_013B:
	; IF IntLt(i00FE, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_0157, label %else_013C
else_013C:
	; IF IntEq(i0105, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_0156, label %else_013D
else_013D:
	; IF IntEq(i0108, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_0155, label %else_013E
else_013E:
	; IF IntEq(i010B, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_0154, label %else_013F
else_013F:
	; IF IntEq(i010E, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_0153, label %else_0140
else_0140:
	; IF IntEq(i0111, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_0152, label %else_0141
else_0141:
	; IF IntEq(i0114, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_0151, label %else_0142
else_0142:
	; IF IntEq(i0117, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_0150, label %else_0143
else_0143:
	; IF IntEq(i011A, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_014F, label %else_0144
else_0144:
	; IF IntEq(i011D, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_014E, label %else_0145
else_0145:
	; IF IntEq(i0120, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_014D, label %else_0146
else_0146:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_0148, label %else_0147
else_0147:
	; LET _t60139 = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_0149
then_0148:
	; LET _t50136 = IntDiv (i0135,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_0149
join_0149:
	%_t446 = phi i64 [ 1, %else_0147 ], [ %n45, %then_0148 ]
	%i47 = phi i64 [ %i1, %else_0147 ], [ %i1, %then_0148 ]
	; LET _t30127 = apply $intToString_code00CD (_t40125)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_014B, label %else_014A
else_014A:
	; LET _t100133 = call _mml_fail ("Remainder by zero")
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
	br label %join_014C
then_014B:
	; LET _t90130 = IntMod (i012E,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_014C
join_014C:
	%_t855 = phi i64 [ 1, %else_014A ], [ %n54, %then_014B ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_014A ], [ %g49, %then_014B ]
	; LET _t7012B = apply $intToString_code00CD (_t80129)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t11012C = call _mml_concat (_t3012A,_t7012B)
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
then_014D:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_014E:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_014F:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_0150:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_0151:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_0152:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_0153:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_0154:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_0155:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_0156:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_0157:
	; LET _t10101 = IntNeg (i0100)
	%n3 = sub i64 2, %i1
	; LET _t00102 = apply $intToString_code00CD (_t10101)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t20103 = call _mml_concat ("-",_t00102)
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

define fastcc ptr addrspace(1) @g_code(ptr addrspace(1) %g71,ptr addrspace(1) %x72) gc "statepoint-example" {
entry_0158:
	; LET f00F9 = #1(g00F7)
	%n73 = ptrtoint ptr addrspace(1) %g71 to i64
	%p74 = inttoptr i64 %n73 to ptr
	%p75 = getelementptr ptr, ptr %p74, i32 1
	%p76 = load ptr, ptr %p75
	; LET _t1200FA = apply $y_code00CE (f00F9)
	%n77 = ptrtoint ptr %p76 to i64
	%g78 = inttoptr i64 %n77 to ptr addrspace(1)
	%tok79 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @y_code,
		i32 1,i32 0,
		ptr addrspace(1) %g78,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %x72)]
	%g80 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok79)
	%g81 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok79,i32 8,i32 8)
	; LET cp00FB = #0(_t1200FA)
	%n82 = ptrtoint ptr addrspace(1) %g80 to i64
	%p83 = inttoptr i64 %n82 to ptr
	%p84 = getelementptr ptr, ptr %p83, i32 0
	%p85 = load ptr, ptr %p84
	; TAIL_APPLY cp00FB(_t1200FA,x00F8)
	%n86 = ptrtoint ptr %p85 to i64
	%g87 = inttoptr i64 %n86 to ptr addrspace(1)
	%n88 = ptrtoint ptr addrspace(1) %g87 to i64
	%f89 = inttoptr i64 %n88 to ptr
	; emitTailCall: %f89 (%g80, %g81)
	%g90 = tail call ptr addrspace(1) %f89 (ptr addrspace(1) %g80, ptr addrspace(1) %g81)
	ret ptr addrspace(1) %g90
}

define fastcc ptr addrspace(1) @y1_code(ptr addrspace(1) %y191,ptr addrspace(1) %x92) gc "statepoint-example" {
entry_0159:
	; LET f00F2 = #1(y100F0)
	%n93 = ptrtoint ptr addrspace(1) %y191 to i64
	%p94 = inttoptr i64 %n93 to ptr
	%p95 = getelementptr ptr, ptr %p94, i32 1
	%p96 = load ptr, ptr %p95
	; LET g00F3 = alloc [$g_code00D0,f00F2]
	%tok97 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %x92)]
	%g98 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok97)
	%g99 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok97,i32 8,i32 8)
	%n100 = ptrtoint ptr addrspace(1) %g98 to i64
	%p101 = inttoptr i64 %n100 to ptr
	%p102 = getelementptr i64, ptr %p101, i32 0
	store ptr @g_code, ptr %p102
	%n103 = ptrtoint ptr addrspace(1) %g98 to i64
	%p104 = inttoptr i64 %n103 to ptr
	%p105 = getelementptr i64, ptr %p104, i32 1
	%n106 = ptrtoint ptr %p96 to i64
	%g107 = inttoptr i64 %n106 to ptr addrspace(1)
	store ptr addrspace(1) %g107, ptr %p105
	; LET cp00F4 = #0(f00F2)
	%n108 = ptrtoint ptr %p96 to i64
	%g109 = inttoptr i64 %n108 to ptr addrspace(1)
	%n110 = ptrtoint ptr addrspace(1) %g109 to i64
	%p111 = inttoptr i64 %n110 to ptr
	%p112 = getelementptr ptr, ptr %p111, i32 0
	%p113 = load ptr, ptr %p112
	; LET _t1300F5 = apply cp00F4 (f00F2,g00F3)
	%n114 = ptrtoint ptr %p113 to i64
	%g115 = inttoptr i64 %n114 to ptr addrspace(1)
	%n116 = ptrtoint ptr addrspace(1) %g115 to i64
	%f117 = inttoptr i64 %n116 to ptr
	%n118 = ptrtoint ptr %p96 to i64
	%g119 = inttoptr i64 %n118 to ptr addrspace(1)
	%tok120 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) %f117,
		i32 2,i32 0,
		ptr addrspace(1) %g119, ptr addrspace(1) %g98,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g99, ptr addrspace(1) %g98)]
	%g121 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok120)
	%g122 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok120,i32 9,i32 9)
	%g123 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok120,i32 10,i32 10)
	; LET cp00F6 = #0(_t1300F5)
	%n124 = ptrtoint ptr addrspace(1) %g121 to i64
	%p125 = inttoptr i64 %n124 to ptr
	%p126 = getelementptr ptr, ptr %p125, i32 0
	%p127 = load ptr, ptr %p126
	; TAIL_APPLY cp00F6(_t1300F5,x00F1)
	%n128 = ptrtoint ptr %p127 to i64
	%g129 = inttoptr i64 %n128 to ptr addrspace(1)
	%n130 = ptrtoint ptr addrspace(1) %g129 to i64
	%f131 = inttoptr i64 %n130 to ptr
	; emitTailCall: %f131 (%g121, %g122)
	%g132 = tail call ptr addrspace(1) %f131 (ptr addrspace(1) %g121, ptr addrspace(1) %g122)
	ret ptr addrspace(1) %g132
}

define fastcc ptr addrspace(1) @y_code(ptr addrspace(1) %f133) gc "statepoint-example" {
entry_015A:
	; LET y100EF = alloc [$y1_code00CF,f00EE]
	%tok134 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %f133)]
	%g135 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok134)
	%g136 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok134,i32 8,i32 8)
	%n137 = ptrtoint ptr addrspace(1) %g135 to i64
	%p138 = inttoptr i64 %n137 to ptr
	%p139 = getelementptr i64, ptr %p138, i32 0
	store ptr @y1_code, ptr %p139
	%n140 = ptrtoint ptr addrspace(1) %g135 to i64
	%p141 = inttoptr i64 %n140 to ptr
	%p142 = getelementptr i64, ptr %p141, i32 1
	store ptr addrspace(1) %g136, ptr %p142
	ret ptr addrspace(1) %g135
}

define fastcc i64 @factY1_code(ptr addrspace(1) %factY1143,i64 %n144) gc "statepoint-example" {
entry_015B:
	; LET fact00E5 = #1(factY100E3)
	%n145 = ptrtoint ptr addrspace(1) %factY1143 to i64
	%p146 = inttoptr i64 %n145 to ptr
	%p147 = getelementptr ptr, ptr %p146, i32 1
	%p148 = load ptr, ptr %p147
	; IF IntEq(n00E4, 0)
	%b149 = icmp eq i64 %n144, 1
	%n150 = ptrtoint ptr %p148 to i64
	%g151 = inttoptr i64 %n150 to ptr addrspace(1)
	br i1 %b149, label %then_015D, label %else_015C
else_015C:
	; LET _t1500EA = IntSub (n00E8,1)
	%n152 = sub i64 %n144, 2
	; LET cp00EB = #0(fact00E9)
	%n153 = ptrtoint ptr addrspace(1) %g151 to i64
	%p154 = inttoptr i64 %n153 to ptr
	%p155 = getelementptr ptr, ptr %p154, i32 0
	%p156 = load ptr, ptr %p155
	; LET _t1400EC = apply cp00EB (fact00E9,_t1500EA)
	%n157 = ptrtoint ptr %p156 to i64
	%g158 = inttoptr i64 %n157 to ptr addrspace(1)
	%n159 = ptrtoint ptr addrspace(1) %g158 to i64
	%f160 = inttoptr i64 %n159 to ptr
	%tok161 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f160,
		i32 2,i32 0,
		ptr addrspace(1) %g151, i64 %n152,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g151)]
	%n162 = call i64 @llvm.experimental.gc.result.i64(token %tok161)
	%g163 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok161,i32 9,i32 9)
	; LET _t1600ED = IntMul (n00E8,_t1400EC)
	%n164 = sub i64 %n144, 1
	%n165 = ashr i64 %n162, 1
	%n166 = mul i64 %n164, %n165
	%n167 = add i64 %n166, 1
	ret i64 %n167
then_015D:
	ret i64 3
}

define fastcc ptr addrspace(1) @factY_code(ptr addrspace(1) %factY168,ptr addrspace(1) %fact169) gc "statepoint-example" {
entry_015E:
	; LET factY100E2 = alloc [$factY1_code00D2,fact00E1]
	%tok170 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %fact169)]
	%g171 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok170)
	%g172 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok170,i32 8,i32 8)
	%n173 = ptrtoint ptr addrspace(1) %g171 to i64
	%p174 = inttoptr i64 %n173 to ptr
	%p175 = getelementptr i64, ptr %p174, i32 0
	store ptr @factY1_code, ptr %p175
	%n176 = ptrtoint ptr addrspace(1) %g171 to i64
	%p177 = inttoptr i64 %n176 to ptr
	%p178 = getelementptr i64, ptr %p177, i32 1
	store ptr addrspace(1) %g172, ptr %p178
	ret ptr addrspace(1) %g171
}

define i64 @_mml_entry(ptr addrspace(1) %arguments179) gc "statepoint-example" {
entry_015F:
	; LET factY00D5 = alloc [$factY_code00D1]
	%tok180 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g181 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok180)
	%n182 = ptrtoint ptr addrspace(1) %g181 to i64
	%p183 = inttoptr i64 %n182 to ptr
	%p184 = getelementptr i64, ptr %p183, i32 0
	store ptr @factY_code, ptr %p184
	; LET fact00D6 = apply $y_code00CE (factY00D5)
	%tok185 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @y_code,
		i32 1,i32 0,
		ptr addrspace(1) %g181,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g181)]
	%g186 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok185)
	%g187 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok185,i32 8,i32 8)
	; LET cp00D7 = #0(fact00D6)
	%n188 = ptrtoint ptr addrspace(1) %g186 to i64
	%p189 = inttoptr i64 %n188 to ptr
	%p190 = getelementptr ptr, ptr %p189, i32 0
	%p191 = load ptr, ptr %p190
	; LET fact_n00D8 = apply cp00D7 (fact00D6,5)
	%n192 = ptrtoint ptr %p191 to i64
	%g193 = inttoptr i64 %n192 to ptr addrspace(1)
	%n194 = ptrtoint ptr addrspace(1) %g193 to i64
	%f195 = inttoptr i64 %n194 to ptr
	%tok196 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f195,
		i32 2,i32 0,
		ptr addrspace(1) %g186, i64 11,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g186)]
	%n197 = call i64 @llvm.experimental.gc.result.i64(token %tok196)
	%g198 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok196,i32 9,i32 9)
	; LET un00D9 = call _mml_print ("fact ")
	%n199 = ptrtoint ptr @_slit_13 to i64
	%g200 = inttoptr i64 %n199 to ptr addrspace(1)
	%tok201 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g200,
		i32 0,i32 0)
	; LET _t1700DA = apply $intToString_code00CD (5)
	%tok202 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 11,
		i32 0,i32 0)
	%g203 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok202)
	; LET un00DB = call _mml_print (_t1700DA)
	%tok204 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g203,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g203)]
	%g205 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok204,i32 8,i32 8)
	; LET un00DC = call _mml_print (" = ")
	%n206 = ptrtoint ptr @_slit_14 to i64
	%g207 = inttoptr i64 %n206 to ptr addrspace(1)
	%tok208 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g207,
		i32 0,i32 0)
	; LET _t1800DD = apply $intToString_code00CD (fact_n00D8)
	%tok209 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n197,
		i32 0,i32 0)
	%g210 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok209)
	; LET un00DE = call _mml_print (_t1800DD)
	%tok211 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g210,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g210)]
	%g212 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok211,i32 8,i32 8)
	; LET un00DF = call _mml_print ("\n")
	%n213 = ptrtoint ptr @_slit_15 to i64
	%g214 = inttoptr i64 %n213 to ptr addrspace(1)
	%tok215 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g214,
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
	i64 11,
	i64 139391623526
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
