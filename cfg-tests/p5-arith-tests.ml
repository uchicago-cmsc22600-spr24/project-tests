/* test basic arithmetic operations */

fun check (msg, result, expected) = {
   do print "test "
   do print msg
   in if (result == expected) then print " OK\n" else print " FAIL\n"
}

do check ("1+1", 1+1, 2)
do check ("1+2", 1+2, 3)
do check ("1-1", 1-1, 0)
do check ("1-2", 1-2, -1)
do check ("1*1", 1*1, 1)
do check ("12*4", 12*4, 48)
do check ("12/4", 12/4, 3)
do check ("12/5", 12/5, 2)
