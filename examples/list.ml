/* list.ml */

fun intToString i =
   if i < 0 then concat("-", (intToString (- i)))
   else if i == 0 then "0"
   else if i == 1 then "1"
   else if i == 2 then "2"
   else if i == 3 then "3"
   else if i == 4 then "4"
   else if i == 5 then "5"
   else if i == 6 then "6"
   else if i == 7 then "7"
   else if i == 8 then "8"
   else if i == 9 then "9"
   else concat(intToString (i / 10), intToString (i % 10))

fun foldl f b l =
  case l of
    { Nil => b }
    { Cons hd tl => foldl f (f hd b) tl }
  end

fun rev xs = {
    fun cons hd tl = Cons hd tl
    in foldl cons Nil xs
  }

fun tabulate (n, f) = {
    fun loop (i, acc) =
       if i <= n
         then loop (i + 1, Cons (f i) acc)
         else rev acc
    in
      if n < 0
        then fail "tabulate: n < 0"
        else loop (0, Nil)
  }

let n = 4999
let sum_n = {
    fun f x y = x + y
    fun g i = i
    in foldl f 0 (tabulate (n, g))
  }

do print "foldl \n"
do print "      (fn x y => x + y)\n"
do print "      0 (tabulate ("
do print (intToString n)
do print ", (fn i => i))) = "
do print (intToString sum_n)
do print "\n"
