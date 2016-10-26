def is_lychrel(num):
    i = 0
    while i < 50:
        num = num + int(str(num)[::-1])
        if num == int(str(num)[::-1]):
            return False
        i += 1
    return True

counter = 0
for i in range(1, 10001):
    if is_lychrel(i):
        counter += 1

print(counter)
