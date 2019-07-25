def is_palindrome(n):
    return str(n)[::-1] == str(n)

max_n = 0
for a in range(999, 100, -1):
    for b in range(999, 100, -1):
        n = a * b
        if n > max_n and is_palindrome(n):
            max_n = n
print(max_n)
