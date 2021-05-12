# TODO: Need to consider multiple same characters such as "aa"
# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
  return '' if t.length > s.length
  if t.length == 1 && s.length == 1
    return s == t ? t : ''
  end

  memo = {}
  # Prepare index dictionary of each char
  s.split('').each_with_index do |char, index|
    if memo.key?(char)
      memo[char] << index
    else
      memo[char] = [index]
    end
  end

  arr = []
  t.split('').each do |char|
    return '' unless memo.key?(char)

    arr << memo[char]
  end
  results = recursion(arr)

  min = s
  results.each do |result|
    temp = s[result.min..result.max]
    if temp.length < min.length
      min = temp
    end
  end

  min
end

def recursion(nested_array, memo = {})
  return [[]] if nested_array.empty?

  key = ''
  nested_array.each_with_index do |array, index|
    key += index.to_s + array.join('-')
  end
  return memo[key] if memo.key?(key)

  results = []
  current = nested_array.shift
  temps = recursion(nested_array, memo)
  current.each do |num|
    temps.each do |temp|
      results << [num] + temp
    end
  end

  memo[key] = results
  results
end
