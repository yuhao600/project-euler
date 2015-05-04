require 'prime'

sum = 0
max = 0
Prime.each do |prime|
  sum += prime
  result = sum
  Prime.each(prime) do |small|
    if Prime.prime? result
      max = result if result > max and result < 1000000
      break
    end
    result -= small
  end
  break if result > 1000000
end

puts max