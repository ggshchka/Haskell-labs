{-
ЗАДАНИЕ

-}



instance Functor (Either a) where
    fmap f (Right x) = Right (f x)
    fmap _ l = l

instance Applicative (Either a) where
    pure = Right
    (Right x) <*> f = fmap x f
    l <*> _ = l

{-
res:

-}