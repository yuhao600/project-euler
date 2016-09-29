from itertools import permutations

def num3(arr, index):
    return arr[index - 1] * 100 + arr[index] * 10 + arr[index + 1]

pandigital = []
for arr in permutations(range(0, 10)):
    if arr[0] != 0 and num3(arr, 2) % 2 == 0 and num3(arr, 3) % 3 == 0 and num3(arr, 4) % 5 == 0 and num3(arr, 5) % 7 == 0 and num3(arr, 6) % 11 == 0 and num3(arr, 7) % 13 == 0 and num3(arr, 8) % 17 == 0:
        num = 0
        num = int(''.join([str(d) for d in arr]))
        pandigital.append(num)

print(sum(pandigital))
