{-
	This is written by Zhiyang Ong to obtain the current date as a string in the format of: "Year-Month-Day".
-}

import Data.Time
import Data.Time.Clock
import Data.Time.Calendar

findCurrentTime3a = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = take 10 s1
  {-print s1
  print s2
  -}
  return s2

main = do
  --putStr $ show findCurrentTime3a
  --putStr findCurrentTime3a
  --putStr show findCurrentTime3a
  --putStr show findCurrentTime3a
  --print show findCurrentTime3a
  --print findCurrentTime3a
  --let result <- findCurrentTime3a
  --let result = findCurrentTime3a
  result <- findCurrentTime3a
  print result
