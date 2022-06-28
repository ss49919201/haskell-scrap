main = do
  a
  b

a = do
  [a, b] <- map read . words <$> getLine
  if even (a * b)
    then putStrLn "Even"
    else putStrLn "Odd"

b = getLine >>= print . length . filter (== '1')
