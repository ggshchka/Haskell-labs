{-
ЗАДАНИЕ
concat [[1,2],[3,4,5],[6]] = [1,2,3,4,5,6]
concat = foldr (++) [] - конкатенация списка списков
foldr – функция свёртки, следующая лекция
-}

foldrq h u [] = u
foldrq h u (x:xs) = h x (foldrq h u xs)

concatq = foldrq (++) []

main = print(concatq [[1,2],[3,4,5],[6]])

{-
res:

-}