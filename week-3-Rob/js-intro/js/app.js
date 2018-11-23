// Sets up a variable call 'a' with a starting value of 5
// var a = 5;
//
// console.log("hello, World!!");
// console.log("a is equal to: " + a);
// // console.log(a);
//
// a = 10;
//
// console.log("a is equal to: " + a);


//number
var num1 = 3;
var num2 = 17;

// +,-,/,*

// var num3 = num1 + num2;
// console.log(num3);
//
// var num4 = num2/num1;
// console.log(num4);
//
// num2 = num2 - num1;
// console.log("num2 is: " + num2);
//
// console.log(isFinite(num1));

//string
var string1 = 'hello, World!!';
var string2 = "Don't do this is will break it";
var string3 = "3";
//
// console.log(string1);
// console.log(string2.length);
// console.log(string1.substr(7,11));

//Booleans
var bool1 = true;
var bool2 = false;

//undefined
var a;
// console.log(a);

// var type = typeof num4;
// console.log(type);

// Complex Data Types
// Arrays

var array = ["banana", "orange", "apple", "pear", "kiwi"];

// console.log(array[2]);
// console.log(array.length);

var mixed_array = [1, "name", true];

array.push("grape");
// console.log(array);

// var last = array.pop();
// console.log(last);

var sliceArray = array.slice(1,4);
// console.log(array);
// console.log(sliceArray);

array.splice(0,1);
// console.log(array);

//Objects

var person = {
  name: "Rob",
  age: 28,
  address: 'Brum',
  house_number: 4
}

// console.log(person.name);

var string = "5";
var decimalString = "2.5";
var number = 3;

console.log( parse(string) + number);
