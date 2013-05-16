import System.Directory
import System.Environment
import System.Exit
import Utils.Error

main = do
    args <- getArgs
    if length args < 2
       then errorMessage "Not enough args"
       else do
           let dest  = last args
           let files = init args
           isDir <- doesDirectoryExist dest
           if isDir
              then mapM_ (\s -> copyFile s (dest ++ "/" ++ s)) files
              else if length files == 1
                      then copyFile (head files) dest
                      else errorMessage $ dest ++ " is not a directory"
