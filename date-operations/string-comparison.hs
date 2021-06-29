{-
	This is written by Zhiyang Ong to test conditional string comparison, for print statements.
	
	All if-then statements must have an else clause, since they must return values from the if-then expressions.
	
	Hence, a "Do Nothing" clause is used to fill in the required else clause.
-}

findCurrentTime4 = do
  birthday <- "06-28"
  return birthday

findCurrentTime5 = do
  birthday <- "06-23"
  return birthday

findCurrentTime6 = do
  birthday <- "06-30"
  return birthday

findCurrentTime7 = do
  birthday <- "06-28"
  return birthday


main = do
  -- Dates do not match. Do nothing.
  if findCurrentTime6 == findCurrentTime7
    then print "Ciao tutti!"
    -- Else, do nothing.
    else pure ()
-- Dates do not match. Do nothing.
  if findCurrentTime5 == findCurrentTime7
    then print "Ciao tutti!"
    -- Else, do nothing.
    else pure ()
  -- Dates match. Say "Ciao tutti!"
  if findCurrentTime4 == findCurrentTime7
    then print "Ciao tutti! 4 & 7 match."
    -- Else, do nothing.
    else pure ()
