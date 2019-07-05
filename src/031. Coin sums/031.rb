coins = [1, 2, 5, 10, 20, 50, 100, 200]
amount = 200
ways = [0] * (amount + 1)
ways[0] = 1
coins.each do |coin|
  coin.upto(amount) do |n|
    ways[n] += ways[n - coin]
  end
end

puts ways[amount]
