# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return nums[0] if nums.length == 1
  return nums.max if nums.length == 2

  table = Array(nums.length) { 0 }
  table[0] = nums[0]
  table[1] = [nums[0], nums[1]].max
  2.upto(nums.length - 1) do |i|
    table[i] = [
      nums[i] + table[i - 2],
      table[i - 1]
    ].max
  end

  table[nums.length - 1]
end
