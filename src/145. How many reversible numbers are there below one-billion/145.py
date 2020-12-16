def reversible_count(d):
    if d % 4 == 1:
        return 0
    # 2 digits: no carry over, and sum of two digits is odd
    # 2 digits => 20
    # 4 digits: outer pair is the same as 2 digits
    #           inner pair has 30 possibilities because 0 is allowed
    if d % 4 == 0 or d % 4 == 2:
        return 20 * 30 ** (d // 2 - 1)
    # the first and third digit must be odd and gives carry over: 20 possibilities
    # middle digit: add to itself, no carry over: 5 possibilities
    # 4 digits: same as before, no leading zero		
    if d % 4 == 3:
        return 100 * 500 ** ((d - 3) // 4)

print(sum([reversible_count(d) for d in range(1, 10)]))
