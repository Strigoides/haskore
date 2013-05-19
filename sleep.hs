import Control.Concurrent
import System.Environment
import Utils.Units

main = threadDelay . sum . map toMicro =<< getArgs
