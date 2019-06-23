def sum_digits(n):
    sum = 0
    while n > 0:
        sum += n % 10
        n /= 10
    return sum

# guess
upper_limit_power = 15
upper_limit = 10 ** upper_limit_power
digit_sum_powers = []
n = 2
for n in range(2, 9 * upper_limit_power):
    n_power = n
    while n_power < upper_limit:
        if n_power >= 10 and sum_digits(n_power) == n:
            digit_sum_powers.append(n_power)
        n_power *= n

# if less than 30, take a bigger guess of upper_limit_power
if len(digit_sum_powers) >= 30:
    digit_sum_powers.sort()
    print(digit_sum_powers[29])
  