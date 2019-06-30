main = print $ sum $ map (length . numToWord) [1..1000]

numToWord :: Int -> String
numToWord num
    | num == 1 = "one"
    | num == 2 = "two"
    | num == 3 = "three"
    | num == 4 = "four"
    | num == 5 = "five"
    | num == 6 = "six"
    | num == 7 = "seven"
    | num == 8 = "eight"
    | num == 9 = "nine"
    | num == 10 = "ten"
    | num == 11 = "eleven"
    | num == 12 = "twelve"
    | num == 13 = "thirteen"
    | num == 14 = "fourteen"
    | num == 15 = "fifteen"
    | num == 16 = "sixteen"
    | num == 17 = "seventeen"
    | num == 18 = "eighteen"
    | num == 19 = "nineteen"
    | num == 20 = "twenty"
    | num == 30 = "thirty"
    | num == 40 = "forty"
    | num == 50 = "fifty"
    | num == 60 = "sixty"
    | num == 70 = "seventy"
    | num == 80 = "eighty"
    | num == 90 = "ninety"
    | num < 100 = (numToWord $ num  - num `mod` 10) ++ (numToWord $ num `mod` 10)
    | num < 1000 && num `mod` 100 == 0 = (numToWord $ num `quot` 100) ++ "hundred"
    | num < 1000 = (numToWord $ num `quot` 100 * 100) ++ "and" ++ (numToWord $ num `mod` 100)
    | num == 1000 = numToWord 1 ++ "thousand"
    