counter :: p -> Integer
counter = f
  where
    val = 0
    f = \_ -> val + 1

addInt :: Num a => a -> a -> a
addInt n = f
  where
    f = (n +)

main = do
  let f = counter
  let a = f 1
  let b = f 1
  print a
  print b

  let f2 = addInt 1
  let c = f2 2 -- 2 + 1 = 3
  print c -- 3
  let f3 = addInt 2
  let d = f3 2 -- 2 + 2 = 4
  print d -- 4
