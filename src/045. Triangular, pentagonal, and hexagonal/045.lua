local triangle, pentagonal, hexagonal = {}, {}, {}
for n = 1, 100000 do
  triangle[n * (n + 1) / 2] = true
  pentagonal[n * (3 * n - 1) / 2] = true
  hexagonal[n * (2 * n - 1)] = true
end

local result = {}
for v in pairs(triangle) do
  if pentagonal[v] and hexagonal[v] then
    table.insert(result, v)
  end
end

table.sort(result)
for _, r in ipairs(result) do
  if r > 40755 then
    print(r)
    break
  end
end
