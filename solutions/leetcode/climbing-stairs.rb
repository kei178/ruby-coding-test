# https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  nums = [1, 2]
  recursion(n, nums)
end

def recursion(target, nums, memo = {})
  return memo[target] if memo.key?(target)
  return 1 if target.zero?
  return 0 if target.negative?

  count = 0
  nums.each do |num|
    count += recursion(target - num, nums, memo)
  end

  memo[target] = count
  count
end
