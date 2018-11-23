
/* External style sheet */
function externalfn() {
  document.getElementById('demo5').innerHTML = "changed text";
}

function varfn() {
  var a, b, c;
  a = 1;
  b = 2;
  c = a + b;
  document.getElementById('demo6').innerHTML = c;
}

function truefalsefn() {
  var x = 5;
  var y = 5;
  var z = 6;
  document.getElementById('demo7').innerHTML = (x == y) + "<br>" + (x == z);
}

function parameterfn (input1, input2) {
  x = input1 * input2;
  document.getElementById('demo8').innerHTML = x;
}

function outputfn () {
  var fruits, text, FruitLength, i;
  fruits = ["Banana", "Orange", "Apple", "Mango"];
  fLen = fruits.length;
  text = "<ul>";
  for (i = 0; i < FruitLength; i++) {
      text += "<li>" + fruits[i] + "</li>";
  }
  text += "</ul>";
  document.getElementById("demo10").innerHTML = text;
}
