# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  return nums[0] if nums.length == 1

  (1..nums.length - 1).each do |i|
    prev = nums[i - 1]
    curr = nums[i]
    next if curr > prev

    return curr
  end

  nums[0]
end
