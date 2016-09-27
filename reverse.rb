def reverse_arr(arr)
  # check for and handle wonky inputs
  if !arr.is_a?(Array)
    puts "Whoops: Input arr must be an array."
    return
  end

  # pop off and reposition every element of arr
  for i in 0..(arr.length - 1) do
    elt = arr.pop()
    arr = arr.insert(i, elt)
  end

  return arr

end

def reverse_str(str)
  # check for and handle wonky inputs
  if !str.is_a?(String)
    puts "Whoops: Input str must be a string."
    return
  end

  # represent str as an array of letters
  # run it through the reverse_arr() function
  str_array = str.split(//)
  rev_array = reverse_arr(str_array)

  # smush it back into a string
  return rev_array.join

end

# some general proof of concept for reverse_arr()
print reverse_arr([5, 0, 9, 3, 7]), "\n"
print reverse_arr([]), "\n"
print reverse_arr('abc')

# some general proof of concept for reverse_str()
print reverse_str('palindrome'), "\n"
print reverse_str('brown fox'), "\n"
print reverse_str(456)
