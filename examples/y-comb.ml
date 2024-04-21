/* the Y combinator; has type ((a -> b) -> a -> b) -> a -> b */
fun y f x = {
    fun g x = y f x
    in f g x
  }

do ()
