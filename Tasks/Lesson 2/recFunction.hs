{-
РЕКУРСИЯ
Наибольший общий делитель: gcd
-}

gcd' :: Int -> Int -> Int
gcd' x 0 = abs x
gcd' x y = gcd' b (mod a b)
    where a = abs x
          b = abs y


main = print(gcd' 2 0)