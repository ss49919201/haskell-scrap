main = do
  let x = (1, 2)
  print $ fst x -- 1
  print $ snd x -- 2

  -- zipはタプルのリストを作る
  print $ zip [1, 2, 3] [4, 5, 6] -- [(1,4),(2,5),(3,6)]
  print $ zip [1, 2, 3] "abc" -- [(1,"a"),(2,"b"),(3,"c")]
  -- 其々の辺の長さが10以下で周囲の長さが24の二等辺三角形
  print
    [ (a, b, c)
      | a <- [1 .. 10],
        b <- [1 .. 10],
        a < b,
        c <- [1 .. 10],
        isPythagoras a b c,
        a < b, -- (3,4,5),(4,3,5)はどちらかだけで良い
        b < c,
        a + b + c == 24
    ]

isPythagoras :: (Num a, Eq a) => a -> a -> a -> Bool
isPythagoras a b c = a ^ 2 + b ^ 2 == c ^ 2
