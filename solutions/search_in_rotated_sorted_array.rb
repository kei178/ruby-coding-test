# https://leetcode.com/problems/search-in-rotated-sorted-array/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  if nums.length == 1
    return nums[0] == target ? 0 : -1
  end
  return 0 if nums[0] == target

  last_index = nums.length - 1
  prev = nums[0]
  if nums[0] > target
    last_index.downto(1) do |i|
      return i if nums[i] == target
      break if nums[i] > prev

      prev = nums[i]
    end
  else
    1.upto(last_index).each do |i|
      return i if nums[i] == target
      break if nums[i] < prev

      prev = nums[i]
    end
  end

  -1
end
