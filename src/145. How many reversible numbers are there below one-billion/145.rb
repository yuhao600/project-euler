def reversible_count(d)
  case d % 4
  when 1 then 0
  # 2 digits: no carry over, and sum of two digits is odd
  # 2 digits => 20
  # 4 digits: outer pair is the same as 2 digits
  #           inner pair has 30 possibilities because 0 is allowed
  when 0, 2 then 20 * 30 ** (d / 2 - 1)
  # the first and third digit must be odd and gives carry over: 20 possiblilities
  # middle digit: add to itself, no carry over: 5 possibilities
  # 4 digits: same as before, no leading zero		
  when 3 then 100 * 500 ** ((d - 3) / 4)
  end
end

puts (1 .. 9).map{|d| reversible_count(d)}.inject(:+)
