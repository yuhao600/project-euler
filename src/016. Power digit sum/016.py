from functools import reduce

print(reduce(lambda sum, c: sum + c, map(int, str(2 ** 1000))))
