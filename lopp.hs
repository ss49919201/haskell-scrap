import Control.Monad (forM, forM_)

main = do
  -- forM
  a <- forM ["a", "b", "c"] $ \x -> do
    return x
  print a -- ["a", "b", "c"]

  --  forM_
  forM_ ["a", "b", "c"] $ \x -> do
    putStrLn x -- a, b, c
