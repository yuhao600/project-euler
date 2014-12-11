path = {}
m = 0
n = 0
for m = 0, 20 do
  for n = m, 20 do
    print("path " .. m .. " " .. n)
    if m == 0 then
      path[m .. "_" .. n] = 1
    elseif m == n then
      path[m .. "_" .. n] = path[(m - 1) .. "_" .. n] * 2
    else
      path[m .. "_" .. n] = path[(m - 1) .. "_" .. n] + path[m .. "_" .. (n - 1)]
    end
  end
end

print(path[20 .. "_" .. 20])