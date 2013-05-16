main = do
    input <- getContents
    let l = length $ lines input
    let w = length $ words input
    let c = length         input

    putStrLn $ unwords $ map show [l,w,c]
