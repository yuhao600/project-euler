require 'prime'
require 'set'

primes = []
Prime.each(1_000_000) { |p| primes << p }
set_of_primes = primes.to_set

circular_primes = [2, 5]
primes.each do |p|
  chars = p.to_s.chars
  next if chars.any? { |c| '024685'.include? c }
  if (1 ... chars.size).all? { |d| set_of_primes.include? chars.rotate(d).join.to_i }
    circular_primes << p
  end
end

puts circular_primes.size
