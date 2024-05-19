define fastcc i64 @f_code(ptr addrspace(1) %tpl1) gc "statepoint-example" {
entry_009B:
	; LET x0080 = #0(tpl007F)
	%n2 = ptrtoint ptr addrspace(1) %tpl1 to i64
	%p3 = inttoptr i64 %n2 to ptr
	%p4 = getelementptr ptr, ptr %p3, i32 0
	%p5 = load ptr, ptr %p4
	; LET y0081 = #1(tpl007F)
	%n6 = ptrtoint ptr addrspace(1) %tpl1 to i64
	%p7 = inttoptr i64 %n6 to ptr
	%p8 = getelementptr ptr, ptr %p7, i32 1
	%p9 = load ptr, ptr %p8
	; IF Boxed(x0080)
	%n10 = ptrtoint ptr %p5 to i64
	%g11 = inttoptr i64 %n10 to ptr addrspace(1)
	%n13 = ptrtoint ptr addrspace(1) %g11 to i64
	%n12 = and i64 %n13, 1
	%b14 = icmp eq i64 %n12, 0
	%n15 = ptrtoint ptr %p5 to i64
	%g16 = inttoptr i64 %n15 to ptr addrspace(1)
	%n17 = ptrtoint ptr %p9 to i64
	%n30 = ptrtoint ptr %p5 to i64
	%g31 = inttoptr i64 %n30 to ptr addrspace(1)
	%n32 = ptrtoint ptr %p9 to i64
	br i1 %b14, label %boxed_009C, label %unboxed_009F
boxed_009C:
	; LET tag009A = #0(x0092)
	%n18 = ptrtoint ptr addrspace(1) %g16 to i64
	%p19 = inttoptr i64 %n18 to ptr
	%p20 = getelementptr ptr, ptr %p19, i32 0
	%p21 = load ptr, ptr %p20
	; IF IntEq(0, tag009A)
	%n23 = ptrtoint ptr %p21 to i64
	%b22 = icmp eq i64 1, %n23
	br i1 %b22, label %tlab_009E, label %flab_009D
flab_009D:
	br label %dflt_00A4
tlab_009E:
	; LET z0099 = #1(x0095)
	%n24 = ptrtoint ptr addrspace(1) %g16 to i64
	%p25 = inttoptr i64 %n24 to ptr
	%p26 = getelementptr ptr, ptr %p25, i32 1
	%p27 = load ptr, ptr %p26
	%n28 = ptrtoint ptr %p27 to i64
	ret i64 %n28
unboxed_009F:
	; IF IntEq(0, x0085)
	%n34 = ptrtoint ptr addrspace(1) %g31 to i64
	%b33 = icmp eq i64 1, %n34
	br i1 %b33, label %tlab_00A3, label %flab_00A0
flab_00A0:
	; IF IntEq(1, x008A)
	%n36 = ptrtoint ptr addrspace(1) %g31 to i64
	%b35 = icmp eq i64 3, %n36
	br i1 %b35, label %tlab_00A2, label %flab_00A1
flab_00A1:
	br label %dflt_00A4
tlab_00A2:
	ret i64 5
tlab_00A3:
	ret i64 3
dflt_00A4:
	%y29 = phi i64 [ %n32, %flab_00A1 ], [ %n17, %flab_009D ]
	ret i64 %y29
}

define i64 @_mml_entry(ptr addrspace(1) %arguments37) gc "statepoint-example" {
entry_00A5:
	ret i64 1
}


declare ptr addrspace(1) @_mml_alloc(i64)
declare ptr addrspace(1) @_mml_concat(ptr addrspace(1),ptr addrspace(1))
declare void @_mml_exit(i64)
declare void @_mml_fail(ptr addrspace(1))
declare void @_mml_print(ptr addrspace(1))
declare ptr addrspace(1) @_mml_str_chr(i64)

