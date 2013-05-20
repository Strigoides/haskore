import Data.Char
import Data.List
import Data.Maybe
import Numeric
import Utils.List

main = putStr . encode =<< getContents

b64Char  :: Int -> Char
b64Char  = fromJust . flip lookup
    (zip [0 ..25] ['A'..'Z'] ++
     zip [26..51] ['a'..'z'] ++
     zip [52..61] ['0'..'9'] ++
     zip [62..63] "+/")

intToBin :: Int -> String
intToBin  = flip (showIntAtBase 2 intToDigit) ""

pad      :: [Int] -> [Int]
pad xs
    | len == 8  = xs
    | otherwise = replicate (8 - (len `mod` 8)) 0 ++ xs
    where len = length xs

binList  :: String -> [Int]
binList   = concatMap (pad . map digitToInt . intToBin . ord)

binToDec :: [Int] -> Int
binToDec  = sum . map (2^) . elemIndices 1 . reverse

encode   :: String -> String
encode = map (b64Char . binToDec) . unConcat 6 . binList
