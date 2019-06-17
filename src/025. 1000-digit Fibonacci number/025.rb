index, fa, fb = 1, 1, 1
fa, fb, index = fb, fa + fb, index + 1 until fa > 10 ** 999
puts index
