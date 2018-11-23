var listbutton = document.getElementById('additem');

addEvenClass();
countListItems();

listbutton.addEventListener("click", function(){
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

  for (var i = 0; i < even.length; i++) {
    even[i].className = "even";
  }
}

function formText(){
  var forminput = document.getElementById('newitem').value;
  document.getElementById('newitem').value = "";
  return forminput;
}
