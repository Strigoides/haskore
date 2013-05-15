import System.Directory
import Data.List

main = putStrLn . unwords . sort .
    filter ((/= '.') . head) =<< getDirectoryContents "."
