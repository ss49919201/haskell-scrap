import Control.Monad

main :: IO ()
main = do
  n <- readLn :: IO Int
  let m = map fizzbuzz [1 .. n]
  forM_ m $ \i -> do
    putStrLn i

fizzbuzz :: (Integral a, Show a) => a -> [Char]
fizzbuzz n
  | n `mod` 15 == 0 = "Fizz Buzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n
