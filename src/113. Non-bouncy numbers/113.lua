local digit_max = 100

-- increasing numbers, the index is number of digits
local inc = {}
inc[1] = {}
for d = 1, 9 do
  inc[1][d] = 1
end
for e = 2, digit_max do
  inc[e] = {}
  for d = 1, 9 do
    inc[e][d] = 0
    for s = d, 9 do
      inc[e][d] = inc[e][d] + inc[e - 1][s]
    end
  end
end

-- decreasing numbers
local dec = {}
dec[1] = {}
dec[1][0] = 0
for d = 1, 9 do
  dec[1][d] = 1
end
for e = 2, digit_max do
  dec[e] = {}
  dec[e][0] = 0
  for d = 1, 9 do
    dec[e][d] = 1 -- followed by all zero digits
    for s = 0, d do
      dec[e][d] = dec[e][d] + dec[e - 1][s]
    end
  end
end

local bouncy_count = 0
for e = 1, digit_max do
  for _, v in ipairs(inc[e]) do
    bouncy_count = bouncy_count + v
  end
  for k, v in pairs(dec[e]) do
    bouncy_count = bouncy_count + v
  end
  -- numbers with all equal digits are both increasing and decreasing
  bouncy_count = bouncy_count - 9
end

print(bouncy_count)
