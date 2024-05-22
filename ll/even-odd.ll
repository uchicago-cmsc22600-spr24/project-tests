define fastcc ptr addrspace(1) @intToString_code(i64 %i1) gc "statepoint-example" {
entry_015D:
	br label %intToString_code00BC_hdr_015E
intToString_code00BC_hdr_015E:
	; IF IntLt(i0121, 0)
	%b2 = icmp slt i64 %i1, 1
	br i1 %b2, label %then_017A, label %else_015F
else_015F:
	; IF IntEq(i0128, 0)
	%b11 = icmp eq i64 %i1, 1
	br i1 %b11, label %then_0179, label %else_0160
else_0160:
	; IF IntEq(i012B, 1)
	%b14 = icmp eq i64 %i1, 3
	br i1 %b14, label %then_0178, label %else_0161
else_0161:
	; IF IntEq(i012E, 2)
	%b17 = icmp eq i64 %i1, 5
	br i1 %b17, label %then_0177, label %else_0162
else_0162:
	; IF IntEq(i0131, 3)
	%b20 = icmp eq i64 %i1, 7
	br i1 %b20, label %then_0176, label %else_0163
else_0163:
	; IF IntEq(i0134, 4)
	%b23 = icmp eq i64 %i1, 9
	br i1 %b23, label %then_0175, label %else_0164
else_0164:
	; IF IntEq(i0137, 5)
	%b26 = icmp eq i64 %i1, 11
	br i1 %b26, label %then_0174, label %else_0165
else_0165:
	; IF IntEq(i013A, 6)
	%b29 = icmp eq i64 %i1, 13
	br i1 %b29, label %then_0173, label %else_0166
else_0166:
	; IF IntEq(i013D, 7)
	%b32 = icmp eq i64 %i1, 15
	br i1 %b32, label %then_0172, label %else_0167
else_0167:
	; IF IntEq(i0140, 8)
	%b35 = icmp eq i64 %i1, 17
	br i1 %b35, label %then_0171, label %else_0168
else_0168:
	; IF IntEq(i0143, 9)
	%b38 = icmp eq i64 %i1, 19
	br i1 %b38, label %then_0170, label %else_0169
else_0169:
	; IF IntNEq(10, 0)
	%b41 = icmp ne i64 21, 1
	br i1 %b41, label %then_016B, label %else_016A
else_016A:
	; LET _t6015C = call _mml_fail ("Divide by zero")
	%n68 = ptrtoint ptr @_slit_12 to i64
	%g69 = inttoptr i64 %n68 to ptr addrspace(1)
	%tok70 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g69,
		i32 0,i32 0)
	br label %join_016C
then_016B:
	; LET _t50159 = IntDiv (i0158,10)
	%n42 = ashr i64 %i1, 1
	%n43 = sdiv i64 %n42, 10
	%n44 = shl i64 %n43, 1
	%n45 = add i64 %n44, 1
	br label %join_016C
join_016C:
	%_t446 = phi i64 [ 1, %else_016A ], [ %n45, %then_016B ]
	%i47 = phi i64 [ %i1, %else_016A ], [ %i1, %then_016B ]
	; LET _t3014A = apply $intToString_code00D0 (_t40148)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t446,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; IF IntNEq(10, 0)
	%b50 = icmp ne i64 21, 1
	br i1 %b50, label %then_016E, label %else_016D
else_016D:
	; LET _t100156 = call _mml_fail ("Remainder by zero")
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
	br label %join_016F
then_016E:
	; LET _t90153 = IntMod (i0151,10)
	%n51 = ashr i64 %i47, 1
	%n52 = srem i64 %n51, 10
	%n53 = shl i64 %n52, 1
	%n54 = add i64 %n53, 1
	br label %join_016F
join_016F:
	%_t855 = phi i64 [ 1, %else_016D ], [ %n54, %then_016E ]
	%_t356 = phi ptr addrspace(1) [ %g67, %else_016D ], [ %g49, %then_016E ]
	; LET _t7014E = apply $intToString_code00D0 (_t8014C)
	%tok57 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t855,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t356)]
	%g58 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok57)
	%g59 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok57,i32 8,i32 8)
	; LET _t11014F = call _mml_concat (_t3014D,_t7014E)
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
then_0170:
	%n39 = ptrtoint ptr @_slit_10 to i64
	%g40 = inttoptr i64 %n39 to ptr addrspace(1)
	ret ptr addrspace(1) %g40
then_0171:
	%n36 = ptrtoint ptr @_slit_9 to i64
	%g37 = inttoptr i64 %n36 to ptr addrspace(1)
	ret ptr addrspace(1) %g37
then_0172:
	%n33 = ptrtoint ptr @_slit_8 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	ret ptr addrspace(1) %g34
then_0173:
	%n30 = ptrtoint ptr @_slit_7 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	ret ptr addrspace(1) %g31
then_0174:
	%n27 = ptrtoint ptr @_slit_6 to i64
	%g28 = inttoptr i64 %n27 to ptr addrspace(1)
	ret ptr addrspace(1) %g28
then_0175:
	%n24 = ptrtoint ptr @_slit_5 to i64
	%g25 = inttoptr i64 %n24 to ptr addrspace(1)
	ret ptr addrspace(1) %g25
then_0176:
	%n21 = ptrtoint ptr @_slit_4 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
then_0177:
	%n18 = ptrtoint ptr @_slit_3 to i64
	%g19 = inttoptr i64 %n18 to ptr addrspace(1)
	ret ptr addrspace(1) %g19
then_0178:
	%n15 = ptrtoint ptr @_slit_2 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	ret ptr addrspace(1) %g16
then_0179:
	%n12 = ptrtoint ptr @_slit_1 to i64
	%g13 = inttoptr i64 %n12 to ptr addrspace(1)
	ret ptr addrspace(1) %g13
then_017A:
	; LET _t10124 = IntNeg (i0123)
	%n3 = sub i64 2, %i1
	; LET _t00125 = apply $intToString_code00D0 (_t10124)
	%tok4 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n3,
		i32 0,i32 0)
	%g5 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok4)
	; LET _t20126 = call _mml_concat ("-",_t00125)
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

define fastcc ptr addrspace(1) @boolToString_code(i64 %b71) gc "statepoint-example" {
entry_017B:
	; IF IntEq(1, b011A)
	%b72 = icmp eq i64 3, %b71
	br i1 %b72, label %tlab_017D, label %flab_017C
flab_017C:
	%n75 = ptrtoint ptr @_slit_14 to i64
	%g76 = inttoptr i64 %n75 to ptr addrspace(1)
	ret ptr addrspace(1) %g76
tlab_017D:
	%n73 = ptrtoint ptr @_slit_13 to i64
	%g74 = inttoptr i64 %n73 to ptr addrspace(1)
	ret ptr addrspace(1) %g74
}

define fastcc i64 @preEven1_code(ptr addrspace(1) %preEven177,i64 %x78) gc "statepoint-example" {
entry_017E:
	; LET zero0104 = #1(preEven10102)
	%n79 = ptrtoint ptr addrspace(1) %preEven177 to i64
	%p80 = inttoptr i64 %n79 to ptr
	%p81 = getelementptr ptr, ptr %p80, i32 1
	%p82 = load ptr, ptr %p81
	; LET one0105 = #2(preEven10102)
	%n83 = ptrtoint ptr addrspace(1) %preEven177 to i64
	%p84 = inttoptr i64 %n83 to ptr
	%p85 = getelementptr ptr, ptr %p84, i32 2
	%p86 = load ptr, ptr %p85
	; LET preEven0106 = #3(preEven10102)
	%n87 = ptrtoint ptr addrspace(1) %preEven177 to i64
	%p88 = inttoptr i64 %n87 to ptr
	%p89 = getelementptr ptr, ptr %p88, i32 3
	%p90 = load ptr, ptr %p89
	; LET odd0107 = #4(preEven10102)
	%n91 = ptrtoint ptr addrspace(1) %preEven177 to i64
	%p92 = inttoptr i64 %n91 to ptr
	%p93 = getelementptr ptr, ptr %p92, i32 4
	%p94 = load ptr, ptr %p93
	; IF IntLt(x0103, zero0104)
	%n96 = ptrtoint ptr %p82 to i64
	%b95 = icmp slt i64 %x78, %n96
	%n97 = ptrtoint ptr %p90 to i64
	%g98 = inttoptr i64 %n97 to ptr addrspace(1)
	%n99 = ptrtoint ptr %p94 to i64
	%g100 = inttoptr i64 %n99 to ptr addrspace(1)
	%n115 = ptrtoint ptr %p86 to i64
	%n116 = ptrtoint ptr %p94 to i64
	%g117 = inttoptr i64 %n116 to ptr addrspace(1)
	br i1 %b95, label %then_0182, label %else_017F
else_017F:
	; IF IntEq(x0110, 0)
	%b118 = icmp eq i64 %x78, 1
	br i1 %b118, label %then_0181, label %else_0180
else_0180:
	; LET _t140118 = IntSub (x0115,one0116)
	%n119 = sub i64 %x78, %n115
	%n120 = add i64 %n119, 1
	; LET cp0119 = #0(odd0117)
	%n121 = ptrtoint ptr addrspace(1) %g117 to i64
	%p122 = inttoptr i64 %n121 to ptr
	%p123 = getelementptr ptr, ptr %p122, i32 0
	%p124 = load ptr, ptr %p123
	; TAIL_APPLY cp0119(odd0117,_t140118)
	%n125 = ptrtoint ptr %p124 to i64
	%g126 = inttoptr i64 %n125 to ptr addrspace(1)
	%n127 = ptrtoint ptr addrspace(1) %g126 to i64
	%f128 = inttoptr i64 %n127 to ptr
	; emitTailCall: %f128 (%g117, %n120)
	%n129 = tail call i64 %f128 (ptr addrspace(1) %g117, i64 %n120)
	ret i64 %n129
then_0181:
	ret i64 3
then_0182:
	; LET _t12010C = apply $preEven_code00D2 (preEven010A,odd010B)
	%tok101 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @preEven_code,
		i32 2,i32 0,
		ptr addrspace(1) %g98, ptr addrspace(1) %g100,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g98, ptr addrspace(1) %g100)]
	%g102 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok101)
	%g103 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok101,i32 9,i32 9)
	%g104 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok101,i32 10,i32 10)
	; LET _t13010D = IntNeg (x0109)
	%n105 = sub i64 2, %x78
	; LET cp010E = #0(_t12010C)
	%n106 = ptrtoint ptr addrspace(1) %g102 to i64
	%p107 = inttoptr i64 %n106 to ptr
	%p108 = getelementptr ptr, ptr %p107, i32 0
	%p109 = load ptr, ptr %p108
	; TAIL_APPLY cp010E(_t12010C,_t13010D)
	%n110 = ptrtoint ptr %p109 to i64
	%g111 = inttoptr i64 %n110 to ptr addrspace(1)
	%n112 = ptrtoint ptr addrspace(1) %g111 to i64
	%f113 = inttoptr i64 %n112 to ptr
	; emitTailCall: %f113 (%g102, %n105)
	%n114 = tail call i64 %f113 (ptr addrspace(1) %g102, i64 %n105)
	ret i64 %n114
}

define fastcc ptr addrspace(1) @preEven_code(ptr addrspace(1) %preEven130,ptr addrspace(1) %odd131) gc "statepoint-example" {
entry_0183:
	; LET zero00FF = #0(preEven00FD)
	%n132 = ptrtoint ptr addrspace(1) %preEven130 to i64
	%p133 = inttoptr i64 %n132 to ptr
	%p134 = getelementptr ptr, ptr %p133, i32 0
	%p135 = load ptr, ptr %p134
	; LET one0100 = #1(preEven00FD)
	%n136 = ptrtoint ptr addrspace(1) %preEven130 to i64
	%p137 = inttoptr i64 %n136 to ptr
	%p138 = getelementptr ptr, ptr %p137, i32 1
	%p139 = load ptr, ptr %p138
	; LET preEven10101 = alloc [$preEven1_code00D3,zero00FF,one0100,preEven00FD,odd00FE]
	%tok140 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 5,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %preEven130, ptr addrspace(1) %odd131)]
	%g141 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok140)
	%g142 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok140,i32 8,i32 8)
	%g143 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok140,i32 9,i32 9)
	%n144 = ptrtoint ptr addrspace(1) %g141 to i64
	%p145 = inttoptr i64 %n144 to ptr
	%p146 = getelementptr i64, ptr %p145, i32 0
	store ptr @preEven1_code, ptr %p146
	%n147 = ptrtoint ptr addrspace(1) %g141 to i64
	%p148 = inttoptr i64 %n147 to ptr
	%p149 = getelementptr i64, ptr %p148, i32 1
	%n150 = ptrtoint ptr %p135 to i64
	store i64 %n150, ptr %p149
	%n151 = ptrtoint ptr addrspace(1) %g141 to i64
	%p152 = inttoptr i64 %n151 to ptr
	%p153 = getelementptr i64, ptr %p152, i32 2
	%n154 = ptrtoint ptr %p139 to i64
	store i64 %n154, ptr %p153
	%n155 = ptrtoint ptr addrspace(1) %g141 to i64
	%p156 = inttoptr i64 %n155 to ptr
	%p157 = getelementptr i64, ptr %p156, i32 3
	store ptr addrspace(1) %g142, ptr %p157
	%n158 = ptrtoint ptr addrspace(1) %g141 to i64
	%p159 = inttoptr i64 %n158 to ptr
	%p160 = getelementptr i64, ptr %p159, i32 4
	store ptr addrspace(1) %g143, ptr %p160
	ret ptr addrspace(1) %g141
}

define fastcc i64 @odd_code(ptr addrspace(1) %odd161,i64 %x162) gc "statepoint-example" {
entry_0184:
	br label %odd_code00BE_hdr_0185
odd_code00BE_hdr_0185:
	%odd163 = phi ptr addrspace(1) [ %odd163, %then_0189 ], [ %odd161, %entry_0184 ]
	%x164 = phi i64 [ %n179, %then_0189 ], [ %x162, %entry_0184 ]
	; LET zero00E8 = #1(odd00E6)
	%n165 = ptrtoint ptr addrspace(1) %odd163 to i64
	%p166 = inttoptr i64 %n165 to ptr
	%p167 = getelementptr ptr, ptr %p166, i32 1
	%p168 = load ptr, ptr %p167
	; LET one00E9 = #2(odd00E6)
	%n169 = ptrtoint ptr addrspace(1) %odd163 to i64
	%p170 = inttoptr i64 %n169 to ptr
	%p171 = getelementptr ptr, ptr %p170, i32 2
	%p172 = load ptr, ptr %p171
	; LET preEven00EA = #3(odd00E6)
	%n173 = ptrtoint ptr addrspace(1) %odd163 to i64
	%p174 = inttoptr i64 %n173 to ptr
	%p175 = getelementptr ptr, ptr %p174, i32 3
	%p176 = load ptr, ptr %p175
	; IF IntLt(x00E7, zero00E8)
	%n178 = ptrtoint ptr %p168 to i64
	%b177 = icmp slt i64 %x164, %n178
	%n180 = ptrtoint ptr %p172 to i64
	%n181 = ptrtoint ptr %p176 to i64
	%g182 = inttoptr i64 %n181 to ptr addrspace(1)
	br i1 %b177, label %then_0189, label %else_0186
else_0186:
	; IF IntEq(x00F0, 0)
	%b183 = icmp eq i64 %x164, 1
	br i1 %b183, label %then_0188, label %else_0187
else_0187:
	; LET _t1600FA = apply $preEven_code00D2 (preEven00F9,odd00F7)
	%tok184 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @preEven_code,
		i32 2,i32 0,
		ptr addrspace(1) %g182, ptr addrspace(1) %odd163,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %odd163, ptr addrspace(1) %g182)]
	%g185 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok184)
	%g186 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok184,i32 9,i32 9)
	%g187 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok184,i32 10,i32 10)
	; LET _t1700FB = IntSub (x00F6,one00F8)
	%n188 = sub i64 %x164, %n180
	%n189 = add i64 %n188, 1
	; LET cp00FC = #0(_t1600FA)
	%n190 = ptrtoint ptr addrspace(1) %g185 to i64
	%p191 = inttoptr i64 %n190 to ptr
	%p192 = getelementptr ptr, ptr %p191, i32 0
	%p193 = load ptr, ptr %p192
	; TAIL_APPLY cp00FC(_t1600FA,_t1700FB)
	%n194 = ptrtoint ptr %p193 to i64
	%g195 = inttoptr i64 %n194 to ptr addrspace(1)
	%n196 = ptrtoint ptr addrspace(1) %g195 to i64
	%f197 = inttoptr i64 %n196 to ptr
	; emitTailCall: %f197 (%g185, %n189)
	%n198 = tail call i64 %f197 (ptr addrspace(1) %g185, i64 %n189)
	ret i64 %n198
then_0188:
	ret i64 1
then_0189:
	; LET _t1500EE = IntNeg (x00EC)
	%n179 = sub i64 2, %x164
	br label %odd_code00BE_hdr_0185
}

define i64 @_mml_entry(ptr addrspace(1) %arguments199) gc "statepoint-example" {
entry_018A:
	; LET preEven00D7 = alloc [0,1]
	%tok200 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g201 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok200)
	%n202 = ptrtoint ptr addrspace(1) %g201 to i64
	%p203 = inttoptr i64 %n202 to ptr
	%p204 = getelementptr i64, ptr %p203, i32 0
	store i64 1, ptr %p204
	%n205 = ptrtoint ptr addrspace(1) %g201 to i64
	%p206 = inttoptr i64 %n205 to ptr
	%p207 = getelementptr i64, ptr %p206, i32 1
	store i64 3, ptr %p207
	; LET odd00D8 = alloc [$odd_code00D4,0,1,preEven00D7]
	%tok208 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 4,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g201)]
	%g209 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok208)
	%g210 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok208,i32 8,i32 8)
	%n211 = ptrtoint ptr addrspace(1) %g209 to i64
	%p212 = inttoptr i64 %n211 to ptr
	%p213 = getelementptr i64, ptr %p212, i32 0
	store ptr @odd_code, ptr %p213
	%n214 = ptrtoint ptr addrspace(1) %g209 to i64
	%p215 = inttoptr i64 %n214 to ptr
	%p216 = getelementptr i64, ptr %p215, i32 1
	store i64 1, ptr %p216
	%n217 = ptrtoint ptr addrspace(1) %g209 to i64
	%p218 = inttoptr i64 %n217 to ptr
	%p219 = getelementptr i64, ptr %p218, i32 2
	store i64 3, ptr %p219
	%n220 = ptrtoint ptr addrspace(1) %g209 to i64
	%p221 = inttoptr i64 %n220 to ptr
	%p222 = getelementptr i64, ptr %p221, i32 3
	store ptr addrspace(1) %g210, ptr %p222
	; LET even00D9 = apply $preEven_code00D2 (preEven00D7,odd00D8)
	%tok223 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @preEven_code,
		i32 2,i32 0,
		ptr addrspace(1) %g210, ptr addrspace(1) %g209,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g210, ptr addrspace(1) %g209)]
	%g224 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok223)
	%g225 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok223,i32 9,i32 9)
	%g226 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok223,i32 10,i32 10)
	; LET cp00DA = #0(even00D9)
	%n227 = ptrtoint ptr addrspace(1) %g224 to i64
	%p228 = inttoptr i64 %n227 to ptr
	%p229 = getelementptr ptr, ptr %p228, i32 0
	%p230 = load ptr, ptr %p229
	; LET even_n00DB = apply cp00DA (even00D9,101)
	%n231 = ptrtoint ptr %p230 to i64
	%g232 = inttoptr i64 %n231 to ptr addrspace(1)
	%n233 = ptrtoint ptr addrspace(1) %g232 to i64
	%f234 = inttoptr i64 %n233 to ptr
	%tok235 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f234,
		i32 2,i32 0,
		ptr addrspace(1) %g224, i64 203,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g224)]
	%n236 = call i64 @llvm.experimental.gc.result.i64(token %tok235)
	%g237 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok235,i32 9,i32 9)
	; LET un00DC = call _mml_print ("even ")
	%n238 = ptrtoint ptr @_slit_15 to i64
	%g239 = inttoptr i64 %n238 to ptr addrspace(1)
	%tok240 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g239,
		i32 0,i32 0)
	; LET _t1800DD = apply $intToString_code00D0 (101)
	%tok241 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 203,
		i32 0,i32 0)
	%g242 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok241)
	; LET un00DE = call _mml_print (_t1800DD)
	%tok243 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g242,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g242)]
	%g244 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok243,i32 8,i32 8)
	; LET un00DF = call _mml_print (" = ")
	%n245 = ptrtoint ptr @_slit_16 to i64
	%g246 = inttoptr i64 %n245 to ptr addrspace(1)
	%tok247 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g246,
		i32 0,i32 0)
	; LET _t1900E0 = apply $boolToString_code00D1 (even_n00DB)
	%tok248 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @boolToString_code,
		i32 1,i32 0,
		i64 %n236,
		i32 0,i32 0)
	%g249 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok248)
	; LET un00E1 = call _mml_print (_t1900E0)
	%tok250 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g249,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g249)]
	%g251 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok250,i32 8,i32 8)
	; LET un00E2 = call _mml_print ("\n")
	%n252 = ptrtoint ptr @_slit_17 to i64
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
	i64 1702195796
]

@_slit_14 = global [2 x i64] [
	i64 11,
	i64 435728179526
]

@_slit_15 = global [2 x i64] [
	i64 11,
	i64 139291096677
]

@_slit_16 = global [2 x i64] [
	i64 7,
	i64 2112800
]

@_slit_17 = global [2 x i64] [
	i64 3,
	i64 10
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
