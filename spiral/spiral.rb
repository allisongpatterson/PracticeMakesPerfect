#
# Prints matrix with inward clockwise
# spiral of ascending integers from 1.
# Expects inputs rows and cols 
# to be positive integers.
#

def spiral(rows, cols)
  # check for and handle wonky inputs
  if !rows.is_a?(Integer) || rows <= -1
    puts "Whoops: Input rows = #{rows} is invalid; rows must be an integer >= 0."
    return
  elsif !cols.is_a?(Integer) || cols <= -1
    puts "Whoops: Input cols = #{cols} is invalid; cols must be an integer >= 0."
    return
  end

  # prepare rows & columns in array of arrays
  res = Array.new(rows) { Array.new(cols) }
  level = 0 # count of cycles
  num = 1

  until num > (rows * cols)
    # top going right
    level.upto(cols-level-1) do |i|
      res[level][i] = num
      num += 1
    end
    break if num > (rows * cols)

    # right going down
    (level+1).upto(rows-level-1) do |i|
      res[i][cols-level-1] = num
      num += 1
    end
    break if num > (rows * cols)

    # bottom going left
    (cols-level-2).downto(level) do |i|
      res[rows-level-1][i] = num
      num += 1
    end
    break if num > (rows * cols)

    # left going up
    (rows-level-2).downto(level+1) do |i|
      res[i][level] = num
      num += 1
    end
    level += 1 # level completed
  end

  # print as matrix
  res.each {|sub_arr| print sub_arr, "\n"}
end

# some general proof of concept
spiral(3,4)
spiral(4,-2)
spiral(2,1)
spiral(6,6)