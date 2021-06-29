{-
	Testing code suggestions from: https://stackoverflow.com/a/68176960/1531728.
	
	Reference:
	+ David Fletcher, Answer to "How can I change the output of getZonedTime to a string with the format “Year-Month-Day” in Haskell?", Stack Exchange Inc., New York, NY, June 29, 2021. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/68176960/1531728; June 29, 2021 was the last access date.
-}
import Data.Time

main :: IO ()
main = do zt <- getZonedTime
          let s = formatTime defaultTimeLocale "%Y-%m-%d" zt
          let st = (showGregorian . localDay . zonedTimeToLocalTime) zt
          putStrLn s
          putStrLn st
