import math

upper_limit = 10 ** 12

# calculates rep units with digits more than 3
# any number n > 2 is a rep units 11 in base n - 1
rep_units = set()
for b in range(2, int(math.sqrt(upper_limit))):
    r = b + 1
    while True:
        r  = r * b + 1
        if r > upper_limit:
            break
        rep_units.add(r)

# https://en.wikipedia.org/wiki/Goormaghtigh_conjecture#Application_to_repunits
# 31 (111 in base 5, 11111 in base 2) and 8191 (111 in base 90, 1111111111111 in base 2)
# are the only two numbers that are repunits with at least 3 digits in two different bases.
if upper_limit >= 1:
    rep_units.add(1)
if upper_limit >= 31:
    rep_units.add(31)
if upper_limit >= 8191:
    rep_units.add(8191)
print(sum(rep_units))
