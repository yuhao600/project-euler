factorial = [1]
1.upto(100) do |n| 
  factorial[n] = factorial[n - 1] * n
end

count = 0
1.upto(100) do |n|
  1.upto(n) do |r|
    count += 1 if factorial[n] / factorial[r] / factorial[n - r] > 1_000_000
  end
end

puts count
