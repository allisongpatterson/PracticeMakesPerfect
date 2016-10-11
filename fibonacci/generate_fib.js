/**
* Returns an array of the first n elements
* of the fibonacci sequence with 0 included.
* Expects input n to be a positive integer.
*/

function generate_fib(n) {
  // give it something to work from
  var arr = [0, 1];

  // check for and handle wonky inputs
  try {
    if (Number.isInteger(n) == false || n <= -1) {
      throw `Whoops: Input n = ${n} is invalid; n must be an integer >= 0.`;
    };
  }
  catch(err) {
    return err;
  };

  // more wonky inputs that get handled differently
  if (n <= arr.length) {
    return arr.slice(0, n);
  };

  // add the last 2 elements to find the next one
  // lather, rinse, repeat
  while (arr.length < n) {
    var prevs = arr.slice(-2);
    var next = prevs.reduce( function (total, elt) {return total + elt} );
    arr.push(next);
  };

  return arr;
};

// some general proof of concept
console.log( generate_fib(2) );
console.log( generate_fib(-2) );
console.log( generate_fib(14) );
console.log( generate_fib('abc') );
