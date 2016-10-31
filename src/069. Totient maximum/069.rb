require 'prime'

# return phi(n) / n
def phi_norm(n)
  primes = n.prime_division.map(&:first)
  primes.map { |p| 1.0 - 1.0 / p }.inject(:*)
end

puts (2 .. 1_000_000).min_by {|n| phi_norm(n)}
