a :: (Show a, Num a) => a -> String
a n = show (n + 1)

b :: String -> String
b n = "Hello, " ++ n ++ "!"

c :: Integer -> String
c = b . a

d :: Integer -> String
d = b . b . a

main = do
  let x = b (a 1)
  let y = c 1
  let z = d 1
  print (show x)
  print (show y)
  print (show z)
