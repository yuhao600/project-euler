import Data.Char

main = print result

getDigit :: String -> Int -> Int
getDigit d n = digitToInt $ d !! (n - 1)

d = concat $ take 200000 $ map show [1..]
result = getDigit d 1 *
    getDigit d 10 *
    getDigit d 100 *
    getDigit d 1000 *
    getDigit d 10000 *
    getDigit d 100000 *
    getDigit d 1000000
