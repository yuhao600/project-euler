def isLychrel(num)
  i = 0
  while i < 50
    num = num + num.to_s.reverse.to_i
    if num == num.to_s.reverse.to_i
      return false
    end
    i += 1
  end
  return true
end

arr = []
1.upto(10000) { |num| arr << num if isLychrel(num)}
puts arr.length