{-
ЗАДАНИЕ
set — функция, возвращающая список из всех атомов, 
содержащихся в заданном списке. 
Каждый атом должен присутствовать в результирующем списке в 
единственном числе.

-}

isContained el [] = False
isContained el (x:xs)
    | el == x = True
    | otherwise = isContained el xs

set :: (Eq a) => [a] -> [a] ->[a]
set [] _ = []
set _ [] = []
set (y:ys) list
    | isContained y list = y : set ys list
    | otherwise = set ys list


main = print(set [5,2,1,6,9,4] [6,4,8,3,3,5,7,3,2,3,4,5])

{-
res:
[5,2,6,4]
-}