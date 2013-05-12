import System (getArgs)
import System.IO

-- Read the first n lines of a file or stdin
main = do
    args <- getArgs
    input <- if args == []
                then getContents
                else readFile $ head args
    mapM_ putStrLn $ take 10 $ lines input
