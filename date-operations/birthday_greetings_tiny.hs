{-
  This is written by Zhiyang Ong to wish people "Happy Birthday" continuously, during their birthdays. 
-}

import Data.Time

-- Function to determine the current day.
findCurrentTime = do
  zt <- getZonedTime
  let s1 = show zt
  let s2 = drop 5 $ take 10 s1
  return s2

main = do
  current_date2 <- findCurrentTime
  --print current_date2
  {-
		Dates match? Say "Happy Birthday!"
		
		Change the birthday here!!! 
	-}
  if current_date2 == "06-29"
    then print "Happy Birthday, BLAH!"
    -- Else, do nothing.
    else pure ()
  main
  
