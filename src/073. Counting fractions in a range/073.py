from fractions import Fraction

fractions = set()
for d in range(1, 12001):
    for n in range(d // 3 + 1, d / 2):
        fractions.add(Fraction(n, d))

print(len(fractions) - 1) # remove the number 1/2
