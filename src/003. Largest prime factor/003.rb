require 'prime'

num = 600851475143
factors = []
Prime.each do |prime|
  while num % prime == 0
    factors << prime
    num /= prime
  end
  break if num == 1
end

puts factors.max