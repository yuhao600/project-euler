count = 0
n = 1
loop do
  start = ((10 ** (n - 1)) ** (1.0 / n)).ceil
  count += 9 - start + 1
  n += 1
  break if start > 9
end
puts count
