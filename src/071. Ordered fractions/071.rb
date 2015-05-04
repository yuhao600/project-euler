best = 0

1.upto(1_000_000) do |d|
  n = d * 3 / 7
  r = Rational(n, d)
  if r < Rational(3, 7) and r > best
    best = r
  end
end

puts best.numerator