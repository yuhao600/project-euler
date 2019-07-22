upper_limit = 50
$factorials = [1]
1.upto(upper_limit) do |n|
  $factorials[n] = $factorials[n - 1] * n
end

def choose(n, k)
  $factorials[n] / $factorials[n - k] / $factorials[k]
end

red, green, blue = 0, 0, 0
1.upto(upper_limit / 2) do |r|
  n = upper_limit - r
  red += choose(n, r)
end

1.upto(upper_limit / 3) do |g|
  n = upper_limit - 2 * g
  green += choose(n, g)
end

1.upto(upper_limit / 4) do |b|
  n = upper_limit - 3 * b
  blue += choose(n, b)
end

puts red + green + blue
