require 'set'

class Integer
  def pandigital?
    return false if self < 100_000_000
    digits = Set.new
    n = self
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

  def begins_pandigital?
    self.to_s[0, 9].to_i.pandigital?
  end

  def ends_pandigital?
    (self % 1_000_000_000).pandigital?    
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