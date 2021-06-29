{-
	This is written by Zhiyang Ong to transform the current date into a string with the format: "Year-Month-Day".
-}

import Data.Time

findCurrentTime3a = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = take 10 s1
  return s2

main = do
  result <- findCurrentTime3a
  print result
