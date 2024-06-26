/* int-to-string.ml */

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

do print (concat(intToString 42, "\n"))
