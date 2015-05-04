local num = 600851475143
local max = 0
while num % 2 == 0 do
  num = num / 2
  max = 2
end

for f = 3, num, 2 do
  while num % f == 0 do
    num = num / f
    max = f
  end
  if num == 1 then
    break
  end
end

print(max)