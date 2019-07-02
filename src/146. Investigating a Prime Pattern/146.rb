require 'prime'

upper_limit = 150_000_000
$primes = []
Prime.each(upper_limit + 1) {|p| $primes << p}
$primes.shift # 2 is not needed

def if_prime_pattern(n)
  return false if n % 3 == 0
  return false if n % 7 == 0
  return false if n % 13 == 0

  # (n^2 + 13) % 7 == 0
  return false if n % 7 == 1 or n % 7 == 6
  # (n^2 + 3) % 7 == 0
  return false if n % 7 == 2 or n % 7 == 5
  # (n^2 + 9) % 13 == 0
  return false if n % 13 == 2 or n % 13 == 11
  # (n^2 + 1) % 13 == 0
  return false if n % 13 == 5 or n % 13 == 8
  # (n^2 + 3) % 13 == 0
  return false if n % 13 == 6 or n % 13 == 7

  $primes.each do |p|
    break if p > n + 1
    [1, 3, 7, 9, 13, 27].each do |a|
      return false if (n * n + a) % p == 0
    end
  end

  # tests above primes are consecutive
  [5, 11, 15, 17, 19, 21, 23, 25].each do |b|
    $primes.each do |p|
      # tests up to the biggest prime less than the square root of n * n + 25
      # the condition p > n + 1 works for 10, and certainly works for big enough n
      return false if p > n + 1
      break if (n * n + b) % p == 0
    end
  end
  true
end

sum = 0
# obviously n must be even
# n must be multiples of 5 because
# if n = 5k + 1 or 5k + 4, n^2 + 9 is divisible by 5
# if n = 5k + 2 or 5k + 3, n^2 + 1 is divisible by 5
10.step(upper_limit, 10) do |n|
  sum += n if if_prime_pattern(n)
end
puts sum
