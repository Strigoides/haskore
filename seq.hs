import System.Environment
import System.Exit

main = do
	args <- getArgs
	let len = length args in
		if len > 2 || len == 0
			then do
				putStrLn "Wrong number of args"
				exitWith $ ExitFailure 1
			else mapM_ print $
				if len == 1
					then [1.. read $ head args]
					else [read $ head args .. read $ args !! 1]
