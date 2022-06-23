one :: Int
one = 1

true :: Bool
true = True

main :: IO ()
main = do
  let n = one
  let t = true
  print $ (\x -> show x) (n) -- "1"
  print $ (\y -> show y) (t) -- "True"
