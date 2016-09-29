require 'prime'

n = 1
consecutive = 0
while true
  if n.prime_division.size == 4
    consecutive += 1  
  else
    consecutive = 0
  end
  if consecutive == 4
    puts n - 3
    break
  end
  n += 1
end
