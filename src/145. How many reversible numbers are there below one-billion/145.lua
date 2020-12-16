function reversible_count(d)
  if d % 4 == 1 then
    return 0
  end
  -- 2 digits: no carry over, and sum of two digits is odd
  -- 2 digits => 20
  -- 4 digits: outer pair is the same as 2 digits
  --           inner pair has 30 possibilities because 0 is allowed
  if d % 4 == 0 or d % 4 == 2 then
    return 20 * 30 ^ (d / 2 - 1)
  end
  -- the first and third digit must be odd and gives carry over: 20 possibilities
  -- middle digit: add to itself, no carry over: 5 possibilities
  -- 4 digits: same as before, no leading zero		
  if d % 4 == 3 then
    return 100 * 500 ^ ((d - 3) / 4)
  end
end

local count = 0
for d = 1, 9 do
  count = count + reversible_count(d)
end
print(string.format("%d", count))
