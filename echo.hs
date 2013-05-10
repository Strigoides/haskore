import System (getArgs)
import Control.Monad

-- Echo argv to stdout
main = putStrLn . unwords =<< getArgs
