/* incomplete case (no rule for `C`) */

type T1 = A | B | C of Int

let x = case B of { A => 1 } { B => 2 } end
