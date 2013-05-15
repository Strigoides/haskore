wrapTo :: Int -> [a] -> [[a]]
wrapTo _ [] = []
wrapTo n xs = a : wrapTo n b
    where (a, b) = splitAt n xs

main = do
    mapM_ ((mapM_ putStrLn) . wrapTo 80) . lines =<< getContents
