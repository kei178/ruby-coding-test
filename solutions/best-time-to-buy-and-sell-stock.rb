# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.length <= 1

  max = 0
  min = prices[0]
  0.upto(prices.length - 2) do |i|
    price = prices[i]
    if i == 0 || price < min
      sub_prices = prices.slice(i + 1, prices.length - 1)
      temp = sub_prices.max - price
      max = [max, temp].max
      min = price
    end
  end

  max
end
