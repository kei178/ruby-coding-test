# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  table = Array.new(text1.length + 1) { Array.new(text2.length + 1, 0) }

  1.upto(text1.length) do |i|
    1.upto(text2.length) do |j|
      char1 = text1[i - 1]
      char2 = text2[j - 1]
      if char2 == char1
        table[i][j] = table[i - 1][j - 1] + 1
      else
        table[i][j] = [table[i - 1][j], table[i][j - 1]].max
      end
    end
  end

  table[text1.length][text2.length]
end
