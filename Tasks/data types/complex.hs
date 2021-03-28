{-
ЗАДАНИЕ
1) Разработать тип данных Complex для представления комплексных чисел. Создать
селекторы для значений разработанного типа данных realPart и imagPart, которые
возвращают действительную и мнимую части комплексного числа соответственно.
Complex должен быть экземпляром классов типов Eq и Show.
2) Создать реализацию класса типов Num для типа данных Complex
-}

data Complex = Complex{realPart::Double, imagPart::Double} deriving (Eq, Show)

instance Num Complex where
    Complex r1 i1 + Complex r2 i2 = Complex (r1+r2) (i1+i2)
    Complex r1 i1 - Complex r2 i2 = Complex (r1-r2) (i1-i2)
    Complex r1 i1 * Complex r2 i2 = Complex (r1*r2 - i1*i2) (r1*i2 + r2*i1)
    negate (Complex r i) = Complex (negate r) (negate i)
    abs (Complex r i) = Complex (sqrt(r*r + i*i)) 0
    signum (Complex 0 0) = 0
    signum (Complex r i) = Complex (r / realPart (abs (Complex r i))) (i / realPart (abs (Complex r i)))
    fromInteger n = Complex (fromInteger n) 0

main = print(
    realPart (Complex 5 4), 
    Complex 1.3 4 == Complex 1.3 4, 
    Complex 1 0 == Complex 0 1,
    Complex 1.3 2 + Complex 5 1,
    Complex 1 2 * Complex 2 1,
    Complex 1 2 - Complex 2 1,
    negate (Complex 1 2),
    abs (Complex 2 1),
    signum (Complex 0 0),
    signum (Complex 1 1),
    fromInteger 5
    )

{-
res:
(5.0,True,False,Complex {realPart = 6.3, imagPart = 3.0},Complex {realPart = 0.0, imagPart = 5.0},Complex {realPart = -1.0, imagPart = 1.0},Complex {realPart = -1.0, imagPart = -2.0},Complex {realPart = 2.23606797749979, imagPart = 0.0},Complex {realPart = 0.0, imagPart = 0.0},Complex {realPart = 0.7071067811865475, imagPart = 0.7071067811865475},5)
[Finished in 0.4s]
-}
