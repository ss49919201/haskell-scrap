import Control.Monad (replicateM)

main = do
  first <- getLineToIntList
  let h1 = head first
  let w1 = first !! 1
  a <- getMultiLineToMultipleIntList h1

  second <- getLineToIntList
  let h2 = head second
  let w2 = second !! 1
  b <- getMultiLineToMultipleIntList h2
  print a
  print b

-- リストに特定の条件の要素が含まれる数を返す
lengthFilter :: (a -> Bool) -> [a] -> Int
lengthFilter f = length . filter f

-- リストに、要素が含まれるかを返す。
-- contains contains 1 [1 .. 10] は True になる。
contains :: Eq a => a -> [a] -> Bool
contains x [] = False
contains x ys = x `elem` ys

-- 入力の1行を読み込んで、文字列に変換する。
getLineToString :: IO String
getLineToString = getLine

-- 入力の1行を読み込んで、数値に変換する。
getLineToInt :: IO Int
getLineToInt = read <$> getLine :: IO Int

-- 入力の1行を読み込んで、文字列のリストに変換する。
-- 1 2 3 は ["1", "2", "3"] になる。
getLineToStringList :: IO [String]
getLineToStringList =
  words <$> getLine

-- 入力のn行を読み込んで、文字列のリストに変換する。
-- 1\n 2\n 3 は ["1", "2", "3"] になる。
getMultiLineToStringList :: Int -> IO [String]
getMultiLineToStringList n =
  replicateM n getLine :: IO [String]

-- 入力のn行を読み込んで、文字列の二次元リストに変換する。
-- 1\n 2\n 3 は ["1"], ["2"], ["3"] になる。
getMultiLineToMultipleStringList :: Int -> IO [[String]]
getMultiLineToMultipleStringList n =
  replicateM n getLineToStringList :: IO [[String]]

-- 入力の1行を読み込んで、数値のリストに変換する。
-- 1 2 3 は [1, 2, 3] になる。
getLineToIntList :: IO [Int]
getLineToIntList =
  map read . words <$> getLine :: IO [Int]

-- 入力のn行を読み込んで、数値のリストに変換する。
-- 1\n 2\n 3 は [1, 2, 3] になる。
getMultiLineToIntList :: Int -> IO [Int]
getMultiLineToIntList n =
  replicateM n readLn :: IO [Int]

-- 入力のn行を読み込んで、数値の二次元リストに変換する。
-- 1\n 2\n 3 は [1], [2], [3] になる。
getMultiLineToMultipleIntList :: Int -> IO [[Int]]
getMultiLineToMultipleIntList n =
  replicateM n getLineToIntList

-- 文字列中に指定の文字が含まれる数を返す。
getCharCount :: Char -> String -> Int
getCharCount c = length . filter (== c)

-- 回文かどうかを判定する。
isPalindrome :: [Char] -> [Char] -> Bool
isPalindrome x y =
  x == reverse y

-- 指定のインデックス要素を上書きする
-- [0, 1, 2] 1 2 => [0, 2, 2]
overrideElm :: [a] -> Int -> a -> [a]
overrideElm l n e
  | n < 0 || n > length l -1 = l
  | otherwise = take n l ++ e : drop (n + 1) l
