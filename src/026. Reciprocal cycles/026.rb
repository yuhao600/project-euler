class Fixnum
  def fracCycle
    num = self
    num /= 2 while num % 2 == 0
    num /= 5 while num % 5 == 0
    return 0 if num == 1
	
    cycle = 1
    cycle += 1 while ('9' * cycle).to_i % num != 0
    cycle
  end
end

max = 1
1.upto(1000) do |n|
  max = n if n.fracCycle > max.fracCycle
end

puts max