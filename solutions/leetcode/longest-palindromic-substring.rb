# FIXME: Time Limit Exceeded
# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length == 1
  if s.length == 2
    return s[0] == s[1] ? s : s[0]
  end

  table = Array.new(s.length) { Array.new(s.length, false) }

  # 1 char
  max_string = s[0]
  0.upto(s.length - 1) do |i|
    table[i][i] = true
  end

  # 2 chars
  0.upto(s.length - 2) do |i|
    if s[i] == s[i + 1]
      table[i][i + 1] = true
      if max_string.length < 2
        max_string = s[i..i + 1]
      end
    end
  end

  # 3 chars
  length = 2
  while length <= s.length do
    0.upto(s.length - length - 1) do |i|
      if s[i] == s[i + length] && table[i + 1][i + length - 1]
        table[i][i + length] = true
        if max_string.length < length + 1
          max_string = s[i..i + length]
        end
      end
    end
    length += 1
  end

  max_string
end
