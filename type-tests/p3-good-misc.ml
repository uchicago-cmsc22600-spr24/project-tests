/* functions */

fun fst (a, _) = a
fun snd x = case x of { (_, b) => b } end

let a = fst (42, "42")

let b = fst (snd (True, (0, 1)))
