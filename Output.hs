import DynFlags (xFlags)

main = do
  -- print String だとDouble quoteが付くので注意
  let x = "x"
  putStrLn x -- x
  print x -- "x"

  -- 任意の型
  let y = 1.5
  print y

  let z = [1 .. 3]
  let z' = ["a", "b", "c"] :: [String]
  putStrLn . unwords $ map show z
  putStrLn . unwords $ z'
