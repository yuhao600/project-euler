require 'set'

fractions = Set.new
1.upto(12_000) do |d|
  (d / 3 + 1).upto(d / 2) do |n|
    fractions.add(n.quo(d))
  end
end

puts fractions.size - 1 # remove the number 1/2
