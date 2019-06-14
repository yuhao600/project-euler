function gen_primes(n)
  --Sieve of Eratosthenes
  local sieve = {}
  for i = 1, n do
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

