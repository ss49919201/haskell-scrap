main =
  if binarySearch x 0 (length x -1) 1
    then putStrLn "Found"
    else putStrLn "Not found"
  where
    x = [1 .. 10]

binarySearch :: [Int] -> Int -> Int -> Int -> Bool
binarySearch list low high target =
  (guess == target)
    || ( low /= high
           && ( if guess < target
                  then binarySearch list (mid + 1) high target
                  else binarySearch list low (mid - 1) target
              )
       )
  where
    mid = (low + high) `div` 2
    guess = list !! mid
