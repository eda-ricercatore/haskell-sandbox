import Data.Time
-- Function to get the current date.
findCurrentTime = do
	  zt <- getZonedTime
	  let s1 = show zt
	  let s2 = drop 5 $ take 10 s1
	  return s2
-- Function to store the birthday as a string and return it.
getBirthday = do
	  birthday <- "07-20"
	  return birthday
-- Main loop
main = do
	current_date2 <- findCurrentTime
	--print current_date2
	-- Dates match. Say "Happy Birthday!"
	if current_date2 == getBirthday
		then print "Happy Birthday, Dr. BLAH!"
		-- Else, do nothing.
		else pure ()
	main
