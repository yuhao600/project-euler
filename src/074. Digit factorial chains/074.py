factorial = [1]
for d in range(1, 10):
    factorial.append(factorial[-1] * d)

def digit_fact(n):
    return sum([factorial[int(d)] for d in str(n)])

counter = 0
for n in range(10 ** 6):
    m = n
    sequence = set()
    while True:
        sequence.add(m)
        m = digit_fact(m)
        if m in sequence:
            break
    if len(sequence) == 60:
        counter += 1

print(counter)
