function to_sorted(n)
  local sorted = {}
  for d in tostring(n):gmatch("%d") do
    table.insert(sorted, d)
  end
  table.sort(sorted)
  return table.concat(sorted)
end

local n = 1
while true do
  if to_sorted(n) == to_sorted(n * 2)
      and to_sorted(n) == to_sorted(n * 3)
      and to_sorted(n) == to_sorted(n * 4)
      and to_sorted(n) == to_sorted(n * 5)
      and to_sorted(n) == to_sorted(n * 6) then
    print(n)
    break
  end
  n = n + 1
end
