{-
	This is written by Zhiyang Ong to compare the current day to the birthday of someone.
-}


import Data.Time

findCurrentTime = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = drop 5 $ take 10 s1
  --print "findCurrentTime3"
  return s2

getBirthday = do
  birthday <- "06-29"
  return birthday

main = do
  res3a <- findCurrentTime
  print res3a
  -- Dates match. Say "Happy Birthday!"
  if res3a == getBirthday
    then print "Happy Birthday!"
    -- Else, do nothing.
    else pure ()
