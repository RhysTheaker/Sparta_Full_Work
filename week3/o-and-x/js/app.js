
document.addEventListener("DOMContentLoaded", function(){

  var winFormula = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];

  //Initialize variables and arrays
  var Xmove = [];
  var Omove = [];
  //Counts the number of matches within X or O's array with the array containing the arrays with the winning conditions
  var winCount;
  //Variable will decide whether the game has ended or not
  var winner = 0;
  //Set a variable to decide whose turn it is
  var turncount = 1;

  //Grab all the squares. The variable "boxes" is used to target the inidividual squares on the board
  var boxes = document.getElementsByTagName("td");

  //Targets the return text. The [0] denotes that it is the first of those tags
  var turnText = document.getElementsByClassName("playerTurn")[0];

  //-------- Run the game -------
  addPieceListener();
  addResetListener();
  //-----------------------------

  //Refers to the element that is being targeted. Looks at the generic on-click event and makes it specific to the object
  function addPiece() {

    //Decide whether the square is occupied or not
    if (this.innerHTML.length === 0) {
      //Apply logic to decide whether to apply an X or an O
      if (turncount % 2 === 0) {
        this.classList.add("X");
        this.innerHTML = "X";
        turncount++;
        Xmove.push(parseInt(this.getAttribute("data-num")));
        turnText.innerHTML = "It is O's turn";
        checkWin(Xmove);
        if (winner == 1) {
        turnText.innerHTML = "X wins!"
      }
    }
      else {
        this.classList.add("O");
        this.innerHTML = "O";
        turncount++;
        Omove.push(parseInt(this.getAttribute("data-num")));
        turnText.innerHTML = "It is X's turn";
        checkWin(Omove);
        if (winner == 1) {
        turnText.innerHTML = "O wins!";
      }
    }
    if (winner == 0) {
      checkDraw(turncount);
    }
  }
}
  //Cycle through the squares and run the function "addPiece" when one of the squares has been clicked
  function addPieceListener() {
    for (var i = 0; i < boxes.length; i++) {
      boxes[i].addEventListener("click", addPiece)
    }
  }

  //Target the reset button with the ID=reset. It tells us that when we click the reset button, it runs the function named "resetBoard"
  function addResetListener() {
    var resetButton = document.getElementById("reset");
    resetButton.addEventListener("click", resetBoard);
  }

  //Function which resets the board after the game is over
  function resetBoard() {
    //Cycle through all the squares on the board and remove the classes
    for (var i = 0; i < boxes.length; i++) {

      //Remove classes from all squares
      boxes[i].classList.remove("X");
      boxes[i].classList.remove("O");

      //Remove the innerHTML
      boxes[i].innerHTML = "";

      //Return the counter to 1
      winCount = 0;
      winner = 0;
      turn_num = 0;
      turncount = 1;

      Omove = [];
      Xmove = [];

      turnText.innerHTML = "It is O's turn";
    }
  }

  //Cycles through X and O's array which contains which squares they own and check whether they corespond to a winning array
  function checkWin(movesArray) {
    for (var i = 0; i < winFormula.length; i++) {
      //Keep track of how many things match
      winCount = 0;

      for (var j = 0; j < winFormula[i].length; j++) {
        //Cycle through all the winning combinations
        if (movesArray.indexOf(winFormula[i][j]) !== -1) {
          winCount++
        }
        if (winCount == 3) {
          winner = 1;
        }
      }
    }
  }

  //If the board is full and no-one has won then declare a draw
  function checkDraw(turn_num) {
    if (turn_num >= 10) {
      turnText.innerHTML = "It's a draw!"
    }
  }
});







// // --------------- jQuery ----------------
// $(document).ready(function() {
//
//   var winFormula = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]];
//
//   //Initialize variables and arrays
//   var Xmove = [];
//   var Omove = [];
//   //Counts the number of matches within X or O's array with the array containing the arrays with the winning conditions
//   var winCount;
//   //Variable will decide whether the game has ended or not
//   var winner = 0;
//   //Set a variable to decide whose turn it is
//   var turncount = 1;
//
//   function addPieceListener() {
//     $("data-num").click(function() {
//       //add click function
//     });
//   }
//
//   function addPiece() {
//     //We only want to target the squares which are yet to contain either an X or O
//     if ($(this).html.length === 0) {
//       //Apply logic to decide whether to apply an X or O
//       if (turncount % 2 === 0) {
//         $(this).addClass("X");
//         $(this).html("X");
//         turncount++;
//         Omove.push(parseInt(this.getAttribute("data-num")));
//         $(".playerTurn").html("It is 0's turn");
//         //checkwin function
//         if (winner == 1) {
//           $(".playerturn").html("X wins!");
//         }
//       }
//       else {
//         $(this).addClass("O");
//         $(this).html("X");
//         turncount++;
//         Xmove.push(parseInt(this.getAttribute("data-num")));
//         $(".playerTurn").html("It is X's turn");
//         //checkwin function
//         if (winner == 1) {
//           $(".playerTurn").html("O wins!")
//         }
//       }
//       if (winner == 0) {
//         //checkdraw function
//       }
//     }
//   }
//
//   //Function which resets the board after the game is over
//   function resetBoard() {
//     //Cycle through all the squares on the board and remove the classes
//     for (var i = 0; i < boxes.length; i++) {
//       boxes[i]
//     }
//
//
//   //Function which resets the board after the game is over
//   function resetBoard() {
//     //Cycle through all the squares on the board and remove the classes
//     for (var i = 0; i < boxes.length; i++) {
//
//       //Remove classes from all squares
//       boxes[i].classList.remove("X");
//       boxes[i].classList.remove("O");
//
//       //Remove the innerHTML
//       boxes[i].innerHTML = "";
//
//       //Return the counter to 1
//       winCount = 0;
//       winner = 0;
//       turn_num = 0;
//       turncount = 1;
//
//       Omove = [];
//       Xmove = [];
//
//       turnText.innerHTML = "It is O's turn";
//     }
//   }
//
// });
