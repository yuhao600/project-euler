function gen_primes(n)
  --Sieve of Eratosthenes
  local sieve = {}
  for i = 1, n do
    if i % 2 == 0 then
      sieve[i] = false
    else
      sieve[i] = true
    end
  end
  sieve[1] = false  -- 1 is not prime
  sieve[2] = true -- 2 is the only even prime
  
  local factor = 3
  while factor <= math.sqrt(#sieve) do
    for i = factor * factor, #sieve, factor do
      sieve[i] = false
    end
    repeat
      factor = factor + 2
    until sieve[factor] == true
  end
  return sieve
end

local n = 2000000
primes = gen_primes(n)
local sum = 0
for i = 1, n do
  if primes[i] then
    sum = sum + i
  end
end

print(sum)

