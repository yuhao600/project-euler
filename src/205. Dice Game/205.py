from fractions import Fraction

def roll(dices, times):
    counter = {}
    for d in dices:
        counter[d] = 1
    for t in range(1, times):
        acc = {}
        for k, v in counter.items():
            for d in dices:
                acc[k + d] = acc.get(k + d, 0) + v
        counter = acc
    return counter
  
pyramidal = roll([1, 2, 3, 4], 9)
cubic = roll([1, 2, 3, 4, 5, 6], 6)

pyramidal_pr = {}
for k, v in pyramidal.items():
    pyramidal_pr[k] = Fraction(v, 4 ** 9)

cubic_pr = {}
for k, v in cubic.items():
    cubic_pr[k] = Fraction(v, 6 ** 6)

beats_pr = 0
for p, p_pr in pyramidal_pr.items():
    for c, c_pr in cubic_pr.items():
        if p > c:
            beats_pr += p_pr * c_pr

print("%.7f" % float(beats_pr))
