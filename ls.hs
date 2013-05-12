import System.Directory
import Data.List

-- List all files in the current directory
main = do
    list <- getDirectoryContents "."
    putStrLn $ unwords $ sort $ filter ((/= '.') . head) list
