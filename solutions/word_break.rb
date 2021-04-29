# https://leetcode.com/problems/word-break/

# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  table = Array.new(s.length + 1) { false }
  table[0] = true
  (0..s.length).each do |i|
    word_dict.each do |word|
      next unless table[i] == true

      prefix = s[i..i + word.length - 1]
      next unless prefix == word

      table[i + word.length] = true
    end
  end

  table[s.length]
end
