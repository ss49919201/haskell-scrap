import Control.Monad (unless, when)

one :: Int
one = 1

false :: Bool
false = False

main :: IO ()
main = do
  let n = one
  let t = false
  (\x -> when (x == 0) $ print x) n -- 1
  (\y -> unless y $ print y) t
