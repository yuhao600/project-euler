local coins = {1, 2, 5, 10, 20, 50, 100, 200}
local amount = 200
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
