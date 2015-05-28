from fractions import Fraction

best = 0

for d in range(1, 1000001):
    n = d * 3 // 7
    r = Fraction(n, d)
    if r < Fraction(3, 7) and r > best:
        best = r

print(best.numerator)
