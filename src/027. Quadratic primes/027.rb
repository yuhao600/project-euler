require 'prime'

max = 0
result = []
(-999).upto(999) do |a|
  (-999).upto(999) do |b|
    n = 0
	begin
      q = n * n + a * n + b
      n += 1
    end	while Prime.prime? q
	if n > max
	  max = n
	  result = [a, b]
	end
  end
end

puts result.inject(:*)