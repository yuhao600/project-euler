require 'prime'

# From the Binomial Theorem
# (((p - 1)^n + (p + 1)^n)) % p^2
# = (np(-1)^(n - 1) + (-1)^n) % p^2
# = 2np % p^2 when n is odd
# = 2         when n is even
def square_remainder(n, p)
  2 * n * p % (p * p)
end

n = 1
Prime.each do |p|
  if n.even?
    n += 1
    next
  end
  if square_remainder(n, p) > 10 ** 10
    puts n
    break
  end
  n += 1
end
