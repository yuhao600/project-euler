class Integer
  def to_sorted
    self.to_s.chars.sort.join
  end
end

counter = Hash.new {|hash, key| hash[key] = []}
n = 1
result = while true
  cube = n ** 3
  sorted = cube.to_sorted
  arr = counter[sorted] 
  arr << cube
  break arr if arr.size == 5
  n += 1
end

puts arr.min