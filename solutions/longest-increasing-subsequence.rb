# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  table = Array.new(nums.length, 1)
  max = 1
  0.upto(nums.length - 2) do |i|
    (i + 1).upto(nums.length - 1) do |j|
      if nums[j] > nums[i]
        temp = table[i] + 1
        table[j] = [table[j], temp].max
        max = [max, table[j]].max
      end
    end
  end

  max
end
