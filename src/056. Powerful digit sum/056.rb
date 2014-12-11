max = 0
1.upto(100) do |a|
  1.upto(100) do |b|
    exp = a ** b
    digit_sum = 0
    while exp > 0
      digit_sum += exp % 10
      exp /= 10
    end
    if digit_sum > max
      max = digit_sum
    end
  end
end

puts max