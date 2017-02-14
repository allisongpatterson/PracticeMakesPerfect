# problem description
  # spiral(3,4) # inputs: (rows, columns)
  # [[ 1,  2,  3, 4],
  #  [10, 11, 12, 5],
  #  [ 9,  8,  7, 6]]

# my implementation
def spiral(rows, cols)
  # create rows & columns in array of arrays
  res = Array.new(rows) { Array.new(cols) }
  level = 0
  num = 1

  until num > (rows * cols)
    level.upto(cols-level-1) do |i|
      res[level][i] = num
      num += 1
    end
    break if num > (rows * cols)

    (level+1).upto(rows-level-1) do |i|
      res[i][cols-level-1] = num
      num += 1
    end
    break if num > (rows * cols)

    (cols-level-2).downto(level) do |i|
      res[rows-level-1][i] = num
      num += 1
    end
    break if num > (rows * cols)

    (rows-level-2).downto(level+1) do |i|
      res[i][level] = num
      num += 1
    end
    level += 1
  end

  # make it look pretty
  res.each {|sub_arr| print sub_arr, "\n"}
end

spiral(4,5)