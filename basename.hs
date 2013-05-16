import System.Environment
import System.Exit
import Utils.Error

main = do
    args <- getArgs
    if null args
       then errorMessage "Not enough args"
        else putStrLn $ reverse $ takeWhile (/= '/') $ reverse $ head args
