// loop over a given range and return either fizz if a multiple of 3, buzz if a multiple of 5, fizzbuzz if a multiple of 15 and the input number if neither.

// accept a range of values, min and a max

var num1 = parseInt(prompt("What is the start of your range?"));
var num2 = parseInt(prompt("What is the end of your range?"));

rangeLoop(num1, num2);

function rangeLoop(num1, num2) {
  for (num1; num1 <= num2; num1++) {
    console.log(fizzBuzz(num1));
  }
}

// fizz Function
function fizzBuzz(i) {
  if ((i % 3 == 0) && (i % 15 == 0)) {
    return "FizzBuzz";
  }
  else if (i % 3 == 0) {
    return "Fizz";
  }
  else if (i % 5 == 0) {
    return "Buzz";
  }
  else {
    return i;
  }
}
// buzz Function

// fizzbuzz Function
