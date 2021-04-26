# Given a string s,
# find the length of the longest substring without repeating characters. 

# Example 1:
#   Input: s = "abcabcbb"
#   Output: 3
#   Explanation: The answer is "abc", with the length of 3.

# Example 2:
#   Input: s = "bbbbb"
#   Output: 1
#   Explanation: The answer is "b", with the length of 1.

# Example 3:
#   Input: s = "pwwkew"
#   Output: 3
#   Explanation: The answer is "wke", with the length of 3.
#   Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

# Example 4:
#   Input: s = ""
#   Output: 0
 
# Constraints:
#   0 <= s.length <= 5 * 104
#   s consists of English letters, digits, symbols and spaces.

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.length == 0

  max = 0
  left = 0
  right = 0
  while(left < s.length) do
    hash = {}
    duplicated = false
    for i in left..right do
      char = s[i]
      if hash[char].nil?
        hash[char] = true
      else
        duplicated = true
        break
      end
    end

    if duplicated
      left += 1
    else
      max = [max, right - left + 1].max
      right == (s.length - 1) ? left += 1 : right += 1 
    end
  end

  max
end