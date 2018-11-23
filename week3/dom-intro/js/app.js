// console.log(document.body.children[0]);
// console.log(document.body.children[0].innerHTML);
//
// console.log(document.body.children[1].children[0].children[0].innerHTML = "Phone");
//
// console.log(document.body.children[0] = "<h2>Dom Introduction</h2>");

// var wrapperDiv = document.getElementById("wrapper");
//
// wrapperDiv.style.backgroundColor = "hotpink";
// // wrapperDiv.innerHTML = "This is hotpink";
//
// console.log(document.getElementsByTagName("li"));
//
// var lis = document.getElementsByTagName("li");
//
// // //Targets the second list item (as counting starts from 0), then the style, then the fontsize
// // lis[1].style.fontSize = "20px";
//
// //General, all page, search which selcts all, in this case, list elements with a class, "selected". "var selected" creates an array with list elements who are list elements with class, "selected".
// var selected = document.querySelectorAll("li.selected");
//
// //changes the text color to white for all list elements with a class name "selected"
// for (var i = 0; i < selected.length; i++) {
//   selected[i].style.color = "white";
// }
//
// var ptag = document.createElement("p");
// ptag.innerHTML = "I'm a new p tag!";
// document.body.children[0].append(ptag);


//MY CODE
// var array = ["Phone", "Board", "Mac", "Spoon", "Pencil"];
//
// var counter = 0;
//
// for (var i = 0; i < array.length; i++) {
//   addListItem(array[i]);
//   counter+=1;
//
//   // //If even list element then set the class to be "even"
//   // if (i % 2 !== 0) {
//   //   document.body.children[1].children[0].children[i].className = "even";
//   // }
// }
//
// document.getElementById("count").innerHTML = counter;
//
// //Create a function which adds a list item
// function addListItem(array_element) {
//   var new_item = document.createElement("li");
//   new_item.innerHTML = array_element;
//   document.body.children[1].children[0].append(new_item);
// }

//ROBS CODE
// var items = ["Phone","Board","Mac","Spoon", "Pencil"];
// for (var i = 0; i < items.length; i++) {
//   // var value = items[i];
//   addListItem(items[i]);
// }

//the variable "listbutton" targets the elements with an id = "additem"
var listbutton = document.getElementById("additem");

addEvenClass();
countListItems();

listbutton.addEventListener("click", function() {
  event.preventDefault();
  var text = formText();
  addListItem(text);
  addEvenClass();
  countListItems();
});

function addListItem(item) {
  var li = document.createElement("li");
  var ul = document.getElementById('list');

  li.innerHTML = item;
  ul.appendChild(li);
}

function countListItems(){
  var listItems = document.getElementsByTagName("li");

  var countspan = document.getElementById("count")
  countspan.innerHTML = listItems.length;
}

function addEvenClass(){
  var even = document.querySelectorAll('li:nth-child(even)');

  console.log(even);

  for (var i = 0; i < even.length; i++) {
    even[i].className = "even";
  }
}

function formText() {
  var forminput = document.getElementById("newitem").value;
  document.getElementById("newitem").value = "";
  return forminput;
}
