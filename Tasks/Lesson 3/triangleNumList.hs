{-
ЗАДАНИЕ
Список треугольных чисел
-}

triangularNum :: Int -> Int
triangularNum n = n * (n + 1) `div` 2

triangularNumList = map triangularNum [0..]

main = print(take 15 triangularNumList)

{-
res:
[0,1,3,6,10,15,21,28,36,45,55,66,78,91,105]
-}