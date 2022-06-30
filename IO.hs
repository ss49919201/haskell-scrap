main = do
  a
  b
  c

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
