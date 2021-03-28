{-
ЗАДАНИЕ
Числа Фиббоначе, бесконечный список
[1, 1, 2, 3, 5, 8, 13, ...]
-}

fib' a b 1 = a
fib' a b n = fib' b (a+b) (n-1)
fib :: (Eq p, Num p) => p -> p
fib n = fib' 1 1 n

fibList = map fib [1..]

main = print(take 15 fibList)

{-
res:
[1,1,2,3,5,8,13,21,34,55,89,144,233,377,610]
-}







