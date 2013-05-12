import Data.List
import System.Environment

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = m : primeFactors (n `quot` m)
    where m = head $ dropWhile ((/= 0) . (n `mod`)) [2..n]

printFactors :: Int -> IO ()
printFactors n = do
    putStr   $ show n ++ ": "
    putStrLn $ intercalate " " $ map show $ primeFactors n

main = do
    args <- getArgs
    if null args
        then putStrLn "Invalid number of arguments"
        else mapM_ (printFactors . read) args
