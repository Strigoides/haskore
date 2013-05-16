module Utils.List ( unConcat ) where

unConcat :: Int -> [a] -> [[a]]
unConcat _ [] = []
unConcat n xs = x : unConcat n y
    where (x, y) = splitAt n xs
