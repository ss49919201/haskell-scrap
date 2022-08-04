import Network.HTTP.Types (http20)

data Human = Human {name :: String, age :: Int} deriving (Show)

main = do
  print (Human "John" 30)
  print (Human {name = "John", age = 30})

  let h = Human {name = "John", age = 30}
  print (name h)

  let Human {name = n, age = a} = h
  print (n, a)
