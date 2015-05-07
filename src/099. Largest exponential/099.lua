local max = 0
local max_line_no = 0

local f = io.open("p099_base_exp.txt")
local line_no = 1
for line in f:lines() do
  local base, exp = line:match("^(%d+),(%d+)$")
  base, exp = tonumber(base), tonumber(exp)
  current = exp * math.log(base)
  if current > max then
    max = current
    max_line_no = line_no
  end
  line_no = line_no + 1
end

print(max_line_no)