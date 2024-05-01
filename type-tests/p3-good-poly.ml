/* polymorphic function */

fun id x = x

let a = id True
let b = id 42
let c = (id id) False
