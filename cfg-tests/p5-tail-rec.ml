fun f n = {
   fun lp x = if (x < 0) then x else lp (x-n)
   in lp
}
fun ignore x = ()
do ignore (f 42)
do ignore (f 17)

