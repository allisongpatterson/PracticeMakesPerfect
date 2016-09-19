#
# Returns an array of the first n elements
# of the fibonacci sequence with 0 included.
# Expects input n to be a positive integer.
#

def generate_fib(n)
  # give it something to work from
	arr = [0, 1]

  # check for and handle wonky inputs
  if n.nil? || n <= -1
    puts "Whoops: Input n = #{n} is invalid; n must be an integer >= 0."
    return
  elsif n <= arr.length
    return arr.shift(n)
  end

  # add the last 2 elements to find the next one
  # lather, rinse, repeat
  until arr.length == n
    prevs = arr.last(2)
    arr.push(prevs.reduce(:+))
  end

  return arr

end

# some general proof of concept
print generate_fib(1), "\n"
print generate_fib(-2)
print generate_fib(14), "\n"
