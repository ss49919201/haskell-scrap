main = do
  --fmapはa型を受け取ってb型を返す関数を受け取り、a型の値を受け取ってb型の値を返す
  print $ fmap (+ 1) [1, 2, 3] -- [2,3,4]
  print $ map (+ 1) [1, 2, 3] -- [2,3,4]
