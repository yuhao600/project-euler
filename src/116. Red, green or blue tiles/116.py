upper_limit = 50
factorials = [1]
for n in range(1, upper_limit + 1):
    factorials.append(factorials[n - 1] * n)

def choose(n, k):
    global factorials
    return factorials[n] // factorials[n - k] // factorials[k]

red, green, blue = 0, 0, 0
for r in range(1, upper_limit // 2 + 1):
    n = upper_limit - r
    red += choose(n, r)

for g in range(1, upper_limit // 3 + 1):
    n = upper_limit - 2 * g
    green += choose(n, g)

for b in range(1, upper_limit // 4 + 1):
    n = upper_limit - 3 * b
    blue += choose(n, b)

print(red + green + blue)
