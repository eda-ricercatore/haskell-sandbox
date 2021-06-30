# haskell-sandbox

A sandbox for testing implementations of *Haskell* concepts that I am learning.

It also include study notes for learning *Haskell*.

## Basic Information to Get Started

File extension for *Haskell* programs/scripts: `.hs`.

The alternate file extension for *Haskell* programs/scripts, `.lhs`, seems to be for running *Haskell* scripts in the interactive mode.
Specifically, "every line is considered a comment, unless it is explicitly marked as code."

*Haskell* scripts written with the `.lhs` file extension and required style can be processed by documentation generators to produce *LaTeX* documentation.
These scripts need to embed the *Haskell* source code within the *LaTeX* commands `\begin{code}` and `\end{code}`, and place `Haskell` comments outside of these *LaTeX* commands.


"There are two different styles you can use, although you must use only one within a single file."


Reference: chepner, Answer to "What is the extension for Haskell? [closed]", Stack Exchange Inc., New York, NY, June 10, 2016. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/37748411/1531728; June 29, 2021 was the last access date.



## Control Operations

Since *Haskell* is based on "typed lambda calculus," where lambda calculus is based on values and expressions, the `if-then-else` expression must reduce/yield a value. Hence, it requires both handling both the `if` condition and the `else` condition. Also, both of the aforementioned conditional handling must return a value.

Reference:
+ Njagi urbanslug Mwaniki, Answer to "How do I use if-then-else statement with no else condition in Haskell?", Stack Exchange Inc., New York, NY, May 22, 2018. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/50487190/1531728; June 29, 2021 was the last access date.

### `if-then-else` Expression with "Do Nothing" Operations in the `else` expression

In order have `if-then-else` expression with "Do Nothing" operations in the `else` expression, use the `pure ()` expression.

Reference:
+ David dfeuer Feuer, Answer to "How do I use if-then-else statement with no else condition in Haskell?", Stack Exchange Inc., New York, NY, May 22, 2018. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/50473375/1531728; June 29, 2021 was the last access date.



### Using Recursion as Loop Replacement 

Since *Python* does not support the usage of loops, we have to use recursion or functions applied to a set of data (or range of values).

Here is an example of using recursion to implement `while` loops.

```
import Control.Monad (unless)

prompt :: IO ()
prompt = do
    -- get input from user
    l <- getLine
    -- unless will execute its block if the condition is False
    unless (l == "q") $ do
        -- echo back to the user
        putStrLn $ "You entered: " ++ l
        prompt  -- recursive step here
```


Reference:
+ Aaron bheklilr Stevens, Answer to "What is the equivalent statement of a while loop in Haskell?",  Stack Exchange Inc., New York, NY, December 10, 2014. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/27404480/1531728; June 29, 2021 was the last access date.





Use functions from families of functions, such as `map`, `filter`, and `fold`, to perform operations over a set/range of values. 
+ "use map family of functions over a range of values to produce a new range of values"
+ "use filter family of functions over a range of values to produce a new subset of that range, with certain conditions fulfilled"
+ "use fold family of functions to aggregate something over that range"


Reference:
+ Sebastian Mach, Answer to "What is the equivalent statement of a while loop in Haskell?",  Stack Exchange Inc., New York, NY, December 10, 2014. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/27404168/1531728; June 29, 2021 was the last access date.














## Date and Time Operations

### Obtaining and Processing the Local Date and Time Information

To obtain the local date and time information, or the date and time information for your local time zone, try the following.

```
import Data.Time

main = do zt <- getZonedTime
	print zt
```


References:
+ newacct, Answer to "How to produce a local datetime string in Haskell?", Stack Exchange Inc., New York, NY, September 28, 2009. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/1485011/1531728; June 29, 2021 was the last access date.
+ William Yao, "A Cheat Sheet to the Time Library," from Welcome to All Those Learning Haskell blog, September 16, 2019. Available online from Welcome to All Those Learning Haskell blog at: https://williamyaoh.com/posts/2019-09-16-time-cheatsheet.html; self-published; June 29, 2021 was the last access date.





To extract the date information from the local date and time information stored in the `Day` object, try the following from Farina2021.

```
module Main where

import Data.Time

main :: IO ()
main = do
  x <- getZonedTime
  let s = show x
  print $ take 10 s
```

Fletcher2021 also provides an alternate approach.



References:
+ Farina2021
	- Daniel Farina, Answer to "How can I change the output of getZonedTime to a string with the format “Year-Month-Day” in Haskell?", Stack Exchange Inc., New York, NY, June 28, 2021. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/68170959/1531728; June 28, 2021 was the last access date.
+ Fletcher2021
	- David Fletcher, Answer to "How can I change the output of getZonedTime to a string with the format “Year-Month-Day” in Haskell?", Stack Exchange Inc., New York, NY, June 29, 2021. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/68176960/1531728; June 29, 2021 was the last access date.





To obtain the UTC date and time information, or the date and time information for the UTC time zone, try the following.

```
getCurrentTime :: IO UTCTime

data UTCTime = UTCTime
  { utctDay     :: Day       -- calendar day
  , utctDayTime :: DiffTime  -- seconds from midnight
  }

now <- getCurrentTime
now
```

Reference:
+ William Yao, "A Cheat Sheet to the Time Library," from Welcome to All Those Learning Haskell blog, September 16, 2019. Available online from Welcome to All Those Learning Haskell blog at: https://williamyaoh.com/posts/2019-09-16-time-cheatsheet.html; self-published; June 29, 2021 was the last access date.







## String Operations

## Substring Operations



To remove the initial and trailing substrings using the number of characters, try the following.

```
take 3 $ drop 2 "1234567890"
```


Reference:
+ Rosetta Code contributors, "Substring: Haskell: Strings," from Rosetta Code, June 8, 2021. Available online from Rosetta Code: Explore: Programming Tasks category: S: Substring: Haskell: Strings at: https://rosettacode.org/wiki/Substring#Haskell; June 29, 2021 was the last access date.



## Additional Notes

### Operators for Value Assignment

Assign values to variables via the `<-` operator.

In the `let` environment, the `=` operator can also store the result of evaluating an expression, a function, or combination of functions. 

The following are invalid operators:
+ `<=`
