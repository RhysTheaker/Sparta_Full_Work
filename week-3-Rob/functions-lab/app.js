// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply (num1, num2) {

  return num1 * num2;

}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result

function addThree (num1, num2, num3) {

  return num1 + num2 + num3;

}

// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers

function smallestNumber(num1, num2) {

  // if (num1 < num2) {
  //     return num1;
  // } else {
  //   return num2;
  // }

  return Math.min(num1, num2);
}

// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers

function maxOfThree(num1, num2, num3) {

  // if ((num1 > num2) && (num1 > num3)) {
  //     return num1;
  // } else if (num2 > num3) {
  //   return num2;
  // } else {
  //   return num3;
  // }

  return Math.max(num1, num2, num3);
}

// 5. Write a function called 'reverseString' that returns the reverse a string

function reverseString(string) {
  // var string1 = string.split("");
  // var reversestring = string1.reverse();
  // var joinarray = reversestring.join("");
  // return joinarray;

  return string.split("").reverse().join("");
}

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out

function disemvowel(string) {
  var vowels = ["a","e","i","o","u"];
  for (var i = 0; i < vowels.length; i++) {
    string = string.replace(vowels[i], "");
  }
  return string;
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array

function removeOdd(array) {
  var newarray = [];

  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      newarray.push(array[i]);
    }
  }
  return newarray

  // return array.filter(function(item){
  //   return item % 2 == 0;
  // })
}

// 8. Write a function called 'removeEven' that removes all EVEN number from an array

function removeEven(array) {
  var newarray = [];

  for (var i = 0; i < array.length; i++) {
    if (array[i] % 2 != 0) {
      newarray.push(array[i]);
    }
  }
  return newarray
}

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length

function longestString(array) {
  var longestString;
  var stringlength  = 0;

  for (var i = 0; i < array.length; i++) {
    var string = array[i]
    if (string.length > stringlength) {
      stringlength = string.length;
      longeststring = array[i];
    }
  }

  return longeststring;
}

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

  function allElementsExceptFirstThree(array){
    return array.splice(3,array.length);
  }

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

function convertArrayToAnObject(array) {
  var object = {};

  for (var i = 0; i < array.length; i+=2) {
    object[array[i]] = array[i+1];
  }
  return object;
}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

function fizzBuzz(number){
  if (number % 3 == 0) && (number % 5 == 0) {
    return "FizzBuzz";
  } else if (number % 3 == 0) {
    return "Fizz";
  } else if (number % 5 == 0) {
    return "Buzz";
  } else {
    return number;
  }
}

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".
