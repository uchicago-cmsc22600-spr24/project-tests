/* type constructor expression */

type MyList [a]
  = NIL
  | CONS of a * MyList [a]

let _ = CONS (42, NIL)
