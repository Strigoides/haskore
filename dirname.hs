import System.Environment
import System.Exit
import Utils.Error

main = do
    args <- getArgs
    if null args
       then errorMessage "Not enough args"
        else let x = dropWhile (/= '/') $ reverse $ head args in
                 putStrLn $
                     if null x
                        then "."
                        else reverse $ tail x
