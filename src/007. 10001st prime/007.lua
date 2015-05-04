--Sieve of Eratosthenes
local t = {}
for i = 1, 200000 do
  t[i] = true
end
t[1] = false  -- 1 is not prime

local factor = 2
while factor <= math.sqrt(#t) do
  for i = factor * 2, #t, factor do
    if t[i] == true then
      t[i] = false
    end
  end
  repeat
    factor = factor + 1
  until t[factor] == true
end

local count = 0
for i = 1, 200000 do
  if t[i] then
    count = count + 1
  end
  if count == 10001 then
    print(i)
    break
  end
end