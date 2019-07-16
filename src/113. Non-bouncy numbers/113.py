digit_max = 100

# increasing numbers, the index is number of digits
inc = []
inc.append([])
inc.append([0] + [1] * 9)
for e in range(2, digit_max + 1):
    inc.append([0])
    for d in range(1, 10):
        inc[e].append(sum(inc[e - 1][d:10]))

# decreasing numbers
dec = []
dec.append([])
dec.append([0] + [1] * 9)
for e in range(2, digit_max + 1):
    dec.append([0])
    for d in range(1, 10):
        dec[e].append(sum(dec[e - 1][0:(d + 1)]) + 1)

bouncy_count = 0
for e in range(1, digit_max + 1):
    # numbers with all equal digits are both increasing and decreasing
    bouncy_count += sum(inc[e]) + sum(dec[e]) - 9

print(bouncy_count)
