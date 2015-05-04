require 'prime'
pandigital = []
9.downto(1) do |digit|
  (1 .. digit).to_a.permutation(digit).each do |arr|
    num = 0
    arr.each do |d|
      num = num * 10 + d
    end
    pandigital << num if Prime.prime? num
  end
end

puts pandigital.max