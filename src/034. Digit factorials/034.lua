local factorial = {[0] = 1}
for d = 1, 9 do
    factorial[d] = factorial[d - 1] * d
end

function digit_fact(n)
    local sum = 0
    while n > 0 do
        sum = sum + factorial[n % 10]
        n = math.floor(n / 10)
    end
    return sum
end

local total = 0
-- estimated upper limist, because 9! * 6 < 999999
local upper_limit = 999999
for n = 10, upper_limit do
    if n == digit_fact(n) then
        total = total + n
    end
end
print(total)
