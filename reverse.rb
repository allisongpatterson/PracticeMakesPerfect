def reverse_arr(arr)
  # pop off and reposition every element of arr
  for i in 0..(arr.length - 1) do
    elt = arr.pop()
    arr = arr.insert(i, elt)
  end

  return arr
  
end

def reverse_str(str)
  # represent str as an array of letters
  # run it through the reverse_arr() function
  str_array = str.split(//)
  rev_array = reverse_arr(str_array)

  # smush it back into a string
  return rev_array.join

end

# some general proof of concept
print reverse_arr([5, 0, 9, 3, 7]), "\n"
print reverse_str("palindrome"), "\n"
