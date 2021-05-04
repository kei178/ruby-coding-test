# https://leetcode.com/problems/product-of-array-except-self/
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

# Example 1:
#   Input: nums = [1,2,3,4]
#   Output: [24,12,8,6]

# Example 2:
#   Input: nums = [-1,1,0,-3,3]
#   Output: [0,0,9,0,0]

# Constraints:
#   2 <= nums.length <= 105
#   -30 <= nums[i] <= 30
#   The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  # count zero
  zero_count = 0
  total = 1
  nums.each do |num|
    if num.zero?
      zero_count += 1
    else
      total *= num
    end
  end

  if zero_count > 1
    # if zero is more than 1
    # every element will be 0
    nums.map { |_| 0 }
  elsif zero_count == 1
    # if zero is just 1
    # every element will be 0 execept 0 itself
    nums.map { |num| num.zero? ? total : 0 }
  else
    # if no zero
    # normal case
    # divide the product of all the elements by the element
    nums.map { |num| total / num }
  end
end
