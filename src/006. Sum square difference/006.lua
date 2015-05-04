sum100 = 100 * 101 / 2
sum100pow = 0
for i = 1, 100 do
  sum100pow = sum100pow + i * i
end
print(sum100 * sum100 - sum100pow)