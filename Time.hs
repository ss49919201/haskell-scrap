import Data.Time
  ( UTCTime,
    ZonedTime,
    addUTCTime,
    defaultTimeLocale,
    formatTime,
    parseTimeM,
  )
import Data.Time.Clock

timeFormat = "%-H:%M"

addMinutes minutes = addUTCTime (minutes * 60)

solve m = do
  a <- parseTimeM True defaultTimeLocale "%R" "21:00" :: IO UTCTime
  putStrLn $ formatTime defaultTimeLocale timeFormat (addMinutes (1 * fromIntegral m) a)

main :: IO ()
main = do
  m <- readLn :: IO Int
  solve m
