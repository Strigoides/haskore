import System (getArgs)

-- Echo argv to stdout
main = do
	args <- getArgs
	putStrLn $ unwords args
