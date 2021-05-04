# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  results = []
  0.upto(nums.length - 2) do |i|
    next if i.positive? && nums[i] == nums[i - 1]

    left = i + 1
    right = nums.length - 1
    while right > left do
      sum = nums[i] + nums[left] + nums[right]
      if sum.zero?
        results << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
      elsif sum.negative?
        left += 1
      else
        right -= 1
      end
    end
  end

  results.uniq
end
