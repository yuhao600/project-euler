sum10digit = 0
1.upto(1000) do |n|
  sum10digit += n ** n
  sum10digit %= 10 ** 10
end

puts(sum10digit)