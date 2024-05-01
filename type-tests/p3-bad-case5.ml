/* incorrect case: nullary constructor `A` has an argument */

type T1 = A | B | C of Int Bool

let x = case B of { A x => 1 } { B => 2 } { C a b => a } end
