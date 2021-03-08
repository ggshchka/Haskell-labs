{-
ЗАДАНИЕ
Функция substitute :: Char -> Char -> String -> String, 
которая заменяет в строке указанный символ на заданный. 
Пример: substitute ’e’ ’i’ "eigenvalue" возвращает "iiginvalui"
-}

substitute :: Char -> Char -> String -> String
substitute _ _ [] = []
substitute fromC toC (x:xs)
    | fromC == toC = x : xs
    | fromC == x = toC : (substitute fromC toC xs)
    | otherwise = x : (substitute fromC toC xs)


main = putStrLn (substitute 'e' 'i' "eigenvalue")

{-
res:
iiginvalui
-}