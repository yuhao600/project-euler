sum100pow = 0
for i = 1, 100 do
  sum100pow = sum100pow + i * i
end
sum100 = 100 * (100 + 1) / 2
print(sum100 * sum100 - sum100pow)
