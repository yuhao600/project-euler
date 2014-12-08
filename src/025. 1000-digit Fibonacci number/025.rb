i, fa, fb = 1, 1, 1
fa, fb, i = fb, fa + fb, i + 1 until fa > 10 ** 999
puts i