fun fact n = if (n <= 1) then 1 else n * fact(n - 1)

fun ignore x = ()

do ignore (fact 5)
do ignore (fact 6)

