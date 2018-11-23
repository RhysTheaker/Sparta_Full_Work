document.addEventListener("DOMContentLoaded", function(){

  var boxes = document.getElementsByTagName('td');
  var turncount = 1;
  var winCount;
  var turnText = document.getElementsByClassName('playerTurn')[0];

  var winCombinations = [[0,1,2],
                        [3,4,5],
                        [6,7,8],
                        [0,3,6],
                        [1,4,7],
                        [2,5,8],
                        [0,4,8],
                        [2,4,6]];

  var Xmove = [];
  var Omove = [];

  addPieceListener();
  addResetListener();

  function addPieceListener(){
    for (var i = 0; i < boxes.length; i++) {
      boxes[i].addEventListener("click", addPiece);
    }
  }

  function addResetListener(){
    var resetButton = document.getElementById("reset");
    resetButton.addEventListener("click", resetBoard);
  }

  function addPiece(){
    if (this.innerHTML.length === 0) {
      if (turncount % 2 === 0 ) {
        this.classList.add("O");
        this.innerHTML = "O";
        turncount++;
        turnText.innerHTML = "It is X's turn"
        Omove.push(parseInt(this.getAttribute("data-num")));
        if (checkWin(Omove) == 1) {
          turnText.innerHTML = "O Wins"
        };
      } else {
        this.classList.add("X");
        this.innerHTML = "X";
        turncount++;
        turnText.innerHTML = "It is O's turn"
        Xmove.push(parseInt(this.getAttribute("data-num")));
        if (checkWin(Xmove) == 1) {
          turnText.innerHTML = "X Wins"
        };
      }
    }

  }

  function resetBoard(){
    for (var i = 0; i < boxes.length; i++) {
      boxes[i].setAttribute("class","");
      boxes[i].innerHTML = "";
      turncount = 1;
      Xmoves = [];
      Omoves = [];
      turnText.innerHTML = "It is X's turn"
    }
  }

  function checkWin(movesArray){
    for (var i = 0; i < winCombinations.length; i++) {
      winCount = 0;

      for (var j = 0; j < winCombinations[i].length; j++) {
        if (movesArray.indexOf(winCombinations[i][j]) !== -1) {
          winCount++;
        }
        if (winCount === 3) {
          return 1;
        }
      }
    }
  }






});
