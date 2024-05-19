define fastcc i64 @lp_code(ptr addrspace(1) %lp1,i64 %i2) gc "statepoint-example" {
entry_00B2:
	br label %lp_code008B_hdr_00B3
lp_code008B_hdr_00B3:
	%lp3 = phi ptr addrspace(1) [ %g27, %then_00B5 ], [ %lp1, %entry_00B2 ]
	%i4 = phi i64 [ %n29, %then_00B5 ], [ %i2, %entry_00B2 ]
	; LET f00A8 = #0(lp00A6)
	%n5 = ptrtoint ptr addrspace(1) %lp3 to i64
	%p6 = inttoptr i64 %n5 to ptr
	%p7 = getelementptr ptr, ptr %p6, i32 0
	%p8 = load ptr, ptr %p7
	; LET n00A9 = #1(lp00A6)
	%n9 = ptrtoint ptr addrspace(1) %lp3 to i64
	%p10 = inttoptr i64 %n9 to ptr
	%p11 = getelementptr ptr, ptr %p10, i32 1
	%p12 = load ptr, ptr %p11
	; IF IntLt(i00A7, n00A9)
	%n14 = ptrtoint ptr %p12 to i64
	%b13 = icmp slt i64 %i4, %n14
	%n15 = ptrtoint ptr %p8 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	br i1 %b13, label %then_00B5, label %else_00B4
else_00B4:
	ret i64 1
then_00B5:
	; LET cp00AE = #0(f00AD)
	%n17 = ptrtoint ptr addrspace(1) %g16 to i64
	%p18 = inttoptr i64 %n17 to ptr
	%p19 = getelementptr ptr, ptr %p18, i32 0
	%p20 = load ptr, ptr %p19
	; LET un00AF = apply cp00AE (f00AD,i00AB)
	%n21 = ptrtoint ptr %p20 to i64
	%g22 = inttoptr i64 %n21 to ptr addrspace(1)
	%n23 = ptrtoint ptr addrspace(1) %g22 to i64
	%f24 = inttoptr i64 %n23 to ptr
	%tok25 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) %f24,
		i32 2,i32 0,
		ptr addrspace(1) %g16, i64 %i4,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %lp3, ptr addrspace(1) %g16)]
	%n26 = call i64 @llvm.experimental.gc.result.i64(token %tok25)
	%g27 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok25,i32 9,i32 9)
	%g28 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok25,i32 10,i32 10)
	; LET _t000B0 = IntAdd (i00AB,1)
	%n29 = add i64 %i4, 2
	br label %lp_code008B_hdr_00B3
}

define fastcc i64 @repeat_code(ptr addrspace(1) %tpl30) gc "statepoint-example" {
entry_00B6:
	; LET f00A0 = #0(tpl009F)
	%n31 = ptrtoint ptr addrspace(1) %tpl30 to i64
	%p32 = inttoptr i64 %n31 to ptr
	%p33 = getelementptr ptr, ptr %p32, i32 0
	%p34 = load ptr, ptr %p33
	; LET n00A1 = #1(tpl009F)
	%n35 = ptrtoint ptr addrspace(1) %tpl30 to i64
	%p36 = inttoptr i64 %n35 to ptr
	%p37 = getelementptr ptr, ptr %p36, i32 1
	%p38 = load ptr, ptr %p37
	; LET lp00A2 = alloc [f00A0,n00A1]
	%tok39 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g40 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok39)
	%n41 = ptrtoint ptr addrspace(1) %g40 to i64
	%p42 = inttoptr i64 %n41 to ptr
	%p43 = getelementptr i64, ptr %p42, i32 0
	%n44 = ptrtoint ptr %p34 to i64
	%g45 = inttoptr i64 %n44 to ptr addrspace(1)
	store ptr addrspace(1) %g45, ptr %p43
	%n46 = ptrtoint ptr addrspace(1) %g40 to i64
	%p47 = inttoptr i64 %n46 to ptr
	%p48 = getelementptr i64, ptr %p47, i32 1
	%n49 = ptrtoint ptr %p38 to i64
	store i64 %n49, ptr %p48
	; TAIL_APPLY $lp_code0092(lp00A2,0)
	; emitTailCall: @lp_code (%g40, 1)
	%n50 = tail call i64 @lp_code (ptr addrspace(1) %g40, i64 1)
	ret i64 %n50
}

define fastcc i64 @ignore_code(ptr addrspace(1) %ignore51,ptr addrspace(1) %x52) gc "statepoint-example" {
entry_00B7:
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments53) gc "statepoint-example" {
entry_00B8:
	; LET ignore0096 = alloc [$ignore_code0093]
	%tok54 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g55 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok54)
	%n56 = ptrtoint ptr addrspace(1) %g55 to i64
	%p57 = inttoptr i64 %n56 to ptr
	%p58 = getelementptr i64, ptr %p57, i32 0
	store ptr @ignore_code, ptr %p58
	; LET _t40097 = alloc [ignore0096,5]
	%tok59 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g55)]
	%g60 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok59)
	%g61 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok59,i32 8,i32 8)
	%n62 = ptrtoint ptr addrspace(1) %g60 to i64
	%p63 = inttoptr i64 %n62 to ptr
	%p64 = getelementptr i64, ptr %p63, i32 0
	store ptr addrspace(1) %g61, ptr %p64
	%n65 = ptrtoint ptr addrspace(1) %g60 to i64
	%p66 = inttoptr i64 %n65 to ptr
	%p67 = getelementptr i64, ptr %p66, i32 1
	store i64 11, ptr %p67
	; LET _t30098 = apply $repeat_code0091 (_t40097)
	%tok68 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @repeat_code,
		i32 1,i32 0,
		ptr addrspace(1) %g60,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g61, ptr addrspace(1) %g60)]
	%n69 = call i64 @llvm.experimental.gc.result.i64(token %tok68)
	%g70 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok68,i32 8,i32 8)
	%g71 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok68,i32 9,i32 9)
	; LET un0099 = apply $ignore_code0093 (ignore0096,_t30098)
	%g72 = inttoptr i64 %n69 to ptr addrspace(1)
	%tok73 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),ptr addrspace(1))) @ignore_code,
		i32 2,i32 0,
		ptr addrspace(1) %g70, ptr addrspace(1) %g72,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g70)]
	%n74 = call i64 @llvm.experimental.gc.result.i64(token %tok73)
	%g75 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok73,i32 9,i32 9)
	; LET _t6009A = alloc [ignore0096,6]
	%tok76 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g75)]
	%g77 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok76)
	%g78 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok76,i32 8,i32 8)
	%n79 = ptrtoint ptr addrspace(1) %g77 to i64
	%p80 = inttoptr i64 %n79 to ptr
	%p81 = getelementptr i64, ptr %p80, i32 0
	store ptr addrspace(1) %g78, ptr %p81
	%n82 = ptrtoint ptr addrspace(1) %g77 to i64
	%p83 = inttoptr i64 %n82 to ptr
	%p84 = getelementptr i64, ptr %p83, i32 1
	store i64 13, ptr %p84
	; LET _t5009B = apply $repeat_code0091 (_t6009A)
	%tok85 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1))) @repeat_code,
		i32 1,i32 0,
		ptr addrspace(1) %g77,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g78, ptr addrspace(1) %g77)]
	%n86 = call i64 @llvm.experimental.gc.result.i64(token %tok85)
	%g87 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok85,i32 8,i32 8)
	%g88 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok85,i32 9,i32 9)
	; LET un009C = apply $ignore_code0093 (ignore0096,_t5009B)
	%g89 = inttoptr i64 %n86 to ptr addrspace(1)
	%tok90 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),ptr addrspace(1))) @ignore_code,
		i32 2,i32 0,
		ptr addrspace(1) %g87, ptr addrspace(1) %g89,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g87)]
	%n91 = call i64 @llvm.experimental.gc.result.i64(token %tok90)
	%g92 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok90,i32 9,i32 9)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)

declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
