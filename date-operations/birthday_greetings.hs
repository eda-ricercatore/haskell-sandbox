{-
	This is written by Zhiyang Ong to wish someone "Happy Birthday" continuously during the person's birthday.
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
  --birthday <- "06-31"
  --birthday <- "06-20"
  return birthday

{-
let checkDay testDate = do --current_date <- findCurrentTime
  --current_date <- findCurrentTime
  -- Is today not your birthday?
  if current_date /= getBirthday
    --then print "Happy Birthday!"
    -- Do nothing
    then pure ()
  else
    print "Happy Birthday!"
    checkDay current_date
-}

main = do
  current_date2 <- findCurrentTime
  print current_date2
  -- Dates match. Say "Happy Birthday!"
  if current_date2 == getBirthday
    then print "Happy Birthday!"
    -- Else, do nothing.
    else pure ()
  main
  
