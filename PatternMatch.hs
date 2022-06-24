-- 特定の引数を指定して関数を分割することをパターンマッチという

-- 引数ごとに関数を分離
-- 式は使えない
onlyZero :: (Eq a, Num a, Show a) => a -> [Char]
onlyZero 0 = show 0
onlyZero n = "not zero"

-- 関数内でのパターンマッチ
onlySigned :: (Ord a, Num a, Show a) => a -> [Char]
onlySigned n = case n of
  _ | n < 0 -> "unsigned!"
  _ -> show n

-- ガード
onlyUnsigned :: (Ord a, Num a, Show a) => a -> [Char]
onlyUnsigned n
  | n >= 0 = "signed!"
  | otherwise = show n

main = do
  print $ onlyZero 0 -- "0"
  print $ onlyZero 1 -- "not zero"
  print $ onlySigned (-1) -- "unsigned!"
  print $ onlySigned 1 -- "1"
  print $ onlyUnsigned (-1) -- "-1"
  print $ onlyUnsigned 1 -- "singed"
