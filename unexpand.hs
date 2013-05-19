import Data.List

spaceToTab :: String -> String
spaceToTab ""                = ""
spaceToTab s@(x:xs)
    | isPrefixOf "        " s = '\t' : spaceToTab (drop 8 s)
    | otherwise               = x : spaceToTab xs

main = putStr . spaceToTab =<< getContents
