def is_palindrome(str)
  str_array = str.split(//)
  if str_array == str_array.reverse
    return true
  end
  return false
end

# some general proof of concept
puts is_palindrome('racecar')
puts is_palindrome('nope')
puts is_palindrome('')
puts is_palindrome('n')
# puts is_palindrome()
