fun repeat (f, n) = {
      fun lp i = if (i < n) then {do f i in lp(i+1) } else ()
      in lp 0
   }

fun ignore x = ()

do ignore (repeat (ignore, 5))
do ignore (repeat (ignore, 6))

