for a = 1, 999 do
  for b = a, 999 do
    c = 1000 - a - b
    if (c * c == a *a + b * b) then
      print(a * b * c)
      return
    end
  end
end