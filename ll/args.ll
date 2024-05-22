define fastcc ptr addrspace(1) @fst_code(ptr addrspace(1) %p1) gc "statepoint-example" {
entry_019F:
	; LET a019D = #0(p019C)
	%n2 = ptrtoint ptr addrspace(1) %p1 to i64
	%p3 = inttoptr i64 %n2 to ptr
	%p4 = getelementptr ptr, ptr %p3, i32 0
	%p5 = load ptr, ptr %p4
	; LET _019E = #1(p019C)
	%n6 = ptrtoint ptr addrspace(1) %p1 to i64
	%p7 = inttoptr i64 %n6 to ptr
	%p8 = getelementptr ptr, ptr %p7, i32 1
	%p9 = load ptr, ptr %p8
	%n10 = ptrtoint ptr %p5 to i64
	%g11 = inttoptr i64 %n10 to ptr addrspace(1)
	ret ptr addrspace(1) %g11
}

define fastcc ptr addrspace(1) @snd_code(ptr addrspace(1) %p12) gc "statepoint-example" {
entry_01A0:
	; LET _019A = #0(p0199)
	%n13 = ptrtoint ptr addrspace(1) %p12 to i64
	%p14 = inttoptr i64 %n13 to ptr
	%p15 = getelementptr ptr, ptr %p14, i32 0
	%p16 = load ptr, ptr %p15
	; LET b019B = #1(p0199)
	%n17 = ptrtoint ptr addrspace(1) %p12 to i64
	%p18 = inttoptr i64 %n17 to ptr
	%p19 = getelementptr ptr, ptr %p18, i32 1
	%p20 = load ptr, ptr %p19
	%n21 = ptrtoint ptr %p20 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	ret ptr addrspace(1) %g22
}

define fastcc i64 @length_code(ptr addrspace(1) %l23) gc "statepoint-example" {
entry_01A1:
	br label %length_code0107_hdr_01A2
length_code0107_hdr_01A2:
	; IF Boxed(l0191)
	%n25 = ptrtoint ptr addrspace(1) %l23 to i64
	%n24 = and i64 %n25, 1
	%b26 = icmp eq i64 %n24, 0
	br i1 %b26, label %boxed_01A3, label %unboxed_01A4
boxed_01A3:
	; LET r0196 = #1(l0195)
	%n27 = ptrtoint ptr addrspace(1) %l23 to i64
	%p28 = inttoptr i64 %n27 to ptr
	%p29 = getelementptr ptr, ptr %p28, i32 1
	%p30 = load ptr, ptr %p29
	; LET _t00197 = apply $length_code0119 (r0196)
	%n31 = ptrtoint ptr %p30 to i64
	%g32 = inttoptr i64 %n31 to ptr addrspace(1)
	%tok33 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @length_code,
		i32 1,i32 0,
		ptr addrspace(1) %g32,
		i32 0,i32 0)
	%n34 = call i64 @llvm.experimental.gc.result.i64(token %tok33)
	; LET _t10198 = IntAdd (1,_t00197)
	%n35 = add i64 2, %n34
	ret i64 %n35
unboxed_01A4:
	ret i64 1
}

define fastcc i64 @appf_code(ptr addrspace(1) %appf36,ptr addrspace(1) %arg37) gc "statepoint-example" {
entry_01A5:
	br label %appf_code0112_hdr_01A6
appf_code0112_hdr_01A6:
	%appf38 = phi ptr addrspace(1) [ %g98, %boxed_01A7 ], [ %appf36, %entry_01A5 ]
	%arg39 = phi ptr addrspace(1) [ %g97, %boxed_01A7 ], [ %arg37, %entry_01A5 ]
	; LET f017E = #0(appf017C)
	%n40 = ptrtoint ptr addrspace(1) %appf38 to i64
	%p41 = inttoptr i64 %n40 to ptr
	%p42 = getelementptr ptr, ptr %p41, i32 0
	%p43 = load ptr, ptr %p42
	; LET _t2017F = apply $snd_code0118 (arg017D)
	%tok44 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @snd_code,
		i32 1,i32 0,
		ptr addrspace(1) %arg39,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %appf38, ptr addrspace(1) %arg39)]
	%g45 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok44)
	%g46 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok44,i32 8,i32 8)
	%g47 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok44,i32 9,i32 9)
	; IF Boxed(_t2017F)
	%n49 = ptrtoint ptr addrspace(1) %g45 to i64
	%n48 = and i64 %n49, 1
	%b50 = icmp eq i64 %n48, 0
	%n51 = ptrtoint ptr %p43 to i64
	%g52 = inttoptr i64 %n51 to ptr addrspace(1)
	br i1 %b50, label %boxed_01A7, label %unboxed_01A8
boxed_01A7:
	; LET x0187 = #0(_t20183)
	%n53 = ptrtoint ptr addrspace(1) %g45 to i64
	%p54 = inttoptr i64 %n53 to ptr
	%p55 = getelementptr ptr, ptr %p54, i32 0
	%p56 = load ptr, ptr %p55
	; LET xs0188 = #1(_t20183)
	%n57 = ptrtoint ptr addrspace(1) %g45 to i64
	%p58 = inttoptr i64 %n57 to ptr
	%p59 = getelementptr ptr, ptr %p58, i32 1
	%p60 = load ptr, ptr %p59
	; LET i0189 = apply $fst_code0117 (arg0184)
	%tok61 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @fst_code,
		i32 1,i32 0,
		ptr addrspace(1) %g47,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g47, ptr addrspace(1) %g46, ptr addrspace(1) %g52)]
	%g62 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok61)
	%g63 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok61,i32 8,i32 8)
	%g64 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok61,i32 9,i32 9)
	%g65 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok61,i32 10,i32 10)
	; LET _t4018A = alloc [i0189,x0187]
	%tok66 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g64, ptr addrspace(1) %g65, ptr addrspace(1) %g62)]
	%g67 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok66)
	%g68 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok66,i32 8,i32 8)
	%g69 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok66,i32 9,i32 9)
	%g70 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok66,i32 10,i32 10)
	%n71 = ptrtoint ptr addrspace(1) %g67 to i64
	%p72 = inttoptr i64 %n71 to ptr
	%p73 = getelementptr i64, ptr %p72, i32 0
	%n74 = ptrtoint ptr addrspace(1) %g70 to i64
	store i64 %n74, ptr %p73
	%n75 = ptrtoint ptr addrspace(1) %g67 to i64
	%p76 = inttoptr i64 %n75 to ptr
	%p77 = getelementptr i64, ptr %p76, i32 1
	%n78 = ptrtoint ptr %p56 to i64
	%g79 = inttoptr i64 %n78 to ptr addrspace(1)
	store ptr addrspace(1) %g79, ptr %p77
	; LET cp018B = #0(f0186)
	%n80 = ptrtoint ptr addrspace(1) %g69 to i64
	%p81 = inttoptr i64 %n80 to ptr
	%p82 = getelementptr ptr, ptr %p81, i32 0
	%p83 = load ptr, ptr %p82
	; LET un018C = apply cp018B (f0186,_t4018A)
	%n84 = ptrtoint ptr %p83 to i64
	%g85 = inttoptr i64 %n84 to ptr addrspace(1)
	%n86 = ptrtoint ptr addrspace(1) %g85 to i64
	%f87 = inttoptr i64 %n86 to ptr
	%tok88 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),ptr addrspace(1))) %f87,
		i32 2,i32 0,
		ptr addrspace(1) %g69, ptr addrspace(1) %g67,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g68, ptr addrspace(1) %g69, ptr addrspace(1) %g70, ptr addrspace(1) %g67)]
	%n89 = call i64 @llvm.experimental.gc.result.i64(token %tok88)
	%g90 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok88,i32 9,i32 9)
	%g91 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok88,i32 10,i32 10)
	%g92 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok88,i32 11,i32 11)
	%g93 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok88,i32 12,i32 12)
	; LET _t6018D = IntAdd (i0189,1)
	%n95 = ptrtoint ptr addrspace(1) %g92 to i64
	%n94 = add i64 %n95, 2
	; LET _t5018E = alloc [_t6018D,xs0188]
	%tok96 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g90)]
	%g97 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok96)
	%g98 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok96,i32 8,i32 8)
	%n99 = ptrtoint ptr addrspace(1) %g97 to i64
	%p100 = inttoptr i64 %n99 to ptr
	%p101 = getelementptr i64, ptr %p100, i32 0
	store i64 %n94, ptr %p101
	%n102 = ptrtoint ptr addrspace(1) %g97 to i64
	%p103 = inttoptr i64 %n102 to ptr
	%p104 = getelementptr i64, ptr %p103, i32 1
	%n105 = ptrtoint ptr %p60 to i64
	%g106 = inttoptr i64 %n105 to ptr addrspace(1)
	store ptr addrspace(1) %g106, ptr %p104
	br label %appf_code0112_hdr_01A6
unboxed_01A8:
	ret i64 1
}

define fastcc i64 @appi1_code(ptr addrspace(1) %appi1107,ptr addrspace(1) %l108) gc "statepoint-example" {
entry_01A9:
	; LET f0176 = #1(appi10174)
	%n109 = ptrtoint ptr addrspace(1) %appi1107 to i64
	%p110 = inttoptr i64 %n109 to ptr
	%p111 = getelementptr ptr, ptr %p110, i32 1
	%p112 = load ptr, ptr %p111
	; LET appf0177 = alloc [f0176]
	%tok113 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %l108)]
	%g114 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok113)
	%g115 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok113,i32 8,i32 8)
	%n116 = ptrtoint ptr addrspace(1) %g114 to i64
	%p117 = inttoptr i64 %n116 to ptr
	%p118 = getelementptr i64, ptr %p117, i32 0
	%n119 = ptrtoint ptr %p112 to i64
	%g120 = inttoptr i64 %n119 to ptr addrspace(1)
	store ptr addrspace(1) %g120, ptr %p118
	; LET _t70178 = alloc [0,l0175]
	%tok121 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g115, ptr addrspace(1) %g114)]
	%g122 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok121)
	%g123 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok121,i32 8,i32 8)
	%g124 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok121,i32 9,i32 9)
	%n125 = ptrtoint ptr addrspace(1) %g122 to i64
	%p126 = inttoptr i64 %n125 to ptr
	%p127 = getelementptr i64, ptr %p126, i32 0
	store i64 1, ptr %p127
	%n128 = ptrtoint ptr addrspace(1) %g122 to i64
	%p129 = inttoptr i64 %n128 to ptr
	%p130 = getelementptr i64, ptr %p129, i32 1
	store ptr addrspace(1) %g123, ptr %p130
	; TAIL_APPLY $appf_code011C(appf0177,_t70178)
	; emitTailCall: @appf_code (%g124, %g122)
	%n131 = tail call i64 @appf_code (ptr addrspace(1) %g124, ptr addrspace(1) %g122)
	ret i64 %n131
}

define fastcc ptr addrspace(1) @appi_code(ptr addrspace(1) %f132) gc "statepoint-example" {
entry_01AA:
	; LET appi10173 = alloc [$appi1_code011B,f0172]
	%tok133 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %f132)]
	%g134 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok133)
	%g135 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok133,i32 8,i32 8)
	%n136 = ptrtoint ptr addrspace(1) %g134 to i64
	%p137 = inttoptr i64 %n136 to ptr
	%p138 = getelementptr i64, ptr %p137, i32 0
	store ptr @appi1_code, ptr %p138
	%n139 = ptrtoint ptr addrspace(1) %g134 to i64
	%p140 = inttoptr i64 %n139 to ptr
	%p141 = getelementptr i64, ptr %p140, i32 1
	store ptr addrspace(1) %g135, ptr %p141
	ret ptr addrspace(1) %g134
}

define fastcc ptr addrspace(1) @intToString_code(i64 %i142) gc "statepoint-example" {
entry_01AB:
	br label %intToString_code0108_hdr_01AC
intToString_code0108_hdr_01AC:
	; IF IntLt(i0136, 0)
	%b143 = icmp slt i64 %i142, 1
	br i1 %b143, label %then_01C8, label %else_01AD
else_01AD:
	; IF IntEq(i013D, 0)
	%b152 = icmp eq i64 %i142, 1
	br i1 %b152, label %then_01C7, label %else_01AE
else_01AE:
	; IF IntEq(i0140, 1)
	%b155 = icmp eq i64 %i142, 3
	br i1 %b155, label %then_01C6, label %else_01AF
else_01AF:
	; IF IntEq(i0143, 2)
	%b158 = icmp eq i64 %i142, 5
	br i1 %b158, label %then_01C5, label %else_01B0
else_01B0:
	; IF IntEq(i0146, 3)
	%b161 = icmp eq i64 %i142, 7
	br i1 %b161, label %then_01C4, label %else_01B1
else_01B1:
	; IF IntEq(i0149, 4)
	%b164 = icmp eq i64 %i142, 9
	br i1 %b164, label %then_01C3, label %else_01B2
else_01B2:
	; IF IntEq(i014C, 5)
	%b167 = icmp eq i64 %i142, 11
	br i1 %b167, label %then_01C2, label %else_01B3
else_01B3:
	; IF IntEq(i014F, 6)
	%b170 = icmp eq i64 %i142, 13
	br i1 %b170, label %then_01C1, label %else_01B4
else_01B4:
	; IF IntEq(i0152, 7)
	%b173 = icmp eq i64 %i142, 15
	br i1 %b173, label %then_01C0, label %else_01B5
else_01B5:
	; IF IntEq(i0155, 8)
	%b176 = icmp eq i64 %i142, 17
	br i1 %b176, label %then_01BF, label %else_01B6
else_01B6:
	; IF IntEq(i0158, 9)
	%b179 = icmp eq i64 %i142, 19
	br i1 %b179, label %then_01BE, label %else_01B7
else_01B7:
	; IF IntNEq(10, 0)
	%b182 = icmp ne i64 21, 1
	br i1 %b182, label %then_01B9, label %else_01B8
else_01B8:
	; LET _t140171 = call _mml_fail ("Divide by zero")
	%n209 = ptrtoint ptr @_slit_12 to i64
	%g210 = inttoptr i64 %n209 to ptr addrspace(1)
	%tok211 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g210,
		i32 0,i32 0)
	br label %join_01BA
then_01B9:
	; LET _t13016E = IntDiv (i016D,10)
	%n183 = ashr i64 %i142, 1
	%n184 = sdiv i64 %n183, 10
	%n185 = shl i64 %n184, 1
	%n186 = add i64 %n185, 1
	br label %join_01BA
join_01BA:
	%_t12187 = phi i64 [ 1, %else_01B8 ], [ %n186, %then_01B9 ]
	%i188 = phi i64 [ %i142, %else_01B8 ], [ %i142, %then_01B9 ]
	; LET _t11015F = apply $intToString_code011D (_t12015D)
	%tok189 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t12187,
		i32 0,i32 0)
	%g190 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok189)
	; IF IntNEq(10, 0)
	%b191 = icmp ne i64 21, 1
	br i1 %b191, label %then_01BC, label %else_01BB
else_01BB:
	; LET _t18016B = call _mml_fail ("Remainder by zero")
	%n205 = ptrtoint ptr @_slit_11 to i64
	%g206 = inttoptr i64 %n205 to ptr addrspace(1)
	%tok207 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_fail,
		i32 1,i32 0,
		ptr addrspace(1) %g206,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g190)]
	%g208 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok207,i32 8,i32 8)
	br label %join_01BD
then_01BC:
	; LET _t170168 = IntMod (i0166,10)
	%n192 = ashr i64 %i188, 1
	%n193 = srem i64 %n192, 10
	%n194 = shl i64 %n193, 1
	%n195 = add i64 %n194, 1
	br label %join_01BD
join_01BD:
	%_t16196 = phi i64 [ 1, %else_01BB ], [ %n195, %then_01BC ]
	%_t11197 = phi ptr addrspace(1) [ %g208, %else_01BB ], [ %g190, %then_01BC ]
	; LET _t150163 = apply $intToString_code011D (_t160161)
	%tok198 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %_t16196,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %_t11197)]
	%g199 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok198)
	%g200 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok198,i32 8,i32 8)
	; LET _t190164 = call _mml_concat (_t110162,_t150163)
	%tok201 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g200, ptr addrspace(1) %g199,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g200, ptr addrspace(1) %g199)]
	%g202 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok201)
	%g203 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok201,i32 9,i32 9)
	%g204 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok201,i32 10,i32 10)
	ret ptr addrspace(1) %g202
then_01BE:
	%n180 = ptrtoint ptr @_slit_10 to i64
	%g181 = inttoptr i64 %n180 to ptr addrspace(1)
	ret ptr addrspace(1) %g181
then_01BF:
	%n177 = ptrtoint ptr @_slit_9 to i64
	%g178 = inttoptr i64 %n177 to ptr addrspace(1)
	ret ptr addrspace(1) %g178
then_01C0:
	%n174 = ptrtoint ptr @_slit_8 to i64
	%g175 = inttoptr i64 %n174 to ptr addrspace(1)
	ret ptr addrspace(1) %g175
then_01C1:
	%n171 = ptrtoint ptr @_slit_7 to i64
	%g172 = inttoptr i64 %n171 to ptr addrspace(1)
	ret ptr addrspace(1) %g172
then_01C2:
	%n168 = ptrtoint ptr @_slit_6 to i64
	%g169 = inttoptr i64 %n168 to ptr addrspace(1)
	ret ptr addrspace(1) %g169
then_01C3:
	%n165 = ptrtoint ptr @_slit_5 to i64
	%g166 = inttoptr i64 %n165 to ptr addrspace(1)
	ret ptr addrspace(1) %g166
then_01C4:
	%n162 = ptrtoint ptr @_slit_4 to i64
	%g163 = inttoptr i64 %n162 to ptr addrspace(1)
	ret ptr addrspace(1) %g163
then_01C5:
	%n159 = ptrtoint ptr @_slit_3 to i64
	%g160 = inttoptr i64 %n159 to ptr addrspace(1)
	ret ptr addrspace(1) %g160
then_01C6:
	%n156 = ptrtoint ptr @_slit_2 to i64
	%g157 = inttoptr i64 %n156 to ptr addrspace(1)
	ret ptr addrspace(1) %g157
then_01C7:
	%n153 = ptrtoint ptr @_slit_1 to i64
	%g154 = inttoptr i64 %n153 to ptr addrspace(1)
	ret ptr addrspace(1) %g154
then_01C8:
	; LET _t90139 = IntNeg (i0138)
	%n144 = sub i64 2, %i142
	; LET _t8013A = apply $intToString_code011D (_t90139)
	%tok145 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n144,
		i32 0,i32 0)
	%g146 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok145)
	; LET _t10013B = call _mml_concat ("-",_t8013A)
	%n147 = ptrtoint ptr @_slit_0 to i64
	%g148 = inttoptr i64 %n147 to ptr addrspace(1)
	%tok149 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g148, ptr addrspace(1) %g146,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g146)]
	%g150 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok149)
	%g151 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok149,i32 9,i32 9)
	ret ptr addrspace(1) %g150
}

define fastcc i64 @printArg_code(ptr addrspace(1) %printArg212,ptr addrspace(1) %arg213) gc "statepoint-example" {
entry_01C9:
	; LET un012C = call _mml_print ("arg ")
	%n214 = ptrtoint ptr @_slit_13 to i64
	%g215 = inttoptr i64 %n214 to ptr addrspace(1)
	%tok216 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g215,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %arg213)]
	%g217 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok216,i32 8,i32 8)
	; LET _t21012D = apply $fst_code0117 (arg012B)
	%tok218 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @fst_code,
		i32 1,i32 0,
		ptr addrspace(1) %g217,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g217)]
	%g219 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok218)
	%g220 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok218,i32 8,i32 8)
	; LET _t20012E = apply $intToString_code011D (_t21012D)
	%n221 = ptrtoint ptr addrspace(1) %g219 to i64
	%tok222 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n221,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g220, ptr addrspace(1) %g219)]
	%g223 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok222)
	%g224 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok222,i32 8,i32 8)
	%g225 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok222,i32 9,i32 9)
	; LET un012F = call _mml_print (_t20012E)
	%tok226 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g223,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g224, ptr addrspace(1) %g223)]
	%g227 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok226,i32 8,i32 8)
	%g228 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok226,i32 9,i32 9)
	; LET un0130 = call _mml_print (" = ")
	%n229 = ptrtoint ptr @_slit_14 to i64
	%g230 = inttoptr i64 %n229 to ptr addrspace(1)
	%tok231 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g230,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g227)]
	%g232 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok231,i32 8,i32 8)
	; LET _t220131 = apply $snd_code0118 (arg012B)
	%tok233 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @snd_code,
		i32 1,i32 0,
		ptr addrspace(1) %g232,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g232)]
	%g234 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok233)
	%g235 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok233,i32 8,i32 8)
	; LET un0132 = call _mml_print (_t220131)
	%tok236 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g234,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g234)]
	%g237 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok236,i32 8,i32 8)
	; LET _t230133 = call _mml_print ("\n")
	%n238 = ptrtoint ptr @_slit_15 to i64
	%g239 = inttoptr i64 %n238 to ptr addrspace(1)
	%tok240 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g239,
		i32 0,i32 0)
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments241) gc "statepoint-example" {
entry_01CA:
	; LET printArg0121 = alloc [$printArg_code011E]
	%tok242 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %arguments241)]
	%g243 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok242)
	%g244 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok242,i32 8,i32 8)
	%n245 = ptrtoint ptr addrspace(1) %g243 to i64
	%p246 = inttoptr i64 %n245 to ptr
	%p247 = getelementptr i64, ptr %p246, i32 0
	store ptr @printArg_code, ptr %p247
	; LET nArgs0122 = apply $length_code0119 (arguments0120)
	%tok248 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @length_code,
		i32 1,i32 0,
		ptr addrspace(1) %g244,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g244, ptr addrspace(1) %g243)]
	%n249 = call i64 @llvm.experimental.gc.result.i64(token %tok248)
	%g250 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok248,i32 8,i32 8)
	%g251 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok248,i32 9,i32 9)
	; LET _t260123 = apply $intToString_code011D (nArgs0122)
	%tok252 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @intToString_code,
		i32 1,i32 0,
		i64 %n249,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g250, ptr addrspace(1) %g251)]
	%g253 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok252)
	%g254 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok252,i32 8,i32 8)
	%g255 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok252,i32 9,i32 9)
	; LET _t250124 = call _mml_concat (_t260123,"\n")
	%n256 = ptrtoint ptr @_slit_15 to i64
	%g257 = inttoptr i64 %n256 to ptr addrspace(1)
	%tok258 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g253, ptr addrspace(1) %g257,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g254, ptr addrspace(1) %g255, ptr addrspace(1) %g253)]
	%g259 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok258)
	%g260 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok258,i32 9,i32 9)
	%g261 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok258,i32 10,i32 10)
	%g262 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok258,i32 11,i32 11)
	; LET _t240125 = call _mml_concat ("# args = ",_t250124)
	%n263 = ptrtoint ptr @_slit_16 to i64
	%g264 = inttoptr i64 %n263 to ptr addrspace(1)
	%tok265 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g264, ptr addrspace(1) %g259,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g260, ptr addrspace(1) %g261, ptr addrspace(1) %g259)]
	%g266 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok265)
	%g267 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok265,i32 9,i32 9)
	%g268 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok265,i32 10,i32 10)
	%g269 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok265,i32 11,i32 11)
	; LET un0126 = call _mml_print (_t240125)
	%tok270 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g266,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g267, ptr addrspace(1) %g268, ptr addrspace(1) %g266)]
	%g271 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok270,i32 8,i32 8)
	%g272 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok270,i32 9,i32 9)
	%g273 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok270,i32 10,i32 10)
	; LET _t270127 = apply $appi_code011A (printArg0121)
	%tok274 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1))) @appi_code,
		i32 1,i32 0,
		ptr addrspace(1) %g272,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g271, ptr addrspace(1) %g272)]
	%g275 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok274)
	%g276 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok274,i32 8,i32 8)
	%g277 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok274,i32 9,i32 9)
	; LET cp0128 = #0(_t270127)
	%n278 = ptrtoint ptr addrspace(1) %g275 to i64
	%p279 = inttoptr i64 %n278 to ptr
	%p280 = getelementptr ptr, ptr %p279, i32 0
	%p281 = load ptr, ptr %p280
	; LET un0129 = apply cp0128 (_t270127,arguments0120)
	%n282 = ptrtoint ptr %p281 to i64
	%g283 = inttoptr i64 %n282 to ptr addrspace(1)
	%n284 = ptrtoint ptr addrspace(1) %g283 to i64
	%f285 = inttoptr i64 %n284 to ptr
	%tok286 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),ptr addrspace(1))) %f285,
		i32 2,i32 0,
		ptr addrspace(1) %g275, ptr addrspace(1) %g276,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g276, ptr addrspace(1) %g275)]
	%n287 = call i64 @llvm.experimental.gc.result.i64(token %tok286)
	%g288 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok286,i32 9,i32 9)
	%g289 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok286,i32 10,i32 10)
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
	i64 543650401
]

@_slit_14 = global [2 x i64] [
	i64 7,
	i64 2112800
]

@_slit_15 = global [2 x i64] [
	i64 3,
	i64 10
]

@_slit_16 = global [3 x i64] [
	i64 19,
	i64 4404647323706138659,
	i64 32
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
