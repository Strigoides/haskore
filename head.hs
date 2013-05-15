import System.Environment
import System.IO

main = do
    args <- getArgs
    mapM_ putStrLn . take 10 . lines =<<
        if null args
           then getContents
           else readFile $ head args
