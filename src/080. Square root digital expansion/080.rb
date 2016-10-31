require 'bigdecimal'
require 'bigdecimal/math'

def get_100_digits_sqrt(n)
  sqrt = BigMath.sqrt(BigDecimal.new(n.to_s), 100).to_s
  match = /\.(\d{100})/.match(sqrt)
  if match
    match[1].chars[0, 100].map(&:to_i).inject(:+)
  else
    0
  end
end

puts (1 .. 100).map {|n| get_100_digits_sqrt(n) }.inject(:+)
