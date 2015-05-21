sum_of_square = reduce(lambda x, y: x + y, map(lambda x: x * x, range(1, 101)))
sqare_of_sum  = reduce(lambda x, y: x + y, range(1, 101))

print(sqare_of_sum ** 2 - sum_of_square)
