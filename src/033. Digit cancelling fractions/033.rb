result = []

# a / b
10.upto(99) do |a|
  (a + 1).upto(99) do |b|
    a1 = a / 10
    a2 = a % 10
    b1 = b / 10
    b2 = b % 10
    next if b2 == 0
    if Rational(a, b) == Rational(a1, b2) and a2 == b1
      result << Rational(a, b)
    end
  end
end

puts result.inject(&:*).denominator
	