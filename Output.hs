import DynFlags (xFlags)

main = do
  -- print String だとDouble quoteが付くので注意
  let x = "x"
  putStrLn x -- x
  print x -- "x"

  -- 任意の型
  let y = 1.5
  print y

  -- リストを文字列変換して出力
  let z = [1 .. 3]
  let z' = ["a", "b", "c"] :: [String]
  --   (putStrLn . unwords) (map show z) とも書ける
  putStrLn . unwords $ map show z -- 1 2 3
  --   (putStrLn . unwords) z' とも書ける
  putStrLn . unwords $ z' -- a b c
