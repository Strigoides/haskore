import System.Environment
import System.Exit

main = do
    args <- getArgs
    if null args
       then do
           putStrLn "Not enough args"
           exitFailure
        else let x = dropWhile (/= '/') $ reverse $ head args in
                 putStrLn $
                     if null x
                        then "."
                        else reverse $ tail x
