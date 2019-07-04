function nim_win(n)
  return n ~ n * 2 ~ n * 3 == 0
end

count = 0
for n = 1, 1 << 30 do
  if nim_win(n) then
    count = count + 1
  end
end
print(count)
