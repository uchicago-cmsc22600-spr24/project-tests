/* function decl with list-cons pattern */
fun map f l =
  case l of
  { Nil => Nil }
  { Cons h t => Cons (f h) (map f t) }
  end

fun inc x = x + 1

let _ = map inc (Cons 1 (Cons 2 Nil))
