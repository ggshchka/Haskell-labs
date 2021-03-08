import Control.Monad
import qualified Data.ByteString.Char8 as C

pascal :: Int -> Int -> Int
pascal c r 
    | (c < 0) || (r < 0) = error "args should be a positive"
    | c == 0 = 1
    | c > r = 0
    | otherwise = (pascal c (r - 1)) + (pascal (c - 1) (r - 1))

printIt :: Int -> C.ByteString
printIt n = C.pack $ show $ [pascal y x | x <- [0..n], y <- [0..x]]

printItIo :: Int -> IO ()
printItIo n = mapM_ print [[pascal y x | y <- [0..x]] | x <- [0..n]]

main = printItIo 12