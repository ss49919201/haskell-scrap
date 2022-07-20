import Control.Monad (forM, forM_)

main = do
  -- forM
  a <- forM ["a", "b", "c"] $ \x -> do
    return x
  print a -- ["a", "b", "c"]

  --  forM_
  -- 戻り値がない
  b <- forM_ ["a", "b", "c"] $ \x -> do
    putStrLn x -- a, b, c
  print b -- ()

  -- map
  -- 同じ関数を通したリストを作る
  let c = map (\x -> x ++ "1") ["a", "b", "c"]
  print c -- ["a1", "b1", "c1"]

  -- filter
  -- 条件を満たしたリストを作る
  let d = filter (\x -> x `elem` ['a' .. 'c']) ['a' .. 'z']
  print d -- "abc"
