/* type constructor expression */

type MyList [a]
  = NIL
  | CONS of a * MyList [a]

let _ = NIL
