main = print $ maximum palindromes

isPalindrome :: Int -> Bool
isPalindrome n = (show n) == (reverse $ show n)

palindromes = [a * b | a <- [100 .. 999], b <- [100 .. 999], isPalindrome $ a * b]
