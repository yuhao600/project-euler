require 'prime'

class Integer
  def scan_left
    left = []
    d = 1
    while self > 10 ** d
      left << self % 10 ** d
      d += 1
    end
    left
  end

  def scan_right
    n = self
    right = []
    while n > 10
      n = n / 10
      right << n
    end
    right
  end
end

truncatable = []
Prime.each do |p|
  if p.prime? and p.scan_left.all?(&:prime?) and p.scan_right.all?(&:prime?)
    truncatable << p if p > 10
    break if truncatable.size == 11
  end
end

puts truncatable.inject(:+)
