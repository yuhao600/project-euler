from functools import reduce
import operator

factorial = reduce(operator.mul, range(1, 101))
print(sum([int(c) for c in str(factorial)]))
