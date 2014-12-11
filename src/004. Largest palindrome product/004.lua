function IsDividable(num)
  for n1 = 999, 100, -1 do
    for n2 = n1, 100, -1 do
      if num == n1 * n2 then
        return true
      end
    end
  end
  return false
end

for a = 9, 1, -1 do
  for b = 9, 0, -1 do
    for c = 9, 0, -1 do
      num = 100001 * a + 10010 * b + 1100 * c
      if IsDividable(num) then
        print(num)
        return
      end
    end
  end
end