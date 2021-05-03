# FIXME: Time Limit Exceeded
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  return [] if nums.length < 3

  results = recursion(0, nums, 3)
  results.map(&:sort).uniq.sort
end

def recursion(target, nums, remain_count, memo = {})
  key = "#{target}-#{nums.join('_')}"
  if remain_count.zero?
    if memo.key?(key)
      return memo[key]
    else
      return target.zero? ? [[]] : nil
    end
  end

  remain_count -= 1
  results = []
  nums.each_with_index do |num, i|
    sub_nums = nums.reject.with_index { |_, ii| ii == i }
    temp = recursion(target - num, sub_nums, remain_count, memo)
    if temp.is_a?(Array)
      temp.each do |result|
        results << result + [num]
      end
    end
  end

  memo[key] = results
  results
end
