# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def combination_sum4(nums, target, memo = {})
  # base case
  return memo[target] if memo.key?(target)
  return 1 if target.zero?
  return 0 if target.negative?

  # recursion
  count = 0
  nums.each do |num|
    count += combination_sum4(nums, target - num, memo)
  end

  memo[target] = count
  count
end
