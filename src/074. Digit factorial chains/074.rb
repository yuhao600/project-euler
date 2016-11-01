require 'set'

$factorial = [1]
1.upto(9) { |d| $factorial[d] = $factorial[d - 1] * d}

def digit_fact(n)
  n.to_s.chars.map { |d| $factorial[d.to_i] }.inject(:+)
end

counter = 0
1.upto(10 ** 6) do |n|
  m = n
  sequence = Set.new
  begin
    sequence.add(m)
    m = digit_fact(m)
  end until sequence.include?(m)
  if sequence.size == 60
    counter += 1
  end
end

puts counter
