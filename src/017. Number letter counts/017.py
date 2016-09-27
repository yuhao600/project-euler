n = [None] * 1001
n[0] = 'zero'
n[1] = 'one'
n[2] = 'two'
n[3] = 'three'
n[4] = 'four'
n[5] = 'five'
n[6] = 'six'
n[7] = 'seven'
n[8] = 'eight'
n[9] = 'nine'
n[10] = 'ten'
n[11] = 'eleven'
n[12] = 'twelve'
n[13] = 'thirteen'
n[14] = 'fourteen'
n[15] = 'fifteen'
n[16] = 'sixteen'
n[17] = 'seventeen'
n[18] = 'eighteen'
n[19] = 'nineteen'

n[20] = 'twenty'
n[30] = 'thirty'
n[40] = 'forty'
n[50] = 'fifty'
n[60] = 'sixty'
n[70] = 'seventy'
n[80] = 'eighty'
n[90] = 'ninety'

# generate 21-99
for b in range(2, 10):
    for a in range(1, 10):
        n[b * 10 + a] = n[b * 10] + n[a]

for c in range(1, 10):
    n[c * 100] = n[c] + 'hundred'
    for ba in range(1, 100):
        n[c * 100 + ba] = n[c * 100] + 'and' + n[ba]
    
n[1000] = n[1] + 'thousand'

n.pop(0) # remove zero
print(sum([len(num) for num in n]))
