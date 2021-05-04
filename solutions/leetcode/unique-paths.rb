# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  table = Array.new(m) { Array.new(n, nil) }

  # m = 1
  0.upto(m - 1) do |i|
    table[i][0] = 1
  end

  # n = 1
  0.upto(n - 1) do |j|
    table[0][j] = 1
  end

  1.upto(m - 1) do |i|
    1.upto(n - 1) do |j|
      table[i][j] = table[i - 1][j] + table[i][j - 1]
    end
  end

  table[m - 1][n - 1]
end
