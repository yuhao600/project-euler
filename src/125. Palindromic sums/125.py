def is_palindrome(n):
    return str(n)[::-1] == str(n)

squares = [0]
for i in range(1, 10 ** 4):
    squares.append(i * i)

result = set()
for i in range(1, len(squares)):
    n = squares[i]
    for j in range(i + 1, len(squares)):
        n += squares[j]
        if n > 10 ** 8:
            break
        if is_palindrome(n):
            result.add(n)

print(sum(result))
