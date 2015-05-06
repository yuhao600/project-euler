require 'prime'

class Fixnum
  def to_sorted
    self.to_s.chars.sort.join
  end
end

primes = Prime.each(10000).to_a.keep_if {|p| p > 1000}
counter = Hash.new {|hash, key| hash[key] = []}
primes.each { |p| counter[p.to_sorted] << p }
candidates = counter.keep_if {|k, v| v.size >= 3 }.values

result = []
candidates.each do |a|
  a.combination(3) do |b|
    if b[1] - b[0] == b[2] - b[1]
      result << b 
    end
  end
end

puts result.keep_if { |a| a[0] != 1487}[0].map(&:to_s).join
