function minimize_roman(r)
  return r:gsub("VIIII", "IX")
    :gsub("IIII", "IV")
    :gsub("LXXXX", "XL")
    :gsub("XXXX", "XC")
    :gsub("DCCCC", "CM")
    :gsub("CCCC", "CD")
end

local diff = 0
for r in io.lines("p089_roman.txt") do
  diff = diff + (#r - #minimize_roman(r))
end
print(diff)
