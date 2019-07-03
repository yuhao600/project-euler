class Integer
  def is_palindrome?
    self.to_s == self.to_s.reverse
  end
end

# if the result is not enough, take a bigger guess
upper_limit = 10 ** 9

squares = []
2.upto(Math.sqrt(upper_limit).floor) do |a|
  squares << a * a
end

cubes = []
b = 2
while b * b * b < upper_limit
  cubes << b * b * b
  b += 1
end

candidates = Hash.new(0)
squares.each do |s|
  cubes.each do |c|
    candidates[s + c] += 1 if (s + c).is_palindrome?
  end
end

candidates.keep_if {|k, v| v == 4}
if candidates.size >= 5
  puts candidates.keys.min(5).inject(:+)
end
