require 'prime'

class Integer
  def sum_digits
    self.to_s.chars.map(&:to_i).inject(:+)
  end

  def harshad?
    d = self.sum_digits
    self % d == 0
  end

  # assumes that it's already tested a Harshad
  def strong?
    d = self.sum_digits
    (self / d).prime?
  end
end

right_truncatable_harshads = []
right_truncatable_harshads[0] = (1 .. 9).to_a
prime_right_truncatable_harshads = []
1.upto(13) do |i|
  right_truncatable_harshads[i] = []
  right_truncatable_harshads[i - 1].each do |h|
    is_h_strong = h.strong?
    0.upto(9) do |d|
      n = h * 10 + d
      if n.harshad?
        right_truncatable_harshads[i] << n 
      end
      if is_h_strong and n.prime?
        prime_right_truncatable_harshads << n 
      end
    end
  end
end

puts prime_right_truncatable_harshads.inject(:+)
