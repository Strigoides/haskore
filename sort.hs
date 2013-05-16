import Data.List

main = mapM_ putStrLn . sort . lines =<< getContents
