var array = [1,3,45,21,97];
var i = 1;

// for (var i = 0; i < array.length; i++) {
//   console.log(array[i]);
// }

// var name = prompt("tell me your name")
// while ( i < 5 ) {
//   // name = prompt("You didnt give me a name try again")
//   i++;
//   console.log("this loop has ran " + i + ' times.')
// }

// do {
//   console.log("this loop has ran " + i + ' times.')
//   i++
// } while (i < 1);
// // console.log(i);
//
// var object = {
//   name: "rob",
//   age: 28,
//   city: "brum"
// }
//
// for (var key in object) {
//   console.log(key + ": " + object[key]);
// }

var word = [1,2,3,4];

for (value of word) {
  value++;
  console.log(value);
}
