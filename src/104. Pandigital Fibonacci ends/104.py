import math

# assumes n is an integer with at most 9 digits
def pandigital(n):
    if n < 10 ** 8:
        return False
    digits = set()
    for i in range(9):
        n, d = divmod(n, 10)
        if d == 0:
            return False
        if d in digits:
            return False
        else:
            digits.add(d)
    return True

def begins_pandigital(n):
    return pandigital(int(str(n)[0:9]))

def ends_pandigital(n):
    return pandigital(n % 10 ** 10)

k = 2
fa, fb = 1, 1
while True:
    fa, fb = fb, fa + fb
    k += 1
    if ends_pandigital(fb) and begins_pandigital(fb):
        print(k)
        break
