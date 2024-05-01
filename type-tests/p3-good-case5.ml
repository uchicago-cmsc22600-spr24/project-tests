/* case expression with type constructor pattern with variable sub-pattern */
type Option [a]
  = NONE
  | SOME of a

let _ = case NONE of { NONE => 0} {SOME z => 1} end
