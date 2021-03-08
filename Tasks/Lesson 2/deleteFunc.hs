{-
	Функция delete :: Char -> String -> String, 
	которая принимает на вход строку и символ и возвращает строку, 
	в которой удалены все вхождения символа. 
	Пример: delete ’l’ "Hello world!" должно возвращать "Heo word!".
-}

deleteF :: Char -> String -> String
deleteF _ [] = []
deleteF c (x:xs)
    | c == x = deleteF c xs
    | otherwise = x : (deleteF c xs)

main = putStrLn (deleteF 'l' "Hello world!")

{-
res: 
Heo word!
-}