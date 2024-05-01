/* incorrect case */

type T1 = A | B | C of Int
type T2 = X | Y | Z

let x = case B of { A => 1 } { B => 2 } { X => 3 } { _ => 4 } end
