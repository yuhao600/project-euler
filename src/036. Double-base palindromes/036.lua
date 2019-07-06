function bin_str(n)
  local str = ""
  while n ~= 0 do
    str = tostring(n % 2) .. str
    n = math.floor(n / 2)
  end
  return str
end

function is_palindrome(str)
  for i = 1, #str / 2 do
    if string.byte(str, i) ~= string.byte(str, -i) then
      return false
    end
  end
  return true
end

local sum = 0

for i = 1, 1000000 do
  if is_palindrome(tostring(i)) and is_palindrome(bin_str(i)) then
    sum = sum + i
  end
end

print(sum)