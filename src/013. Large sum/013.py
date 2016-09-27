with open('013.txt') as f:
    nums = []
    for line in f:
        nums.append(int(line))
    total = sum(nums)
    print(str(total)[0:10])
