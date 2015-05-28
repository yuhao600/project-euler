from fractions import Fraction
from functools import reduce

result = []

# a / b
for a in range(10, 100):
    for b in range(a + 1, 100):
        a1 = a // 10
        a2 = a % 10
        b1 = b // 10
        b2 = b % 10
        if b2 != 0 and Fraction(a, b) == Fraction(a1, b2) and a2 == b1:
            result.append(Fraction(a, b))

print(reduce(lambda a, b: a * b, result).denominator)
