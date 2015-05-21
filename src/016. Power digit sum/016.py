import functools

print(functools.reduce(lambda sum, c: sum + c, map(int, str(2 ** 1000))))