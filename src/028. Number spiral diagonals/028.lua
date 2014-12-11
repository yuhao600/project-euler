local sum = 1
local n = 1
local step = 2
while n < 1001 * 1001 do
  for i = 1, 4 do
    n = n + step
    sum = sum + n
  end
  step = step + 2
end

print(sum)