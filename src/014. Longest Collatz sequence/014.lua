function chains(n)
  ch = 1
  while n ~= 1 do
    if n % 2 == 0 then
      n = n /2
    else
      n = n * 3 + 1
    end
    ch = ch + 1
  end
  return ch
end

local max = 0
local res = 0
for n = 1, 1000000 do
  ch = chains(n)
  if ch > max then
    max = ch
    res = n
  end
end

print(res)