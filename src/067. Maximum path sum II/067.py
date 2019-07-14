triangle = []
with open('p067_triangle.txt') as f:
    for line in f:
        triangle.append([int(n) for n in line.split()])

for row in range(1, len(triangle)):
    triangle[row - 1].append(0)
    for col in range(0, len(triangle[row])):
        triangle[row][col] += max(triangle[row - 1][col], triangle[row - 1][col - 1])

print(max(triangle[-1]))
