i, fa, fb = 1, 1, 1
while fa < 10 ** 999:
    fa, fb, i = fb, fa + fb, i + 1
    
print(i)
