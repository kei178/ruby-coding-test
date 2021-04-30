# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  max_jump = 0
  0.upto(nums.length - 1) do |i|
    return false if i > max_jump

    max_jump = [max_jump, nums[i] + i].max
  end

  true
end
