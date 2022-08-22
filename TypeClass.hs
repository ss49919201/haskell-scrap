-- 型変数にはNumクラスのインスタンスを渡す必要がある
-- Numは型クラスで、型クラスは振る舞いを定義するインターフェース
addInt :: Num a => a -> a -> a
addInt n = f
  where
    f = (n +)
