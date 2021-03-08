{-
ЗАДАНИЕ
reverseAll — функция, получающая на вход списочную структуру и 
обращающая все её элементы, а также её саму.
-}

firstElem :: (Eq a) => a -> [a] -> Maybe Int
firstElem el list= firstElem' el list 0
    where
        firstElem' a [] n = Nothing
        firstElem' a (x:xs) n
            | a == x = Just n
            | otherwise = firstElem' a xs (n+1)

main = print(firstElem 6 [1,4,4,6,7,6], firstElem 2 [1,1,1,8,3,3])


{-
res:
(Just 3,Nothing)
-}