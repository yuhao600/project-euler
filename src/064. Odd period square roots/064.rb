def sqrt_fraction_period(n)
  sqrt = Math.sqrt(n)
  return 0 if sqrt.to_i == sqrt
  # https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Algorithm
  m = [0]
  d = [1]
  a = [sqrt.floor]
  period = 0
  loop do
    new_m = d.last * a.last - m.last
    new_d = (n - new_m * new_m) / d.last
    new_a = ((sqrt + new_m) / new_d).floor
    if period > 1 and m.last == m[1] and d.last == d[1] and a.last == a[1] \
        and new_m == m[2] and new_d == d[2] and new_a == a[2]
      return period - 1
    end
    m << new_m
    d << new_d
    a << new_a
    period += 1
  end
end

count = 0
1.upto(10_000) do |n|
  count += 1 if sqrt_fraction_period(n).odd?
end
puts count
