function num_of_factors(num)
  n = 0
  factor = 1
  while factor < math.sqrt(num) do
    if num % factor == 0 then
      n = n + 1
    end
    factor = factor + 1
  end
  return n * 2
end

triangle = 0
for i = 1, math.huge do
  triangle = triangle + i
  if num_of_factors(triangle) > 500 then
    print(triangle)
    break
  end
end
