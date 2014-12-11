function binStr(n)
  local str = ""
  while n ~= 0 do
    str = tostring(n % 2) .. str
    n = math.floor(n / 2)
  end
  return str
end

function isRevert(str)
  for i = 1, #str / 2 do
    if string.byte(str, i) ~= string.byte(str, -i) then
      return false
    end
  end
  return true
end

local sum = 0

for i = 1, 1000000 do
  if isRevert(tostring(i)) and isRevert(binStr(i)) then
    sum = sum + i
  end
end

print(sum)