data Subscription
  = Year {period :: Int}
  | Month {period :: Int}
  | Week {period :: Int}
  deriving (Show)

subscription :: [Char] -> Subscription
subscription "Year" = Year {period = 1}
subscription "Month" = Month {period = 1}
subscription "Week" = Week {period = 1}

main = do
  print $ subscription "Year"
  print $ subscription "Month"
  print $ subscription "Week"
