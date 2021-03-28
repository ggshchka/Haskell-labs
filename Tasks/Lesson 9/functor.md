

instance Functor Maybe where
   fmap f (Just x) = Just (f x)
   fmap _ Nothing  = Nothing

Доказать, что
1) fmap (f . g) = fmap f . fmap g
2) fmap (f . g) F = fmap f (fmap g F)

-----------------------------------

1) 
(fmap f . fmap g) (Just x) =
fmap f (fmap g (Just x)) = 
fmap f (Just(g x)) = 
Just (f (g x))

fmap (f . g) (Just x) =
Just ((f . g) x) =
Just (f (g x))

След-но, fmap (f . g) = (fmap f . fmap g)
Для Nothing - аналогично.

-----------------------------------

2) 
fmap (f . g) (Just x) = 
fmap (\y -> f (g y)) (Just x) =
fmap f (fmap (g (Just x)))



