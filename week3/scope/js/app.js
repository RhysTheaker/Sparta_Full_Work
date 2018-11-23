// var outsideVar = "i'm outside";
//
// doSomething()
//
// function doSomething() {
//   console.log(outsideVar);
// }

// console.log(insideVar);
//
// function doAnotherThing() {
//   var insideVar = "I'm inside";
// }

// // firstFunction();
// secondFunction();
//
// function firstFunction() {
//   console.log("I am number one");
//   var name = "rob";
// }
//
// function secondFunction() {
//   console.log(name);
//   console.log("2nd best");
// }

// var s1 = "Hello, ";
// var s2 = "World";
//
// joinStrings(s1, s2)
//
// function joinStrings(string1, string2) {
//   var combinedString = string1 + string2;
//   function printString(string) {
//     console.log(string);
//   }
//   printString(combinedString)
// }

function defineGlobally() {
  var a = 5;
}
defineGlobally();
console.log(a);
