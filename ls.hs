import System.Directory
import Data.List

-- List all files in the current directory
main = do
		listing <- getDirectoryContents "."
		putStrLn $ unwords $ sort $ filter ((/= '.') . head) listing
