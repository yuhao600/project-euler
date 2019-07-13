# From the Binomial Theorem
# (((a - 1)^n + (a + 1)^n)) % a^2
# = (na(-1)^(n - 1) + (-1)^n) % a^2
# = 2na % a^2 when n is odd
# = 2   % a^2 when n is even
# So the maximum of r is 2na in which 2n < a, or a * (maximum even number smaller than a)

def r_max(a):
    if a % 2 == 0:
        return a * (a - 2)
    else:
        return a * (a - 1)

sum = 0
for a in range(3, 1001):
    sum += r_max(a)
print(sum)
