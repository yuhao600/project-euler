$factorials = [0]
1.upto(6) do |n|
  $factorials[n] = $factorials[n - 1] * n
end

def choose(n, k)
  $factorials[n] / $factorials[k] / $factorials[n - k]
end

def roll(dices, times)
  counter = {}
  dices.each do |d|
    counter[d] = 1
  end
  (times - 1).times do |t|
    acc = Hash.new(0)
    counter.each do |k, v|
      dices.each do |d|
        acc[k + d] += v
      end
    end
    counter = acc
  end
  counter
end
  
pyramidal = roll((1..4).to_a, 9)
cubic = roll((1..6).to_a, 6)

pyramidal_pr = {}
pyramidal.each do |k, v|
  pyramidal_pr[k] = v.quo(4 ** 9)
end

cubic_pr = {}
cubic.each do |k, v|
  cubic_pr[k] = v.quo(6 ** 6)
end

beats_pr = 0
pyramidal_pr.each do |p, p_pr|
  cubic_pr.each do |c, c_cr|
    beats_pr += p_pr * c_cr if p > c
  end
end
printf('%.7f', beats_pr.to_f)
