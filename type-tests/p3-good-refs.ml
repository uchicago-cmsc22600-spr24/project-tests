/* references */

let x = newRef 0
fun inc r = (r := !r + 1)
do inc x
do inc x

let y = !x
