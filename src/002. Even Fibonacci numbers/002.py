values = []
n1 = 1
n2 = 2
while n1 < 4000000:
    n1, n2 = n2, n1 + n2
    values.append(n1)

print(sum([x for x in values if x % 2 == 0]))
