# https://leetcode.com/problems/palindromic-substrings/
# Given a string, your task is to count how many palindromic substrings in this string.
# The substrings with different start indexes or end indexes are counted as different substrings even they consist of same characters.

# Example 1:
#   Input: "abc"
#   Output: 3
#   Explanation: Three palindromic strings: "a", "b", "c".

# Example 2:
#   Input: "aaa"
#   Output: 6
#   Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".

# Note:
#   The input string length won't exceed 1000.

# @param {String} s
# @return {Integer}
def count_substrings(s)
  table = Array.new(s.length) { Array.new(s.length) { false } }
  count = 0

  # each single char
  (0..s.length - 1).each do |i|
    table[i][i] = true
    count += 1
  end

  # each two char
  (0..s.length - 2).each do |i|
    j = i + 1
    if s[i] == s[j]
      table[i][j] = true
      count += 1
    end
  end

  # more than two char
  length = 2
  while length <= s.length
    (0..s.length - 1).each do |i|
      j = i + length
      if s[i] == s[j] && table[i + 1][j - 1]
        table[i][j] = true
        count += 1
      end
    end
    length += 1
  end

  count
end
