import Control.Monad

a = do
  [a, b] <- map read . words <$> getLine
  if even (a * b)
    then putStrLn "Even"
    else putStrLn "Odd"

b = getLine >>= print . length . filter (== '1')

c = do
  a <- getLine
  let fn = print . length . filter (== '1')
  fn a

d = do
  a <- readLn :: IO Int
  print (a `div` 10)

e = do
  -- 222 -> ["222"]
  -- require "import Control.Monad"
  replicateM 1 getLine >>= print
