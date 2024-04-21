/* goodbye-world.ml */

let hello = "Hello"
let goodbye = "Goodbye"
let world = "world"

let _ = print (concat(hello, concat(", ", concat(world, "!\n"))))

fun f n = {
    fun loop i =
	  if i < n then {do print " cruel" in loop (i + 1)}
	  else ()
    do print (concat(goodbye, ","))
    do loop 0
    in print (concat(" ", concat(world, "!\n")))
  }

do f 5
