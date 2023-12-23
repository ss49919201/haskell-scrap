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
  -- 関数名、スペース、引数...
  print (min 1 2)

  -- 中置関数
  -- 2引数のみ
  print (1 `min` 2)

  -- 括弧で括ると順序を制御できる
  -- Goなら succ(max(2, 3))
  print (succ 2 `max` 3)
  print (succ (2 `max` 3))

  -- 定義した関数の呼び出し
  print (plus 1 2)
  print (1 `plus` 2)

  -- if
  -- else節が必須
  -- ifは必ず値を返す式
  let a = 1
  if a >= 0
    then print "true"
    else print "false"

  print headOfList

  print compareList
  print compareList'
  print compareList''

-- 関数定義
-- 関数名、スペース、引数名...
plus x y = x + y

-- 引数を取らない関数
-- 定義、名前と呼ばれる
name = "Bob"

-- リストは同じ型の要素を格納できる
names = ["Alice", "Bob"]
-- リストは`++`で連結できる
-- 文字列は文字のリストなのでリスト関数を使える
-- 2つのリストを連結する時、1つ目のリストの最後まで走査されるので、重くなる可能性あり
concated = names ++ ["Mike"]
concatedStr = "Hello" ++ "World"
-- リストの先頭に単一の要素を追加する際は`:`を使う
-- `:`が、単一の要素と、同じ型のリストを受け取っている中置関数のようであるととらえる
added = "Mike" : ["Bob"]

-- リストの入れ子は可能だが、型は同じである必要がある
list = [[1, 2],[3, 4]]

-- リストの要素アクセスは`!!`を用いる
headOfList = "Haskell" !! 0
-- 存在しない索引へのアクセスはエラー
headOfList' = "Haskell" !! 7

-- リストは比較可能
-- 先頭から順番に見ていって、初めて出現した値の異なる要素同士の比較結果が返る
-- 空ではないリストは空のリストより大きいとみなされる
compareList = [1, 2, 3] > [6, 3, 0]
compareList' = [1, 2, 3] > [0, 3, 6]
compareList'' = [1, 2, 3] > [1, 2]
