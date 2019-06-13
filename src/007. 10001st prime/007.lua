--Sieve of Eratosthenes
local sieve = {}
for i = 1, 200000 do
  sieve[i] = true
end
sieve[1] = false  -- 1 is not prime

local factor = 2
while factor <= math.sqrt(#sieve) do
  for i = factor * 2, #sieve, factor do
    sieve[i] = false
  end
  repeat
    factor = factor + 1
  until sieve[factor] == true
end

local count = 0
for i = 1, 200000 do
  if sieve[i] then
    count = count + 1
  end
  if count == 10001 then
    print(i)
    break
  end
end