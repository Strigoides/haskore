module Utils.Error ( errorMessage ) where

import System.Exit

errorMessage :: String -> IO ()
errorMessage e = putStrLn e >> exitFailure
