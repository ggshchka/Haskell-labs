{-
ЗАДАНИЕ

-}


fmap' f mx = mx >>= (return . f)
pure'      = return
ap' mf mx  = mf >>= \f -> mx >>= return.f


{-
res:

-}


