import System.Environment
import Control.Monad

main = do
    args <- getArgs
    if null args
       then putStr =<< getContents
       else mapM_ (readFile >=> putStr) args
