s = ""
n = 0
while len(s) <= 1000000:
    s += str(n)
    n += 1
prod = 1
for i in range(0, 7):
    prod *= int(s[10 ** i])
print(prod)
