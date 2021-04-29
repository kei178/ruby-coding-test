# https://leetcode.com/problems/longest-repeating-character-replacement/

# FIXME: Time Limit Exceeded
# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  arr = s.split('')

  max = 0
  arr.uniq.each do |char|
    start = 0
    while start < s.length do
      remain = k
      count = 0
      for i in start..s.length - 1 do
        if s[i] == char
          count += 1
          max = [max, count].max
        elsif remain > 0
          remain -= 1
          count += 1
          max = [max, count].max
        else
          start += 1
          break
        end
        
        start += 1 if i == s.length - 1
      end
    end
  end

  max
end