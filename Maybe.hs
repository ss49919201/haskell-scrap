main :: IO ()
main = do
  print $ getMaybe 1
  print $ getMaybe (-1)
  print $ getUserByID "1"
  print $ getUserByID "4"

getMaybe :: Int -> Maybe Int
getMaybe x = if x > 0 then Just x else Nothing

data User = User {userID :: String, name :: String, age :: Int} deriving (Show)

getUserByID :: String -> Maybe User
getUserByID id
  | id == "1" = Just User {userID = "1", name = "John", age = 18}
  | id == "2" = Just User {userID = "2", name = "Mike", age = 33}
  | id == "3" = Just User {userID = "3", name = "Alice", age = 40}
  | otherwise = Nothing
