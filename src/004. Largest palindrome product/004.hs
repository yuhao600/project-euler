main = print $ maximum palindromes

isPalinderome :: Int -> Bool
isPalinderome n = (show n) == (reverse $ show n)

palindromes = [a * b | a <- [100 .. 999], b <- [100 .. 999], isPalinderome $ a * b]
