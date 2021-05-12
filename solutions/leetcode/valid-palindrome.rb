# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  str = s.gsub(/[^A-Za-z0-9]/, '').downcase
  return true if s.length == 1

  left = 0
  right = str.length - 1
  while left < right do
    return false unless str[left] == str[right]

    left += 1
    right -= 1
  end

  true
end
