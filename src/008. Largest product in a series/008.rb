num_str = File.read('008.txt')
digits = num_str.chars.map(&:to_i)
max_product = 0
0.upto(digits.length - 12) do |i|
  product = digits[i, 13].inject(:*)
  max_product = product if max_product < product
end

puts max_product
