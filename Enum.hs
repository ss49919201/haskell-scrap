-- Teaは型構築子
-- Red...はデータ構築子
-- deriving (Show, Eq)はShowとEq(型クラス)を実装する
data Tea = Red | Green | Black deriving (Show, Eq, Enum)

main = do
  print Red
  print (Red == Green)
  print (Red == (toEnum 0 :: Tea))
