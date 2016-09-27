function reverse_arr(arr) {
  // check for and handle wonky inputs
  try {
    if (Array.isArray(arr) != true) {
      throw "Whoops: Input arr must be an array."
    };
  }
  catch(err) {
    return err;
  };

  // pop off and reposition every element of arr
  for (i = 0; i <= (arr.length -1); i++) {
    var elt = arr.pop();
    arr.splice(i, 0, elt);
  };

  return arr;
};

function reverse_str(str) {
  // check for and handle wonky inputs
  try {
    if (typeof(str) != 'string') {
      throw "Whoops: Input str must be a string."
    };
  }
  catch(err) {
    return err;
  };

  // represent str as an array of letters
  // run it through the reverse_arr() function
  var str_array = str.split("");
  var rev_array = reverse_arr(str_array);

  // smush it back into a string
  return rev_array.join("");
};

// some general proof of concept for reverse_arr()
console.log( reverse_arr([5, 0, 9, 3, 7]) );
console.log( reverse_arr([]) );
console.log( reverse_arr('abc') );

// some general proof of concept for reverse_str()
console.log( reverse_str('palindrome') );
console.log( reverse_str('brown fox') );
console.log( reverse_str(456) );
