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
  -- map は第一引数がリスト、第二引数が関数であるが、
  -- flip を使うと第一引数が関数、第二引数がリストとなる
  let tmp = ["a", "b", "c"]
  let e = flip map
  print $ e tmp $ \x -> x ++ "1"

  -- flodl
  -- 左から右に関数を適用する
  print $ foldl (++) "H" ["e", "l", "l", "o"] -- "Hello"

  -- リスト内包表記
  -- 多重ループの全探索
  let aa = [1 .. 10]
  let ab = [11 .. 20]
  let ac = [21 .. 30]
  print $ [(a, b, c) | a <- aa, b <- ab, c <- ac, even (a + b + c)]
  print $ [(a, b, c) | a <- aa, b <- ab, c <- ac, odd (a + b + c)]
