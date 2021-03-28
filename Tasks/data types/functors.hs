{-
ЗАДАНИЕ

module Fun where
	newtype Fun a b = Fun {getFun :: a -> b}
 	
 	instance Functor (Fun a) where
 		fmap = ???
 	
 	instance Applicative (Fun a) where
 		pure = ???
 		(<*>) = ???
Определить экземпляры классов типов Functor и Applicative для типа данных Fun.
-}

{-http://learnyouahaskell.com/functors-applicative-functors-and-monoids-}

module Fun where
newtype Fun a b = Fun {getFun :: a -> b}


instance Functor (Fun a) where
    --fmap g (Fun a) = Fun (\x -> g (a x)) 
    fmap g (Fun a) = Fun(g . a)


instance Applicative (Fun a) where
    pure a = Fun(\x -> a)

    (Fun a) <*> ab = Fun(\x -> a x ((getFun ab) x))

{-
res:

-}