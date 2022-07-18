main = do
  print $ contains 1 [1 .. 10]

-- リストに、要素が含まれるかを返す。
-- contains contains 1 [1 .. 10] は True になる。
contains :: Eq a => a -> [a] -> Bool
contains x [] = False
contains x ys = x `elem` ys
