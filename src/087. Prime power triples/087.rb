require 'prime'
require 'set'

upper_limit = 50_000_000

prime_power2 = Prime.each(Math.sqrt(upper_limit)).to_a
prime_power3 = prime_power2.take_while { |p| p < upper_limit ** (1.0 / 3) }
prime_power4 = prime_power2.take_while { |p| p < upper_limit ** (1.0 / 4) }

prime_triples = Set.new
prime_power2.each do |p2|
  prime_power3.each do |p3|
    prime_power4.each do |p4|
      candidate = p2 ** 2 + p3 ** 3 + p4 ** 4
      prime_triples.add(candidate) if candidate <= upper_limit
    end
  end
end

puts prime_triples.size
