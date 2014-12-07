values = []
n1 = 1
n2 = 2
while n1 < 4000000
  n1, n2 = n2, n1 + n2
  values << n1
end

puts values.find_all {|i| i % 2 == 0}.inject(:+)