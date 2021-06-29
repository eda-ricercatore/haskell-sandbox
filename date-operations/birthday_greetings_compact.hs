{-
	This is written by Zhiyang Ong to wish someone "Happy Birthday" continuously, while it is still that person's birthday.
-}

import Data.Time

findCurrentTime = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = drop 5 $ take 10 s1
  return s2

getBirthday = do
  birthday <- "06-29"
  return birthday

main = do
  current_date2 <- findCurrentTime
  --print current_date2
  -- Dates match. Say "Happy Birthday!"
  if current_date2 == getBirthday
    then print "Happy Birthday, BLAH!"
    -- Else, do nothing.
    else pure ()
  main
  
