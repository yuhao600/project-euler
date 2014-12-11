local t = {}
for i = 1, 200000 do
  t[i] = tostring(i)
end
local numStr = table.concat(t)
local d1       = tonumber(string.sub(numStr, 1, 1))
local d10      = tonumber(string.sub(numStr, 10, 10))
local d100     = tonumber(string.sub(numStr, 100, 100))
local d1000    = tonumber(string.sub(numStr, 1000, 1000))
local d10000   = tonumber(string.sub(numStr, 10000, 10000))
local d100000  = tonumber(string.sub(numStr, 100000, 100000))
local d1000000 = tonumber(string.sub(numStr, 1000000, 1000000))

print(d1 * d10 * d100 * d1000 * d10000 * d100000 * d1000000)