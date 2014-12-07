sum_of_square = (1 .. 100).inject { |sum, n| sum + n * n}
sqare_of_sum  = (1 .. 100).inject(:+) ** 2

puts sqare_of_sum - sum_of_square