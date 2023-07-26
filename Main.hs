main = do
  -- 式の途中の負数は括弧で括る
  print (1 * (-3))
  -- 論理積、論理和、否定演算子
  print (True && False)
  print (True || False)
  print (not (True))
  -- 比較演算子
  print (1 == 1)
  print (1 /= 1)
  -- 前置関数
  print (min 1 2)
  -- 中置関数
  -- 2引数のみ
  print (1 `min` 2)
  -- 括弧で括ると順序を制御できる
  print (succ 2 `max` 3)
  print (succ (2 `max` 3))
