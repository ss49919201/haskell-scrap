main = do
  print "Hello World"

-- リストに、要素が含まれるかを返す。
-- contains contains 1 [1 .. 10] は True になる。
contains :: Eq a => a -> [a] -> Bool
contains x [] = False
contains x ys = x `elem` ys

-- 入力の1行を読み込んで、文字列に変換する。
getLineToString :: IO String
getLineToString = do
  getLine

-- 入力の1行を読み込んで、数値に変換する。
getLineToInt :: IO Int
getLineToInt = do
  read <$> getLine :: IO Int
