import Utils.List

main = mapM_ (mapM_ putStrLn . unConcat 80) . lines =<< getContents
