local chain_result = {}

function sum_square(num)
  sum = 0
  while num > 0 do
    sum = sum + (num % 10) ^ 2
    num = math.floor(num / 10)
  end
  return sum
end

function chain(num)
  local t = {}
  local result
  while not chain_result[num] do
    if num == 1 or num == 89 then
      result = num
      break
    end
    table.insert(t, num)
    num = sum_square(num)
  end
  if not result then
    result = chain_result[num]
  end
  for k, v in ipairs(t) do
    chain_result[v] = result
  end
  return result
end

local count = 0
for i = 1, 10000000 do
  if chain(i) == 89 then
    count = count + 1
  end
end

print(count)