module Utils.Units ( toMicro ) where
import Data.Char
import Data.Maybe

units :: [(Char, Int)]
units = [('s',    1000000)
       , ('m',   60000000)
       , ('h',  360000000)
       , ('d', 8640000000)]

toMicro :: String -> Int
toMicro s = round $
    amount * fromIntegral (fromMaybe 1000000 $ lookup unit units)
      where unit   = last s
            amount = read $ if isDigit unit
                               then      s
                               else init s
