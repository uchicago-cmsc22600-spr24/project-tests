/* type constructor expression */

type Tree[a]
  = Leaf
  | Node of a Tree[a] Tree[a]

let t = Node 0  Leaf  Leaf
