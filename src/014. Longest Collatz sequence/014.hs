import Data.List

main = print $ snd $ foldl1' max [(collatz n, n) | n <- [1 .. 1000000]]

collatz :: Integer -> Integer
collatz 1 = 1
collatz n
    | even n = collatz (n `div` 2) + 1
    | odd  n = collatz (n * 3 + 1) + 1
    