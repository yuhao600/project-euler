# From the Binomial Theorem
# (((a - 1)^n + (a + 1)^n)) % a^2
# = (na(-1)^(n - 1) + (-1)^n) % a^2
# = 2na % a^2 when n is odd
# = 2   % a^2 when n is even
# So the maximum of r is 2na in which 2n < a, or a * (maximum even number smaller than a)

class Integer
  def r_max()
    if self % 2 == 0
      self * (self - 2)
    else
      self * (self - 1)
    end
  end
end

puts (3 .. 1000).to_a.map(&:r_max).inject(:+)
