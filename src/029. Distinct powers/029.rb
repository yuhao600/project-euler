nums = []

2.upto(100) do |a|
  2.upto(100) do |b|
    nums << a ** b
  end
end

puts nums.uniq.size