function score(name)
  total = 0
  for c in name:gmatch("%u") do
    total = total + c:byte() - string.byte('A') + 1
  end
  return total
end

local f = io.open("p022_names.txt")
local all_names = f:read()
local names = {}
for name in all_names:gmatch('"(%u+)"') do
  table.insert(names, name)
end
table.sort(names)
total_score = 0
for index, name in ipairs(names) do
  total_score = total_score + index * score(name)
end
print(total_score)
