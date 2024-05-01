/* incorrect result type of case */

type T1 = A | B | C of Int

let x = case B of { A => 1 } { B => 2 } { C _ => "3" } end
