define fastcc i64 @loop_code(ptr addrspace(1) %loop1,i64 %i2) gc "statepoint-example" {
entry_00B5:
	br label %loop_code0090_hdr_00B6
loop_code0090_hdr_00B6:
	%loop3 = phi ptr addrspace(1) [ %g14, %then_00B8 ], [ %loop1, %entry_00B5 ]
	%i4 = phi i64 [ %n15, %then_00B8 ], [ %i2, %entry_00B5 ]
	; LET n00AE = #0(loop00AC)
	%n5 = ptrtoint ptr addrspace(1) %loop3 to i64
	%p6 = inttoptr i64 %n5 to ptr
	%p7 = getelementptr ptr, ptr %p6, i32 0
	%p8 = load ptr, ptr %p7
	; IF IntLt(i00AD, n00AE)
	%n10 = ptrtoint ptr %p8 to i64
	%b9 = icmp slt i64 %i4, %n10
	br i1 %b9, label %then_00B8, label %else_00B7
else_00B7:
	ret i64 1
then_00B8:
	; LET un00B2 = call _mml_print (" cruel")
	%n11 = ptrtoint ptr @_slit_0 to i64
	%g12 = inttoptr i64 %n11 to ptr addrspace(1)
	%tok13 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g12,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %loop3)]
	%g14 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok13,i32 8,i32 8)
	; LET _t300B3 = IntAdd (i00B0,1)
	%n15 = add i64 %i4, 2
	br label %loop_code0090_hdr_00B6
}

define fastcc i64 @f_code(ptr addrspace(1) %f16,i64 %n17) gc "statepoint-example" {
entry_00B9:
	; LET goodbye00A0 = #0(f009E)
	%n18 = ptrtoint ptr addrspace(1) %f16 to i64
	%p19 = inttoptr i64 %n18 to ptr
	%p20 = getelementptr ptr, ptr %p19, i32 0
	%p21 = load ptr, ptr %p20
	; LET world00A1 = #1(f009E)
	%n22 = ptrtoint ptr addrspace(1) %f16 to i64
	%p23 = inttoptr i64 %n22 to ptr
	%p24 = getelementptr ptr, ptr %p23, i32 1
	%p25 = load ptr, ptr %p24
	; LET loop00A2 = alloc [n009F]
	%tok26 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 1,
		i32 0,i32 0)
	%g27 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok26)
	%n28 = ptrtoint ptr addrspace(1) %g27 to i64
	%p29 = inttoptr i64 %n28 to ptr
	%p30 = getelementptr i64, ptr %p29, i32 0
	store i64 %n17, ptr %p30
	; LET _t500A3 = call _mml_concat (goodbye00A0,",")
	%n31 = ptrtoint ptr %p21 to i64
	%g32 = inttoptr i64 %n31 to ptr addrspace(1)
	%n33 = ptrtoint ptr @_slit_1 to i64
	%g34 = inttoptr i64 %n33 to ptr addrspace(1)
	%tok35 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g32, ptr addrspace(1) %g34,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g27)]
	%g36 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok35)
	%g37 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok35,i32 9,i32 9)
	; LET un00A4 = call _mml_print (_t500A3)
	%tok38 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g36,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g37, ptr addrspace(1) %g36)]
	%g39 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok38,i32 8,i32 8)
	%g40 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok38,i32 9,i32 9)
	; LET un00A5 = apply $loop_code0095 (loop00A2,0)
	%tok41 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) @loop_code,
		i32 2,i32 0,
		ptr addrspace(1) %g39, i64 1,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g39)]
	%n42 = call i64 @llvm.experimental.gc.result.i64(token %tok41)
	%g43 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok41,i32 9,i32 9)
	; LET _t700A6 = call _mml_concat (world00A1,"!\n")
	%n44 = ptrtoint ptr %p25 to i64
	%g45 = inttoptr i64 %n44 to ptr addrspace(1)
	%n46 = ptrtoint ptr @_slit_2 to i64
	%g47 = inttoptr i64 %n46 to ptr addrspace(1)
	%tok48 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g45, ptr addrspace(1) %g47,
		i32 0,i32 0)
	%g49 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok48)
	; LET _t600A7 = call _mml_concat (" ",_t700A6)
	%n50 = ptrtoint ptr @_slit_3 to i64
	%g51 = inttoptr i64 %n50 to ptr addrspace(1)
	%tok52 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g51, ptr addrspace(1) %g49,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g49)]
	%g53 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok52)
	%g54 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok52,i32 9,i32 9)
	; LET _t800A8 = call _mml_print (_t600A7)
	%tok55 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g53,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g53)]
	%g56 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok55,i32 8,i32 8)
	ret i64 1
}

define i64 @_mml_entry(ptr addrspace(1) %arguments57) gc "statepoint-example" {
entry_00BA:
	; LET _t20098 = call _mml_concat ("world","!\n")
	%n58 = ptrtoint ptr @_slit_4 to i64
	%g59 = inttoptr i64 %n58 to ptr addrspace(1)
	%n60 = ptrtoint ptr @_slit_2 to i64
	%g61 = inttoptr i64 %n60 to ptr addrspace(1)
	%tok62 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g59, ptr addrspace(1) %g61,
		i32 0,i32 0)
	%g63 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok62)
	; LET _t10099 = call _mml_concat (", ",_t20098)
	%n64 = ptrtoint ptr @_slit_5 to i64
	%g65 = inttoptr i64 %n64 to ptr addrspace(1)
	%tok66 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g65, ptr addrspace(1) %g63,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g63)]
	%g67 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok66)
	%g68 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok66,i32 9,i32 9)
	; LET _t0009A = call _mml_concat ("Hello",_t10099)
	%n69 = ptrtoint ptr @_slit_6 to i64
	%g70 = inttoptr i64 %n69 to ptr addrspace(1)
	%tok71 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (ptr addrspace(1),ptr addrspace(1))) @_mml_concat,
		i32 2,i32 0,
		ptr addrspace(1) %g70, ptr addrspace(1) %g67,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g67)]
	%g72 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok71)
	%g73 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok71,i32 9,i32 9)
	; LET _009B = call _mml_print (_t0009A)
	%tok74 = call token (i64,i32,void ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(void (ptr addrspace(1))) @_mml_print,
		i32 1,i32 0,
		ptr addrspace(1) %g72,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g72)]
	%g75 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok74,i32 8,i32 8)
	; LET f009C = alloc ["Goodbye","world"]
	%tok76 = call token (i64,i32,ptr addrspace(1) ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(ptr addrspace(1) (i64)) @_mml_alloc,
		i32 1,i32 0,
		i64 2,
		i32 0,i32 0)
	%g77 = call ptr addrspace(1) @llvm.experimental.gc.result.p1(token %tok76)
	%n78 = ptrtoint ptr addrspace(1) %g77 to i64
	%p79 = inttoptr i64 %n78 to ptr
	%p80 = getelementptr i64, ptr %p79, i32 0
	store ptr @_slit_7, ptr %p80
	%n81 = ptrtoint ptr addrspace(1) %g77 to i64
	%p82 = inttoptr i64 %n81 to ptr
	%p83 = getelementptr i64, ptr %p82, i32 1
	store ptr @_slit_4, ptr %p83
	; LET un009D = apply $f_code0094 (f009C,5)
	%tok84 = call token (i64,i32,i64 ()*,i32,i32,...) @llvm.experimental.gc.statepoint.p0(
		i64 0,i32 0,
		ptr elementtype(i64 (ptr addrspace(1),i64)) @f_code,
		i32 2,i32 0,
		ptr addrspace(1) %g77, i64 11,
		i32 0,i32 0)
		["gc-statepoint" (ptr addrspace(1) %g77)]
	%n85 = call i64 @llvm.experimental.gc.result.i64(token %tok84)
	%g86 = call ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token %tok84,i32 9,i32 9)
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)
@_slit_0 = global [2 x i64] [
	i64 13,
	i64 119183017927456
]

@_slit_1 = global [2 x i64] [
	i64 3,
	i64 44
]

@_slit_2 = global [2 x i64] [
	i64 5,
	i64 2593
]

@_slit_3 = global [2 x i64] [
	i64 3,
	i64 32
]

@_slit_4 = global [2 x i64] [
	i64 11,
	i64 431316168567
]

@_slit_5 = global [2 x i64] [
	i64 5,
	i64 8236
]

@_slit_6 = global [2 x i64] [
	i64 11,
	i64 478560413000
]

@_slit_7 = global [2 x i64] [
	i64 15,
	i64 28562436146556743
]


declare i64 @llvm.experimental.gc.result.i64(token)
declare token @llvm.experimental.gc.statepoint.p0(i64,i32,ptr,i32,i32,...)
declare ptr addrspace(1) @llvm.experimental.gc.result.p1(token)
declare ptr addrspace(1) @llvm.experimental.gc.relocate.p1(token,i32,i32)
