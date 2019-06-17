index, fa, fb = 1, 1, 1
while fa < 10 ** 999:
    fa, fb, index = fb, fa + fb, index + 1
    
print(index)
