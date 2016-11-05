factorial = [1]
for n in range(1, 101):
    factorial.append(factorial[n - 1] * n)

count = 0
for n in range(1, 101):
    for r in range(1, n + 1):
        if factorial[n] / factorial[r] / factorial[n - r] > 1000000:
            count += 1

print(count)
