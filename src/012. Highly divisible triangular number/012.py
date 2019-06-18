def num_of_factors(num):
    n = 0
    factor = 1
    while factor * factor < num:
        if num % factor == 0:
            n += 1
        factor += 1
    if factor * factor > num:
        return n * 2
    else:
        # perfect square
        return n * 2 + 1

triangle = 0
i = 1
while True:
    triangle += i
    if num_of_factors(triangle) > 500:
        print(triangle)
        break
    i += 1
