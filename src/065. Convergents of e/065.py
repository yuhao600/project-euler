from fractions import Fraction

# n starts from 2
def fraction_seq(n):
    if n % 3 == 0:
        return n // 3 * 2
    else:
        return 1

e = Fraction(0)
for n in range(100, 1, -1):
    e = Fraction(1) / (fraction_seq(n) + e)

e += 2
print(sum(map(int, list(str(e.numerator)))))
