function fracCycle(n)
  local r = 1
  local fract = {}
  while r ~= 0 do
    while r < n do
      r = r * 10
    end
    r = r % n
    if r == 0 then
      return 0
    elseif fract[r] == true then
      local len = 0
      for i = 1, 1000 do
        if fract[i] == true then
          len = len + 1
        end
      end
      if n >= 100 then
        len = len * 3
      elseif n >= 10 then
        len = len * 2
      end
      return len
    else
      fract[r] = true
    end
  end
end

local max = 0
local maxNum = 0
for i = 1, 1000 do
  local c = fracCycle(i)
  if c > max then
    max = c
    maxNum = i
  end
end

print(maxNum)