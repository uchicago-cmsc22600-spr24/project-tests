/* id.ml */

fun id x = x

let n = id id id 42

do if (n == 42) then print "Ok\n" else print "Fail\n"
