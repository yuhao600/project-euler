def num3(arr, index)
  arr[index - 1] * 100 + arr[index] * 10 + arr[index + 1]
end

pandigital = []
(0 .. 9).to_a.permutation(10).each do |arr|
  if arr[0] != 0 and num3(arr, 2) % 2 == 0 and num3(arr, 3) % 3 == 0 and num3(arr, 4) % 5 == 0 and num3(arr, 5) % 7 == 0 and num3(arr, 6) % 11 == 0 and num3(arr, 7) % 13 == 0 and num3(arr, 8) % 17 == 0
	num = 0
	arr.each {|d| num = num * 10 + d}     
    pandigital << num
  end
end

puts pandigital.inject(:+)