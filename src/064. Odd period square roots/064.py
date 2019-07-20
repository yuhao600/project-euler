import math

def sqrt_fraction_period(n):
    sqrt = math.sqrt(n)
    if sqrt == int(sqrt):
        return 0
    # https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Algorithm
    m = [0]
    d = [1]
    a = [math.floor(sqrt)]
    period = 0
    while True:
        new_m = d[-1] * a[-1] - m[-1]
        new_d = (n - new_m * new_m) / d[-1]
        new_a = math.floor((sqrt + new_m) / new_d)
        if period > 1 and m[-1] == m[1] and d[-1] == d[1] and a[-1] == a[1] \
                and new_m == m[2] and new_d == d[2] and new_a == a[2]:
            return period - 1
        m.append(new_m)
        d.append(new_d)
        a.append(new_a)
        period += 1

count = 0
for n in range(1, 10001):
    if sqrt_fraction_period(n) % 2 == 1:
        count += 1
print(count)
