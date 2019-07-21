import math

count = 0
n = 1
while True:
    start = math.ceil((10 ** (n - 1)) ** (1.0 / n))
    count += 9 - start + 1
    n += 1
    if start > 9:
        break
print(count)
