{-
ЗАДАНИЕ
Список пирамидальных чисел
(Квадратное пирамидальное число)
-}

pyramidalNum :: Int -> Int
pyramidalNum n = n * (n + 1) * (2*n + 1) `div` 6

pyramidalNumList = map pyramidalNum [1..]

main = print (take 20 pyramidalNumList)

{-
res:
[1,5,14,30,55,91,140,204,285,385,506,650,819,1015,1240,1496,1785,2109,2470,2870]
-}