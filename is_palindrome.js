/**
* Returns true if input str is a
* palindrome, case insensitive.
* Expects input str to be a string.
*/

function is_palindrome(str) {
  // check for and handle wonky inputs
  try {
    if (typeof(str) != 'string') {
      throw "Whoops: Input str must be a string."
    };
  }
  catch(err) {
    return err;
  };

  // reverse str in a kind of screwy, roundabout way
  var rev = str.split("").reverse().join("");

  // nix case sensitivity by converting to lowercase
  // compare forwards and backwards
  if (str.toLowerCase() == rev.toLowerCase()) {
    return true;
  };

  // if all else fails
  return false;

};

// some general proof of concept
console.log( is_palindrome('kayak') );
console.log( is_palindrome('nope') );
console.log( is_palindrome('RaCEcAr') );
console.log( is_palindrome('') );
console.log( is_palindrome(123) );
