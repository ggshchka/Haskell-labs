import Control.Monad
import qualified Data.ByteString.Char8 as C

pascal :: Int -> Int -> Int
pascal c r 
    | (c < 0) || (r < 0) = error "args should be a positive" --error "column should be greater than row"  
    | c == 0 = 1
    | c > r = 0
    | otherwise = (pascal c (r - 1)) + (pascal (c - 1) (r - 1))

printIt :: Int -> C.ByteString
printIt n = C.pack $ show $ [pascal y x | x <- [0..n], y <- [0..x]]

printItIo :: Int -> IO ()
printItIo n = mapM_ print [[pascal y x | y <- [0..x]] | x <- [0..n]]


main = printItIo 12


{- 
pascal 2 4 = pascal 2 3 + pascal 1 3 =
		   = (pascal 2 2 + pascal 1 2) + (pascal 1 2 + pascal 0 2) = 
		   = ((pascal 2 1 + pascal 1 1) + (pascal 1 1 + pascal 0 2)) + ((pascal 1 1 + pascal 0 2) + 1) = 
		   = ((0 + (pascal 1 0 + pascal 0 0)) + ((pascal 1 0 + pascal 0 0) + 1)) + (((pascal 1 0 + pascal 0 0) + 1) + 1) = 
		   = ((0 + (0 + 1)) + ((0+ 1) + 1)) + (((0 + 1) + 1) + 1) = 
		   = ((0 + 1) + (1 + 1)) + ((1 + 1) + 1) =
		   = (1 + 2) + (2 + 1) =
		   = (3 + 3) =
		   = 6

-}