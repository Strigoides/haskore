import System (getArgs)

main = do
    args <- getArgs
    mapM_ putStrLn $ repeat $
        if args == []
            then "y"
            else unwords args
