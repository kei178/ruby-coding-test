# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  return 0 if amount.zero?

  min = recursion(coins, amount)
  min || -1
end

def recursion(coins, amount, memo = {})
  return memo[amount] if memo.key?(amount)
  # base case
  return 0 if amount.zero?
  return nil if amount.negative?

  min = nil
  coins.each do |coin|
    temp = recursion(coins, amount - coin, memo)
    next unless temp.is_a?(Integer)

    if min.nil?
      min = temp + 1
    else
      min = [min, temp + 1].min
    end
  end

  memo[amount] = min
  min
end
