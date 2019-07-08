amount = 100
coins = list(range(1, amount))
ways = [0] * (amount + 1)
ways[0] = 1
for coin in coins:
    for n in range(coin, amount + 1):
        ways[n] += ways[n - coin]

print(ways[amount])
