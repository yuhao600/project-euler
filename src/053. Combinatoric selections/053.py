factorials = [1]
for n in range(1, 101):
    factorials.append(factorials[n - 1] * n)

count = 0
for n in range(1, 101):
    for r in range(1, n + 1):
        if factorials[n] / factorials[r] / factorials[n - r] > 1000000:
            count += 1

print(count)
