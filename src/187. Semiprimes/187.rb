require 'prime'

upper_limit = 10 ** 8
primes = []
Prime.each(upper_limit / 2) {|p| primes << p}

count = 0
0.upto(primes.size - 1) do |i|
  j = primes.size - 1
  upper_bound = upper_limit / primes[i]
  # could be furthur optimized with binary search
  j -= 1 while primes[j] > upper_bound
  break if j < i
  count += j - i + 1
end
puts count
