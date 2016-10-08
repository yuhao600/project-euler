def to_sorted_str(num):
    return ''.join(sorted(str(num)))

n = 1
while True:
    sorted_str = to_sorted_str(n)
    if to_sorted_str(n * 2) == sorted_str and\
         to_sorted_str(n * 3) == sorted_str and\
         to_sorted_str(n * 4) == sorted_str and\
         to_sorted_str(n * 5) == sorted_str and\
         to_sorted_str(n * 6) == sorted_str:
        print(n)
        break
    n += 1
