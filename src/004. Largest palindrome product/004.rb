arr = []
999.downto(100) do |a|
  999.downto(100) do |b|
    num = a * b
    arr << num if num / 100000 == num % 10 and num % 100000 / 10000 == num % 100 / 10 and num % 10000 / 1000 == num % 1000 / 100
  end
end

puts arr.max