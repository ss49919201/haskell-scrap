import Control.Monad
import Data.Array
import qualified Data.ByteString.Char8 as BS
import Data.Maybe

main = do
  n <- getLineToInt
  ns <- getLineToIntList
  let dp = [0, abs ((ns !! 1) - head ns)] :: [Int]
  print $ solve ns 2 dp !! 1
  where
    solve :: [Int] -> Int -> [Int] -> [Int]
    solve ns i dp
      | i == length ns = dp
      | otherwise = solve ns (i + 1) newdp
      where
        cur = ns !! i
        elm = min ((dp !! 1) + abs (cur - (ns !! (i - 1)))) (head dp + abs (cur - (ns !! (i - 2))))
        newdp = [dp !! 1, elm]

-- リストに特定の条件の要素が含まれる数を返す
lengthFilter :: (a -> Bool) -> [a] -> Int
lengthFilter f = length . filter f

-- リストに、要素が含まれるかを返す。
-- contains contains 1 [1 .. 10] は True になる。
contains :: Eq a => a -> [a] -> Bool
contains x [] = False
contains x ys = x `elem` ys

readInt :: BS.ByteString -> Int
readInt = fst . fromJust . BS.readInt

readIntList :: BS.ByteString -> [Int]
readIntList = map readInt . BS.words

getInt :: IO Int
getInt = readInt <$> BS.getLine

getIntList :: IO [Int]
getIntList = readIntList <$> BS.getLine

-- 入力の1行を読み込んで、文字列に変換する。
getLineToString :: IO String
getLineToString = show <$> getLineToInt

-- 入力の1行を読み込んで、数値に変換する。
getLineToInt :: IO Int
getLineToInt = readInt <$> BS.getLine

-- 入力の1行を読み込んで、文字列のリストに変換する。
-- 1 2 3 は ["1", "2", "3"] になる。
getLineToStringList :: IO [String]
getLineToStringList =
  words <$> getLineToString

-- 入力のn行を読み込んで、文字列のリストに変換する。
-- 1\n 2\n 3 は ["1", "2", "3"] になる。
getMultiLineToStringList :: Int -> IO [String]
getMultiLineToStringList n =
  replicateM n getLineToString :: IO [String]

-- 入力のn行を読み込んで、文字列の二次元リストに変換する。
-- 1\n 2\n 3 は ["1"], ["2"], ["3"] になる。
getMultiLineToMultipleStringList :: Int -> IO [[String]]
getMultiLineToMultipleStringList n =
  replicateM n getLineToStringList :: IO [[String]]

-- 入力の1行を読み込んで、数値のリストに変換する。
-- 1 2 3 は [1, 2, 3] になる。
getLineToIntList :: IO [Int]
getLineToIntList =
  readIntList <$> BS.getLine

-- 入力のn行を読み込んで、数値のリストに変換する。
-- 1\n 2\n 3 は [1, 2, 3] になる。
getMultiLineToIntList :: Int -> IO [Int]
getMultiLineToIntList n =
  replicateM n getLineToInt :: IO [Int]

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
