fraction = Rational(3, 2)
count = 0
1000.times do
  if fraction.numerator.to_s.length > fraction.denominator.to_s.length
    count += 1
  end
  fraction = 1 / (1 + fraction) + 1
end
puts count