string2Int :: String -> Int
string2Int a = read a :: Int

string2Float :: String -> Float
string2Float a = read a :: Float

int2String :: Int -> String
int2String = show

main = getLine >>= \x -> print $ string2Int x
