require 'prime'

class Fixnum
  def num_of_factors
    self.prime_division.map { |a| a[1] + 1 }.inject(:*)
  end
end

triangle = 1
i = 2
while true
  triangle += i
  if triangle.num_of_factors > 500
    puts triangle
    break
  end
  i += 1
end
