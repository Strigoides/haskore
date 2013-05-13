import System.Environment
import System.Exit

main = do
    args <- getArgs
    if null args
       then do
           putStrLn "Not enough args"
           exitFailure
        else putStrLn $ reverse $ takeWhile (/= '/') $ reverse $ head args
