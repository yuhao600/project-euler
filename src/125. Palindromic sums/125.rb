require 'set'

class Integer
  def palindrome?
    self.to_s.reverse == self.to_s
  end
end

squares = [0]
1.upto(10 ** 4) {|i| squares << i * i}

result = Set.new
1.upto(squares.size - 1) do |i|
  sum = squares[i]
  (i + 1).upto(squares.size - 1) do |j|
    sum += squares[j]
    break if sum > 10 ** 8
    result.add(sum) if sum.palindrome?
  end
end
puts result.each.inject(:+)
