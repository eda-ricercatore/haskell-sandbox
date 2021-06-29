# haskell-sandbox

A sandbox for testing implementations of *Haskell* concepts that I am learning.

It also include study notes for learning *Haskell*.

## Control Operations

Since *Haskell* is based on "typed lambda calculus," where lambda calculus is based on values and expressions, the `if-then-else` expression must reduce/yield a value. Hence, it requires both handling both the `if` condition and the `else` condition. Also, both of the aforementioned conditional handling must return a value.

Reference:
+ Njagi urbanslug Mwaniki, Answer to "How do I use if-then-else statement with no else condition in Haskell?", Stack Exchange Inc., New York, NY, May 22, 2018. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/50487190/1531728; June 29, 2021 was the last access date.

### `if-then-else` Expression with "Do Nothing" Operations in the `else` expression

In order have `if-then-else` expression with "Do Nothing" operations in the `else` expression, use the `pure ()` expression.

Reference:
+ David dfeuer Feuer, Answer to "How do I use if-then-else statement with no else condition in Haskell?", Stack Exchange Inc., New York, NY, May 22, 2018. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/50473375/1531728; June 29, 2021 was the last access date.


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



## String Operations

## Substring Operations



To remove the initial and trailing substrings using the number of characters, try the following.

```
take 3 $ drop 2 "1234567890"
```


Reference:
+ Rosetta Code contributors, "Substring: Haskell: Strings," from Rosetta Code, June 8, 2021. Available online from Rosetta Code: Explore: Programming Tasks category: S: Substring: Haskell: Strings at: https://rosettacode.org/wiki/Substring#Haskell; June 29, 2021 was the last access date.


