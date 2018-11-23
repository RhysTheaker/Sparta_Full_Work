var option_choice = prompt("Would you like (1)Basic Functions or (2)Advanced Functions?");

while (option_choice != 1 && option_choice != 2) {
  option_choice = prompt("Invalid selection. Please choose either: (1)Basic Functions or (2)Advanced Functions?");
}

if (option_choice == 1) {
  // Basic Functions

  var func_choice = prompt("Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?");

  while (func_choice != "a" && func_choice != "s" && func_choice != "m" && func_choice != "d") {
    func_choice = prompt("Invalid selection. Do you want (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?");
  }

  var num1 = parseInt(prompt("What is your 1st number?"));
  var num2 = parseInt(prompt("What is your 2nd number?"));

  switch (func_choice) {
    // addition
    case "a":
      var result = num1 + num2;
      break;

    // subtraction
    case "s":
      var result = num1 - num2;
      break;

    // multiplication
    case "m":
      var result = num1 * num2;
      break;

    // division
    case "d":
      var result = num1 / num2;
      break;
    default:
  }

} else if (option_choice == 2) {
  // Advanced Function
  var func_choice = prompt("Do you want (p)ower or (s)quare root?");

  while (func_choice != "p" && func_choice != "s") {
    func_choice = prompt("Invalid selection. Do you want (p)ower or (s)quare root?");
  }
  // power a ^ b
  if (func_choice == "p") {
    var num1 = parseInt(prompt("What is your 1st number?"));
    var num2 = parseInt(prompt("What is your 2nd number?"));

    var result = Math.pow(num1, num2);
  }
  // square root
  else if (func_choice == "s") {
    var num1 = parseInt(prompt("What is your number?"));

    sqrt(num1);
  }
}

if (result) {
  alert("Your result is: " + result);
}

function sqrt(num1) {
  return Math.sqrt(num1);
}
