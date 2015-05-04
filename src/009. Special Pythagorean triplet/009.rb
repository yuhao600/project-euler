1.upto(1000) do |a|
  a.upto(1000) do |b|
    c = 1000 - a - b
    if a ** 2 + b ** 2 == c ** 2
      puts a * b * c
    end
  end
end