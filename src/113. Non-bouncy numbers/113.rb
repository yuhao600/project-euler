digit_max = 100

# increasing numbers, the index is number of digits
inc = []
inc[0] = []
inc[1] = [0] + [1] * 9
2.upto(digit_max) do |e|
  inc[e] = [0]
  1.upto(9) do |d|
    inc[e][d] = inc[e - 1][d, 10 - d].inject(:+)
  end
end

# decreasing numbers
dec = []
dec[0] = []
dec[1] = [0] + [1] * 9
2.upto(digit_max) do |e|
  dec[e] = [0]
  1.upto(9) do |d|
    dec[e][d] = dec[e - 1][0, d + 1].inject(:+) + 1
  end
end

bouncy_count = 0
1.upto(digit_max) do |e|
  # numbers with all equal digits are both increasing and decreasing
  bouncy_count += inc[e].inject(:+) + dec[e].inject(:+) - 9
end
puts bouncy_count
