$factorials = [1] # 0!
1.upto(9) do |d|
  $factorials[d] = d * $factorials[d - 1]
end

def sum_of_digit_factorials(num)
  num.to_s.chars.map(&:to_i).map { |d| $factorials[d] }.inject(:+)
end

class Fixnum
  def curious?
    self == sum_of_digit_factorials(self)
  end
end

total = 0
# estimated upper limist, because 9! * 6 < 999999
upper_limit = 999_999
10.upto(upper_limit) do |n|
  total += n if n.curious?
end
puts total
