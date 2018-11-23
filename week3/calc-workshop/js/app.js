var option_choice = prompt("Would you like (1)Basic Functions or (2)Advanced Functions?");


while (option_choice != 1 && option_choice != 2) {
  option_choice = prompt("Invalid input. Would you like (1)Basic Functions or (2)Advanced Functions?");
}

if (option_choice == 1) {
//basic functions
var func_choice = prompt("Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?");

while ((func_choice != "a") && (func_choice != "s") && (func_choice != "m") && (func_choice != "d")) {
  option_choice = prompt("Invalid input. Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?");
}

var num1 = parseInt(prompt("What is your first number?"));
var num2 = parseInt(prompt("What is your second number?"));

var result;

switch (func_choice) {
  //addition
  case "a":
  result = num1 + num2;
  break;
  //subtraction
  case "s":
  result = num1 - num2;
  break;
  //multiplication
  case "m":
  result = num1 * num2;
  break;
  //division
  case "d":
  result = num1 / num2;
  break;
}
alert("Your result is " + result)
}

else if (option_choice == 2) {
//advanced functions
var func_choice2 = prompt("Do you want (p)owers of or (s)quare root?");

while ((func_choice2 != "p") && (func_choice2 != "s")) {
  func_choice2 = prompt("Invalid input. Do you want (p)owers of or (s)quare root?")
}

var result2;

if (func_choice2 == "p") {
  var num3 = parseInt(prompt("What is the number that you would like to be raised to the power of by another number?"));
  var num4 = parseInt(prompt("What power would you like to raise the previous number to?"));

  result2 = Math.pow(num3, num4);
}

else if (func_choice2 == "s") {
  var num5 = parseInt(prompt("What number would you like to find the square root of?"));

  result2 = Math.sqrt(num5);
}

alert("Your result is " + result2)
}
