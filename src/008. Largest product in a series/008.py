from functools import reduce
from operator import mul

with open("008.txt") as f:
    digits = [int(d) for d in f.read()]
    max_product = 0
    for i in range(0, len(digits) - 12):
        product = reduce(mul, digits[i:i + 13])
        if product > max_product:
            max_product = product
    print(max_product)
