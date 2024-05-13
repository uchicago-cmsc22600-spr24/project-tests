type T = A | B | C | F of Int | G of String

fun f (x, y) = case x of
   { A => 1 }
   { B => 2 }
   { F z => z }
   { w => y }
   end

