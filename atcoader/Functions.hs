main = do
  l <- getLineToInt
  print l

-- リストに、要素が含まれるかを返す。
-- contains contains 1 [1 .. 10] は True になる。
contains :: Eq a => a -> [a] -> Bool
contains x [] = False
contains x ys = x `elem` ys

-- 入力の1行を読み込んで、文字列に変換する。
getLineToString :: IO String
getLineToString = getLine

-- 入力の1行を読み込んで、数値に変換する。
getLineToInt :: IO Int
getLineToInt = read <$> getLine :: IO Int

-- 入力の1行を読み込んで、文字列のリストに変換する。
-- 1 2 3 は ["1", "2", "3"] になる。
getLineToStringList :: IO [String]
getLineToStringList =
  words <$> getLine

-- 入力の1行を読み込んで、数値のリストに変換する。
-- 1 2 3 は [1, 2, 3] になる。
getLineToIntList :: IO [Int]
getLineToIntList =
  map read . words <$> getLine :: IO [Int]

-- 文字列中に指定の文字が含まれる数を返す。
getCharCount :: Char -> String -> Int
getCharCount c = length . filter (== c)
