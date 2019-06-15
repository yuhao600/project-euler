local max = 0
for a = 999, 100, -1 do
  for b = 999, 100, -1 do
    local num = a * b
    if num == tonumber(tostring(num):reverse()) then
      if num > max then
        max = num
      end
    end
  end
end
print(max)