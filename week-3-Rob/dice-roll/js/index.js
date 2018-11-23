// Your code here
document.addEventListener('DOMContentLoaded', function() {

  var squares = document.getElementsByClassName("innerSquare");

  var rollSequences = [
    [4],
    [0,8],
    [0,4,8],
    [0,2,6,8],
    [0,2,4,6,8],
    [0,2,3,5,6,8]
  ];

  rollDice();

  function rollDice() {
    clearDice();
    var roll = getRoll();
    var dotSequence = rollSequences[roll];
    addDots(dotSequence);
  }

  function clearDice() {
    for (var i = 0; i < squares.length; i++) {
      squares[i].classList.remove("dot");
    }
  }

  function getRoll() {
    return Math.floor(Math.random() * 6);
  }

  function addDots(dotSequence) {
    for (var i = 0; i < dotSequence.length; i++) {
      squares[dotSequence[i]].classList.add("dot");
    }
  }

});
