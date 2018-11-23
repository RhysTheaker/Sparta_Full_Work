// var outsideVar = "I'm outside!!!";
//
// doSomething();
//
// function doSomething(){
//   console.log(outsideVar);
// }

// console.log(insideVar);
//
// function doAnotherThing(){
//   var insideVar = "I'm Inside!!!"
// }

// firstFunction();
// secondFunction();
//
// function firstFunction(){
//   console.log("I am number One!!!");
//   var nam = "rob";
// }
//
// function secondFunction(){
//   firstFunction()
//   console.log(nam);
//   console.log("2nd best");
// }

// var s1 = "Hello, "
// var s2 = "World!!"
//
// console.log(combinedString);
//
// joinStrings(s1, s2);
//
// printString(s1);
//
// function joinStrings(string1, string2){
//
//   var combinedString = string1 + string2;
//
//   function printString(string){
//     console.log(string);
//   }
//
//   printString(combinedString);
// }

function defineGlobally(){
  var a = 5;
  console.log(a);
}

defineGlobally();
a = a+9
console.log(a);
