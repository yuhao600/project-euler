def sum_of_fifth_power(num):
    sum = 0
    while num > 0:
        sum += (num % 10) ** 5
        num /= 10
    return sum

result = []
for num in range(2, 1000000):
    if sum_of_fifth_power(num) == num:
        result.append(num)

print(sum(result))
