{-
ЗАДАНИЕ
Напишите рекурсивную функцию, проверяющую балансировку 
скобок в строке (Как вы должны помнить, строки в Haskell - это список символов [Char]).

Например, для следующих строк функция должна вернуть True:
(if (zero? x) max (/ 1 x))
I told him (that it’s not (yet) done). (But he wasn’t listening)

А для строк ниже, напротив, функция должна вернуть значение False:
:-)
())(

Последний пример демонстрирует: недостаточно проверить только, 
что строка содержит равное количество открывающих и закрывающих скобок.

balance :: String → Bool -- функция из строки в логическое значение
-}

balance :: String -> Bool
balance [] = True
balance str = 
    let 
        isBalanced ( '(':ys ) n = isBalanced ys (n+1)
        isBalanced (')':ys) n | n > 0 = isBalanced ys (n-1)
        isBalanced (')':ys) n | n < 1 = False
        isBalanced (_:ys) n           = isBalanced ys n
        isBalanced [] 0               = True
        isBalanced [] _               = False
    in
        isBalanced str 0

main = print(balance "())(", balance "(if (zero? x) max (/ 1 x))")

{-
res:
(False,True)
-}