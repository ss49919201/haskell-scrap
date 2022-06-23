import Control.Monad (when)

onlyZero :: Int -> IO ()
onlyZero x = when (x == 0) $ putStrLn "Zero"

main = do
  n <- readLn :: IO Int
  onlyZero n
