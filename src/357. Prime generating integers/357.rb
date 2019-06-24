require 'prime'

upper_limit = 100_000_000
primes = Array.new(upper_limit + 1, false)
Prime.each(upper_limit) {|p| primes[p] = true}

prime_gens = Array.new(upper_limit + 1, true)
1.upto(upper_limit) do |d|
  d.upto(upper_limit / d) do |k|
    break if d + k > upper_limit
    if prime_gens[d * k] and not primes[d + k]
      prime_gens[d * k] = false
    end
  end
end

sum = 0
prime_gens.each_with_index do |n, i|
  sum += i if n
end
puts sum
