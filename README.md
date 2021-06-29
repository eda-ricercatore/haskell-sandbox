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

To obtain the local time, or the time for your local time zone, try the following.

```
import Data.Time

main = do zt <- getZonedTime
          print zt
```


Reference:
+ newacct, Answer to "How to produce a local datetime string in Haskell?", Stack Exchange Inc., New York, NY, September 28, 2009. Available online from Stack Exchange Inc.: Stack Overflow: Questions at: https://stackoverflow.com/a/1485011/1531728; June 29, 2021 was the last access date.


