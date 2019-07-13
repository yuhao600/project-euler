import math

def is_palindrome(n):
    return str(n) == str(n)[::-1]

# if the result is not enough, take a bigger guess
upper_limit = 10 ** 9

squares = []
for a in range(2, int(math.sqrt(upper_limit))):
    squares.append(a * a)

cubes = []
b = 2
while b * b * b < upper_limit:
    cubes.append(b * b * b)
    b += 1

candidates = {}
for s in squares:
    for c in cubes:
        if is_palindrome(s + c):
            count = candidates.get(s + c, 0)
            candidates[s + c] = count + 1

result = []
for k, v in candidates.items():
    if v == 4:
        result.append(k)

if len(result) >= 5:
    result.sort()
    print(sum(result[0:5]))
