require 'prime'
require 'set'

upper_limit = 10 ** 6

primes = []
Prime.each(upper_limit) {|p| primes << p}

squares = []
n = 0 # include 0 to cross out primes
while n * n < upper_limit / 2
  squares << n * n * 2
  n += 1
end

sieve = Set.new
primes.each do |p|
  squares.each do |s|
    break if p + s > upper_limit
    sieve.add(p + s)
  end
end

9.step(upper_limit, 2) do |n|
  if not sieve.include? n
    puts n
    break
  end
end
