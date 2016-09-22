#
# Returns true if input str is a
# palindrome, case insensitive.
# Expects input str to be a string.
#

def is_palindrome(str)
  # check for and handle wonky inputs
  if !str.is_a?(String)
    puts "Whoops: Input str must be a string."
    return
  end

  # nix case sensitivity by converting to lowercase
  # represent str as an array of letters
  str_array = str.downcase.split(//)

  # compare forwards and backwards
  if str_array == str_array.reverse
    return true
  end

  # if all else fails
  return false

end

# some general proof of concept
puts is_palindrome('kayak')
puts is_palindrome('nope')
puts is_palindrome('RaCEcAr')
puts is_palindrome('')
print is_palindrome(123) # dear self: I'm sorry
