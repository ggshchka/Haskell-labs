{-
Напишите выражение, высчитывающее минимальное число среди 10, 2, 5, -1, 99
-}

minFunc :: [Int]->Int
minFunc [] = 0
minFunc [x] = x
minFunc (x:y:xs) 
    | x > y = minFunc (y:xs)
    | x <= y = minFunc (x:xs)
    
main = print(minFunc [10, 2, 5, -1, 99])

