def digit_sum(n):
    digits = 0
    while n > 0:
        digits += n % 10
        n //= 10
    return digits

max = 0
for a in range(1, 101):
    for b in range(1, 101):
        exp = a ** b
        if digit_sum(exp) > max:
            max = digit_sum(exp)

print(max)

