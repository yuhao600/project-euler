require 'set'

def sum_of_divisors(num)
  sum = 0
  2.upto(Math.sqrt(num)) do |d|
    if num % d == 0
      sum += d
      sum += num / d unless d * d == num
    end
  end
  sum + 1
end

class Integer
  def abundant?
    sum_of_divisors(self) > self
  end
end

all_abundant = []
1.upto(28123) do |n|
  all_abundant << n if n.abundant?
end

sum_of_two_abundants = Set.new
all_abundant.each do |n1|
  all_abundant.each do |n2|
    sum_of_two_abundants.add(n1 + n2) if n1 + n2 <= 28123
  end
end

sum = 0
1.upto(28123) do |n|
  sum += n unless sum_of_two_abundants.include? n
end

puts sum
