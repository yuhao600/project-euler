n = 0

for i in range(1, 1001):
    n += i ** i
    n %= 10 ** 10

print(n)
