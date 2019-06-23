def pandigital(s)
  return false if s.size != 9
  s.chars.sort.join == '123456789'
end

result = []
1.upto(99) do |a|
  10.upto(9999) do |b|
    c = a * b
    if pandigital(a.to_s + b.to_s + c.to_s)
      result << c
    end
  end
end

puts result.uniq.inject(:+)