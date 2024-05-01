/* incorrect case: `C` has too many arguments */

type T1 = A | B | C of Int Bool

let x = case B of { A => 1 } { B => 2 } { C a b c => a } end
