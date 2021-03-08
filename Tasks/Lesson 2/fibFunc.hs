{-
САМОСТОЯТЕЛЬНАЯ РАБОТА
Числа Фибоначчи
-}

fib :: (Eq p, Num p) => p -> p
fib 0 = 0  
fib 1 = 1  
fib n = fib (n-1) + fib (n-2)

fibTailRec' a b 1 = a
fibTailRec' a b n = fibTailRec' b (a+b) (n-1)
fibTailRec n = fibTailRec' 1 1 n

main = print(fib 10, fibTailRec 10)


{-
res:
(55,55)
-}