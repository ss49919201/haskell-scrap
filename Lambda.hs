import Control.Monad (unless, when)

one :: Int
one = 1

true :: Bool
true = True

main :: IO ()
main = do
  let n = one
  let t = true
  (\x -> when (x == 0) $ print x) n -- 1
  (\x -> when (x == 1) $ print x) n
  (\y -> when y $ print y) t -- "True"
  (\y -> unless y $ print y) t
