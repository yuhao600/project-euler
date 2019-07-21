local count = 0
for n = 1, math.huge do
  start = math.ceil((10 ^ (n - 1)) ^ (1.0 / n))
  count = count + 9 - start + 1
  if start > 9 then
    break
  end
end
print(count)
