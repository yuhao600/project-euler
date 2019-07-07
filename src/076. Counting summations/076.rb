amount = 100
coins = (1 .. (amount - 1)).to_a
ways = [0] * (amount + 1)
ways[0] = 1
coins.each do |coin|
  coin.upto(amount) do |n|
    ways[n] += ways[n - coin]
  end
end

puts ways[amount]
