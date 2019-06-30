main = print $ sum [a | a <- [1..999], a `mod` 3 == 0 || a `mod` 5 == 0]
