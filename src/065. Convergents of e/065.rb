# n starts from 2
def fraction_seq(n)
  if n % 3 == 0
    n / 3 * 2
  else
    1
  end
end

e = 0
100.downto(2) do |n|
  e = Rational('1') / (fraction_seq(n) + e)
end
e += 2
puts e.numerator.to_s.chars.map(&:to_i).inject(:+)
