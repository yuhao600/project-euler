def collatz(num)
  i = 1
  while num != 1
    i += 1
    num = case num.even?
            when true  then num / 2
            when false then num * 3 + 1
          end
  end
  i
end

max_num = 0
max_collatz = 0
1.upto(1000000) do |num|
  result = collatz(num)
  if result > max_collatz
    max_collatz = result
	max_num = num
  end
end

puts max_num
