{-
ЗАДАНИЕ
Опишите функцию, которая для данного числа n создает 
список из всех попарных сумм чисел от 1 до n. 
( Т.е. [1+1, 1+2, 1+3, ..., 1+n, 2+1, 2+2, ..., n+n] - всего n*n элементов)
-}

genList :: Int -> [Int]
genList n = [x+y | x <- [1..n], y <- [1..n]]

main = print(length (genList 5), genList 5)