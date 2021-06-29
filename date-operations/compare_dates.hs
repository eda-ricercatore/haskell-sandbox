{-
	This is written by Zhiyang Ong to test conditional string comparison, for print statements.
	
	All if-then statements must have an else clause, since they must return values from the if-then expressions.
	
	Hence, a "Do Nothing" clause is used to fill in the required else clause.
-}


import Data.Time
import Data.Time.Clock
import Data.Time.Calendar


--toGregorian :: Day -> String  -- year, month, day of month


findCurrentTime1 = do
  zt <- getZonedTime
  print "findCurrentTime1"
  print zt

findCurrentTime2 = do
  print "findCurrentTime2"
  print "2021-06-28"


findCurrentTime3 = do
  zt <- getZonedTime
--  {-  
  let s1 = show zt
  print "findCurrentTime3"
  print $ take 10 s1
--  -}
  print zt

findCurrentTime3a = do
  zt <- getZonedTime
--  {-  
  let s1 = show zt
  --let s1 = show zt $ take 10 zt
  --let s1 = show $ take 10 zt
  --s2 <- $ s1 take 10
  --s2 = take 10 s1
  --s2 <- $ take 10 s1
  --let s2 <- take 10 s1
  --let s2 = take 10 s1
  let s2 = drop 5 $ take 10 s1
  --s2 = $ take 10 s1
  --let s2 = (s1 take 10)
  print "findCurrentTime3a"
  --print s1
  --print s2
  return s2
--  -}


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

{-
sayGreeting1 :: IO()
sayGreeting1 = do
  if findCurrentTime6 == findCurrentTime7
  then print "Happy Birthday!"
-}

{-
sayGreeting2 = do
  if findCurrentTime6 == findCurrentTime7
    then print "Happy Birthday!"
-}





main = do
  -- zt <- getZonedTime
  -- print zt
  findCurrentTime1
  findCurrentTime2
  findCurrentTime3
  res3a <- findCurrentTime3a
  print res3a
{-
  currentTime = fmap show getCurrentTime
  zonedTime = fmap show getZonedTime
  print currentTime
  print zonedTime
-}
  -- Dates do not match. Do nothing.
  if findCurrentTime6 == findCurrentTime7
    then print "Happy Birthday!"
    -- Else, do nothing.
    else pure ()
-- Dates do not match. Do nothing.
  if findCurrentTime5 == findCurrentTime7
    then print "Happy Birthday!"
    -- Else, do nothing.
    else pure ()
  -- Dates match. Say "Happy Birthday!"
  if findCurrentTime4 == findCurrentTime7
    then print "Happy Birthday! 4 & 7 match."
    -- Else, do nothing.
    else pure ()
