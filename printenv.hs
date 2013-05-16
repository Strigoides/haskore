import System.Environment

main = mapM_ (putStrLn . uncurry ((++) . (++ "="))) =<< getEnvironment
