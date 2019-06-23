require 'set'

class Integer
  def begins_pandigital?
    return false if self < 100_000_000
    n = self
    digits = Set.new
    power10 = 10 ** Math.log10(self).floor
    9.times do
      d, n = n.divmod(power10)
      return false if d == 0
      if digits.include? d
        return false
      else
        digits << d
      end
      power10 /= 10
    end
    true
  end

  def ends_pandigital?
    return false if self < 100_000_000
    n = self % 1_000_000_000
    digits = Set.new
    9.times do
      n, d = n.divmod(10)
      return false if d == 0
      if digits.include? d
        return false
      else
        digits << d
      end
    end
    true
  end
end

k = 2
fa, fb = 1, 1
while true
  fa, fb = fb, fa + fb
  k += 1
  if fb.ends_pandigital? and fb.begins_pandigital?
    puts k
    break
  end
end