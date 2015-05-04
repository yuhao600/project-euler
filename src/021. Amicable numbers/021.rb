def d(num)
  divisors = []
  1.upto(Integer(Math.sqrt(num))) do |n|
    if num % n == 0
      divisors << n
      if num / n != n and n != 1
        divisors << num / n
      end
    end
  end
  divisors.inject(:+)
end

amicable = []
1.upto(10000) do |num|
  amicable << num if d(d(num)) == num and d(num) != num
end

puts amicable.inject(:+)