Лабораторная работа 0. Треугольник Паскаля
==========

**Треугольник Паскаля** – бесконечная таблица биноминальных коэффициентов ([Wikipedia](https://ru.wikipedia.org/wiki/Треугольник_Паскаля)), имеющая треугольную форму.

![Alt Text](http://www.csun.edu/~hcmth008/matlab_tutorial/PascalTriangleAnimated2.gif)

**Задание 1**: Реализовать функцию *pascal c r* в файле lab0.hs. Здесь *c* – это номер столбца, а *r* – номер строки. Столбцы и строки отсчитываются начиная с нуля.

*Реализация:*
```haskell
pascal :: Int -> Int -> Int
pascal c r 
    | (c < 0) || (r < 0) = error "args should be a positive"
    | c == 0 = 1
    | c > r = 0
    | otherwise = (pascal c (r - 1)) + (pascal (c - 1) (r - 1))
```

```haskell
printIt :: Int -> C.ByteString
printIt n = C.pack $ show $ [pascal y x | x <- [0..n], y <- [0..x]]

printItIo :: Int -> IO ()
printItIo n = mapM_ print [[pascal y x | y <- [0..x]] | x <- [0..n]]
```

**Задание 2**: Вычислить значения:
1. printIt 5
2. printIt 20
3. printIt 100

*Результаты вычисления*:

Вывод первых 5 строк треугольника:
```haskell
main = printItIo 5
```

```
[1]
[1,1]
[1,2,1]
[1,3,3,1]
[1,4,6,4,1]
[1,5,10,10,5,1]
[Finished in 1.2s]
```

Вывод первых 20 строк треугольника:
```haskell
main = printItIo 20
```

```
[1]
[1,1]
[1,2,1]
[1,3,3,1]
[1,4,6,4,1]
[1,5,10,10,5,1]
[1,6,15,20,15,6,1]
[1,7,21,35,35,21,7,1]
[1,8,28,56,70,56,28,8,1]
[1,9,36,84,126,126,84,36,9,1]
[1,10,45,120,210,252,210,120,45,10,1]
[1,11,55,165,330,462,462,330,165,55,11,1]
[1,12,66,220,495,792,924,792,495,220,66,12,1]
[1,13,78,286,715,1287,1716,1716,1287,715,286,78,13,1]
[1,14,91,364,1001,2002,3003,3432,3003,2002,1001,364,91,14,1]
[1,15,105,455,1365,3003,5005,6435,6435,5005,3003,1365,455,105,15,1]
[1,16,120,560,1820,4368,8008,11440,12870,11440,8008,4368,1820,560,120,16,1]
[1,17,136,680,2380,6188,12376,19448,24310,24310,19448,12376,6188,2380,680,136,17,1]
[1,18,153,816,3060,8568,18564,31824,43758,48620,43758,31824,18564,8568,3060,816,153,18,1]
[1,19,171,969,3876,11628,27132,50388,75582,92378,92378,75582,50388,27132,11628,3876,969,171,19,1]
[1,20,190,1140,4845,15504,38760,77520,125970,167960,184756,167960,125970,77520,38760,15504,4845,1140,190,20,1]
[Finished in 18.6s]
```

Вывод первых 100 строк треугольника:
```haskell
main = printItIo 100
```

```
...
...
...
```

Так и не дождался результата. Вот почему:

Функция *printItIo n* - вызывает функцию *pascal* n\*n раз. Пусть *P* - это сокращение функции *pascal*. Рассмотрим пример вычисления *P 2 4*. При вычислении функции *P 2 4* будут вызваны процедуры вычисления *P 2 3*  и *P 1 3*. В свою очередь, для вычисления последних потребуется вычисление двух пар *P 2 2*, *P 1 2* и *P 1 2*, *P 0 2*. Можно нарисовать дерево рекурсивных вызовов.

<img align="center" height="300" src="./tree.png"/>

*P 1 2* вычисляется три раза, а *P 1 1* пять раз. Если рассмотреть вычисление *P c r* при больших c и r, то повторных вычислений будет очень много.

Оценим сложность вычисления функции *pascal*.

Так как при вызове *P c r* вызываются функции *P c (r-1)* и *P (c-1) (r-1)*, то можно получить следующее рекурентное соотношение: T(c, r) = T(c, r-1) + T(c-1, r-1). На каждом шаге r уменьшается на 1, а количество вызовов увеличивается вдвое. Следовательно, верхняя граница количества вызовов равна 2<sup>r</sup>. Таким образом, временная сложность вычисления функции *pascal* равна T(2<sup>r</sup>).


