def collatz(num):
    i = 1
    while num != 1:
        i += 1
        if num % 2 == 0:
            num /= 2
        else:
            num = num * 3 + 1
    return i

max_num = 0
max_collatz = 0
for num in range(1, 1000001):
    result = collatz(num)
    if result > max_collatz:
        max_collatz = result
	max_num = num

print(max_num)
