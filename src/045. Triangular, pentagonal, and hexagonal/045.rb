triangle, pentagonal, hexagonal = [], [], []
1.upto(100000) do |n|
  triangle << n * (n + 1) / 2
  pentagonal << n * (3 * n - 1) / 2
  hexagonal << n * (2 * n - 1)
end

puts (triangle & pentagonal & hexagonal).keep_if {|num| num > 40755}.min
