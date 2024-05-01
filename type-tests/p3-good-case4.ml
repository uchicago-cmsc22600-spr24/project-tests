/* case expression with type constructor pattern with wild sub-pattern */
type Option [a]
  = NONE
  | SOME of a

let _ = case NONE of { NONE => 0} {SOME _ => 1} end
