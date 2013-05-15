import Text.Printf

main = getContents >>=
    mapM_ putStrLn . zipWith (printf "%6d  %s") [(1::Int)..] . lines
