import math

max_line_no = 0

with open("p099_base_exp.txt") as f:
    line_no = 1
    max = 0
    for line in f:
        base, exp = map(int, line.split(','))
        current = exp * math.log(base)
        if current > max:
            max = current
            max_line_no = line_no
        line_no += 1

print(max_line_no)
