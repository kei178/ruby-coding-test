# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max = 0
  left = 0
  right = height.length - 1
  while right > left do
    short = [height[left], height[right]].min
    temp = short * (right - left)
    max = [max, temp].max
    if height[left] > height[right]
      right -= 1
    else
      left += 1
    end
  end

  max
end
