import Control.Concurrent
import System.Environment

main = threadDelay . (* 1000000) . sum . map read =<< getArgs
