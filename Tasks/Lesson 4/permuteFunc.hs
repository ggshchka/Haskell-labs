{-
ЗАДАНИЕ
Функция permute, генерация списка всех перестановок списка
permute [1,2,3] = [[1,2,3],[1,3,2],…,[3,2,1]]
-}

deleteF :: Eq a => a -> [a] -> [a]
deleteF _ [] = []
deleteF c (x:xs)
    | c == x = deleteF c xs
    | otherwise = x : (deleteF c xs)

permute :: Eq a => [a] -> [[a]]
permute [] = [[]]
permute xs = [y | x <- xs, y <- map (x:) $ permute $ deleteF x xs]


main = print(permute [1,2,3])
{-
res:

-}