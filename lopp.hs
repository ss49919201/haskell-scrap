import Control.Monad (forM, forM_)
import System.Directory.Internal.Prelude (for)

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

  -- flip
  -- 2変数関数の変数の順番を入れ替える
  let tmp = ["a", "b", "c"]
  -- map は第一引数がリスト、第二引数が関数であるが、
  -- flip を使うと第一引数が関数、第二引数がリストとなる
  let e = flip map
  print $ e tmp $ \x -> x ++ "1"
