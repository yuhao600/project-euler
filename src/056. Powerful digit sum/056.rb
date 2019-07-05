class Integer
  def digit_sum
    n = self
    digits = 0
    while n > 0
      digits += n % 10
      n /= 10
    end
    return digits
  end
end

max = 0
1.upto(99) do |a|
  1.upto(99) do |b|
    exp = a ** b
    if exp.digit_sum > max
      max = exp.digit_sum
    end
  end
end

puts max
