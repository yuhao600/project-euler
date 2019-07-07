require 'prime'

def calc_ways(amount, coins)
  ways = [0] * (amount + 1)
  ways[0] = 1
  coins.each do |coin|
    coin.upto(amount) do |n|
      ways[n] += ways[n - coin]
    end
  end
  ways[amount]
end

primes = []
Prime.each(1000) {|p| primes << p}

10.upto(1000) do |amount|
  if calc_ways(amount, primes) > 5000
    puts amount
    break
  end
end
