{-
САМОСТОЯТЕЛЬНАЯ РАБОТА
Обращение списка
-}

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

reverseTailRec' list =
    let
        reverse'' [] acc = acc
        reverse'' (x:xs) acc = reverse'' xs (x:acc)
    in
        reverse'' list []

main = print(reverse' [1,2,3,4,3,5], reverseTailRec' [1,2,3,4,3,5])
{-
res:
([5,3,4,3,2,1],[5,3,4,3,2,1])
-}