main = do
  solve [1 .. 10] 0 9 19

solve :: [Int] -> Int -> Int -> Int -> IO ()
solve list low high target = do
  let mid = (low + high) `div` 2
  let guess = list !! mid
  if guess == target
    then putStrLn "found it"
    else
      if low == high
        then putStrLn "not found"
        else
          if guess < target
            then solve list (mid + 1) high target
            else solve list low (mid - 1) target
