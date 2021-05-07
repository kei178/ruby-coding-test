# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  max = nums[0]
  current_max = nums[0]
  current_min = nums[0]
  1.upto(nums.length - 1) do |i|
    temp_max = current_max
    temp_min = current_min

    current_max = [
      nums[i] * temp_min,
      nums[i] * temp_max,
      nums[i]
    ].max

    current_min = [
      nums[i] * temp_min,
      nums[i] * temp_max,
      nums[i]
    ].min

    max = [
      max,
      nums[i],
      current_max
    ].max
  end

  max
end
