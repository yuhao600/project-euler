factorial = [1]
for d in range(1, 10):
    factorial.append(factorial[-1] * d)

def digit_fact(n):
    return sum([factorial[int(d)] for d in str(n)])

total = 0
# estimated upper limist, because 9! * 6 < 999999
upper_limit = 999999
for n in range(10, upper_limit):
    if n == digit_fact(n):
        total += n
print(total)
