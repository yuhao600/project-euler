require 'prime'

# https://en.wikipedia.org/wiki/Out_shuffle
# The number of out shuffles required to return a deck of cards of even size, N, 
# to its original order is given by the multiplicative order of 2 modulo (N − 1).

shuffle_num = 60

all_factors = [1]
(2 ** shuffle_num - 1).prime_division.each do |pe|
  p, e = pe[0], pe[1]
  new_factors = []
  all_factors.each do |f|
    1.upto(e) do |m|
      new_factors << f * (p ** m)
    end
  end
  all_factors += new_factors
end

# https://en.wikipedia.org/wiki/Multiplicative_order
# In number theory, given an integer a and a positive integer n with gcd(a,n) = 1, 
# the multiplicative order of a modulo n is the smallest positive integer k with
# a^k = 1 mod n

# we know that 2^k mod n = 1, but k might not be the smallest value
def verify_ord(n, k)
  1.upto(k - 1) do |e|
    return false if 2 ** e % n == 1
  end
  true
end

sum = 0
all_factors.each do |f|
  next if f == 1
  if verify_ord(f, shuffle_num)
    sum += f + 1
  end
end
puts sum
