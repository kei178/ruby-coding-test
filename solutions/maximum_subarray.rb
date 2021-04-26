# https://leetcode.com/problems/maximum-subarray/
# Given an integer array nums, find the contiguous subarray (containing at least one number) 
# which has the largest sum and return its sum.

# Example 1:
#   Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
#   Output: 6
#   Explanation: [4,-1,2,1] has the largest sum = 6.

# Example 2:
#   Input: nums = [1]
#   Output: 1

# Example 3:
#   Input: nums = [5,4,-1,7,8]
#   Output: 23

# Constraints:
#   1 <= nums.length <= 3 * 104
#   -105 <= nums[i] <= 105

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  table = Array.new(nums.length)
  table[0] = nums[0]
  max = nums[0]
  for i in 1..nums.length - 1
    temp = [nums[i], nums[i] + table[i - 1]].max
    table[i] = temp
    max = [max, temp].max
  end

  max
end