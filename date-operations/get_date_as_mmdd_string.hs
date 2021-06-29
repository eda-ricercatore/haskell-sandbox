{-
	This is written by Zhiyang Ong to get the date as a string in the format: "Month-Day".
-}

import Data.Time

findCurrentTime3a = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = drop 5 $ take 10 s1
  return s2

main = do
  result <- findCurrentTime3a
  print result
