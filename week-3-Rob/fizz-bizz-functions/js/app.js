// loop of a given range and return either the Fizz if a multiple of 3, Buzz if a multiple of 5, FizzBuzz if a multiple of 3 and 5 and the number if neither.

// Accept a range of user values, Min and Max
var num1 = parseInt(prompt("What is the start of your range?"));
var num2 = parseInt(prompt("What is the end of your range?"));

rangeLoop(num1, num2);

function rangeLoop(num1, num2){
  for (num1; num1 <= num2; num1++) {
    console.log(fizzBuzz(num1));
  }
}

// FizzBuzz function

function fizzBuzz(i){
  if ((i % 6 == 0) && (i % 5 == 0)) {
    return "FizzBuzz";
  } else if (i % 6 == 0) {
    return "Fizz";
  } else if (i % 5 == 0) {
    return "Buzz";
  } else {
    return i;
  }
}
