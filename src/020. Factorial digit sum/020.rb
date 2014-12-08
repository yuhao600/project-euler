sum = 0
factorial = (1 .. 100).inject(:*)
while factorial > 0
  sum += factorial % 10
  factorial /= 10
end

puts sum