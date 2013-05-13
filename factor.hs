import Data.List
import System.Environment

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n = m : primeFactors (n `quot` m)
    where m = head $ dropWhile ((/= 0) . (n `mod`)) [2..n]

printFactors :: Int -> IO ()
printFactors n = do
    putStr   $ show n ++ ": "
    putStrLn $ unwords $ map show $ primeFactors n

main = do
    args  <- getArgs
    input <- getContents
    mapM_ (printFactors . read) $
        if null args
           then lines input
           else args
