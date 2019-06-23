-- only works for Lua 5.3+, needs 64 bit integer support
for num = math.floor(math.sqrt(10203040506070809)), 
        math.floor(math.sqrt(19293949596979899)) do
    if num % 10 == 3 or num % 10 == 7 then
        num_square = string.format("%d", num * num)
        if num_square:match("1%d2%d3%d4%d5%d6%d7%d8%d9") then
            print(num * 10)
            break
        end
    end
end
