arr = []
999.downto(100) do |a|
  999.downto(100) do |b|
    num = a * b
    if num == num.to_s.reverse.to_i
      arr << num 
    end
  end
end

puts arr.max