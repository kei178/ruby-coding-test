# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if nums.length == 1
  return nums.max if nums.length == 2

  nums1 = nums[0..nums.length - 2]
  nums2 = nums[1..nums.length - 1]
  [basic_rob(nums1), basic_rob(nums2)].max
end

def basic_rob(nums)
  table = Array.new(nums.length, 0)
  table[0] = nums[0]
  table[1] = [nums[0], nums[1]].max

  2.upto(nums.length - 1) do |i|
    table[i] = [
      table[i - 1], 
      nums[i] + table[i - 2]
    ].max
  end

  table[nums.length - 1]
end
