# https://leetcode.com/problems/valid-anagram/
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# Example 1:
#   Input: s = "anagram", t = "nagaram"
#   Output: true

# Example 2:
#   Input: s = "rat", t = "car"
#   Output: false
 
# Constraints:
#   1 <= s.length, t.length <= 5 * 104
#   s and t consist of lowercase English letters.

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length 
  
  sorted_s = s.split('').sort.join('')
  sorted_t = t.split('').sort.join('')
  sorted_s == sorted_t
end