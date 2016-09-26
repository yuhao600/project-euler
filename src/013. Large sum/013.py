from functools import reduce
import operator

with open('013.txt') as f:
    nums = []
    for line in f:
        nums.append(int(line))
    sum = reduce(operator.add, nums)
    print(str(sum)[0:10])
