from fractions import Fraction

fraction = Fraction(3, 2)
count = 0
for i in range(1000):
    if len(str(fraction.numerator)) > len(str(fraction.denominator)):
        count += 1
    fraction = 1 / (1 + fraction) + 1
    
print(count)
