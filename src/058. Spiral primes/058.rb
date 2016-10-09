require 'prime'

n = 1
total_count = 1
prime_count = 0
while true
  n += 2
  total_count += 4
  prime_count += 1 if (n * n - n + 1).prime?
  prime_count += 1 if (n * n - 2 * n + 2).prime?
  prime_count += 1 if (n * n - 3 * n + 3).prime?
  if prime_count.fdiv(total_count) <= 0.1
    puts n
    break
  end
end
