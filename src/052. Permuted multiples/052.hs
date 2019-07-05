import Data.List
import Data.Maybe

main = print $ fromJust $ find permutedMultiples [1..]

permutedMultiples :: Integer -> Bool
permutedMultiples n = toSorted n == toSorted (n * 2)
                    && toSorted n == toSorted (n * 3)
                    && toSorted n == toSorted (n * 4)
                    && toSorted n == toSorted (n * 5)
                    && toSorted n == toSorted (n * 6)

toSorted :: Integer -> String
toSorted n = sort $ show n
