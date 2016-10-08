function num_of_factors(num)
  local n = 0
  local factor = 1
  while factor < math.sqrt(num) do
    if num % factor == 0 then
      n = n + 1
    end
    factor = factor + 1
  end
  if factor * factor > num then
    return n * 2
  else
    return n * 2 + 1
  end
end

triangle = 0
for i = 1, math.huge do
  triangle = triangle + i
  if num_of_factors(triangle) > 500 then
    print(triangle)
    break
  end
end
