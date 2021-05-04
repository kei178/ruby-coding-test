# @param {String} s
# @return {Integer}
def num_decodings(s)
  table = Array.new(s.length + 1, 0)
  table[0] = 1
  0.upto(s.length - 1) do |i|
    char = s[i]
    next if char == '0'

    # one char
    table[i + 1] += table[i]

    # two chars
    next if table[i + 2].nil?

    chars = s[i..i + 1]
    if chars.to_i <= 26
      table[i + 2] += table[i]
    end
  end

  table.last
end
