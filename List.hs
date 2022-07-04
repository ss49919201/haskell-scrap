main :: IO ()
main = do
  let nl = [0, 1, 2]
  print (nl !! 1) -- 1
  --   print (nl !! 3) -- List.hs: Prelude.!!: index too large
  --   print (nl !! (-3)) -- List.hs: Prelude.!!: negative index

  --   全ての要素に同じ処理
  print [(+ 1 * 2) n | n <- nl] -- [2,3,4]

  --   条件付きで取り出す
  print [n | n <- nl, n `div` 2 == 0] -- [0,1]

  -- 式の結果の存在チェック
  print (1 `elem` nl) -- True
  print (10 `notElem` nl) -- True
