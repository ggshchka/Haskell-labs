{-
ЗАДАНИЕ
freq — функция, возвращающая список пар (символ, частота). 
Каждая пара определяет атом из заданного списка и 
частоту его вхождения в этот список.
-}

freqEl el [] n = n
freqEl el (y:ys) n
    | el == y = freqEl el ys (n+1)
    | otherwise = freqEl el ys n

deleteF :: (Eq a) => a -> [a] -> [a]
deleteF _ [] = []
deleteF c (x:xs)
    | c == x = deleteF c xs
    | otherwise = x : (deleteF c xs)


freq :: (Eq a) => [a] -> [(a, Int)]
freq [] = []
freq (x:xs) = (x, freqEl x (x:xs) 0) : freq(deleteF x (x:xs))



main = print(freq [2,3,5,3,5,3,3,3], freq "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")

{-
res:
(
[(2,1),(3,5),(5,2)],
[('L',1),('o',2),('r',3),('e',5),('m',5),(' ',11),('I',1),('p',4),('s',5),('u',3),('i',6),('l',1),('y',4),('d',3),('t',8),('x',1),('f',1),('h',1),('n',5),('g',2),('a',1),('.',1)]
)
-}