// sets up a variable, a, with initial value of 5
// var a = 5;
//
// console.log("hello world");
// console.log("a is equal to: " + a);
//
// a = 10;
//
// console.log("a is equal to: " + a);

// number
var num1 = 3;
var num2 = 17;
var num3 = num1 + num2;
console.log(num3);

var num4 = num2/num1;
console.log(num4);

num2 = num2 - num1;
console.log(num2);

console.log(isFinite(num1));

// string
var string1 = "hello, world";
var string2 = 'Don\'t do this it will break';
var string3 = "3";

// console.log(string1);
// console.log(string2.length);
// console.log(string1.indexOf("r"));
// console.log(string1.substr(7,11));

// Booleans
var bool1 = true;
var bool2 = false;

// Undefined
var a;
console.log(a);

var type = typeof string1;
console.log(type);

// complex data types
// Arrays

var array = ["banana", "orange", "apple", "pear", "kiwi"];
console.log(array[2]);
console.log(array.length);

var mixed_array = [1, "name", true];
console.log(mixed_array);

array.push("grape");
console.log(array);

// var last = array.pop();
// console.log(last);

var sliceArr = array.slice(1,2);
console.log(array);
console.log(sliceArr);

array.splice(2, 0, "cherry");
console.log(array);

var person = {
  name: "Rob",
  age: 28,
  address: 'Brum',
  house_number: 4
}

console.log(person.age);
