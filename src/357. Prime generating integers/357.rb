require 'prime'

$primes = {}
Prime.each(100_000_000) { |p| $primes[p] = true}

class Integer
  def prime_generating?
    n = 1
    while n * n <= self
      if self % n == 0
        if not $primes[n + self / n]
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
