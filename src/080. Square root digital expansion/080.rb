require 'bigdecimal'
require 'bigdecimal/math'

class Integer
  def get_100_digits_sqrt
    sqrt = BigMath.sqrt(BigDecimal.new(self.to_s), 100).to_s
    match = /\.(\d{100})/.match(sqrt)
    if match
      match[1].chars.map(&:to_i).inject(:+)
    else
      0
    end
  end
end

puts (1 .. 100).map(&:get_100_digits_sqrt).inject(:+)
