local a1, a2 = 1, 2
local sum = 0

while a1 < 4000000 do
  a1, a2 = a2, a1 + a2
  if a1 % 2 == 0 then
    sum = sum + a1
  end
end

print(sum)