require 'prime'

Primes = {}
Prime.each(100_000_000) { |p| Primes[p] = true}

class Fixnum
  def prime_generating?
    n = 1
    while n * n <= self
      if self % n == 0
        if not Primes[n + self / n]
          return false
        end
      end
      n += 1
    end
    true
  end
end

result = []
1.upto(100_000_000) do |num|
  result << num if num.prime_generating?
end

puts result.inject(:+)
