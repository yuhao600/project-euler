from itertools import permutations

print(''.join([str(d) for d in list(permutations(range(0, 10)))[999999]]))
