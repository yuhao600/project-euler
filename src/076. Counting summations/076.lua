local amount = 100
local coins = {}
for i = 1, amount - 1 do
  coins[i] = i
end
local amount = 100
local ways = {}
for i = 0, amount + 1 do
  ways[i] = 0
end
ways[0] = 1
for _, coin in ipairs(coins) do
  for n = coin, amount + 1 do
    ways[n] = ways[n] + ways[n - coin]
  end
end

print(ways[amount])
