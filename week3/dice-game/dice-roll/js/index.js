//We want the dice to be present upon opening the html file
document.addEventListener("DOMContentLoaded", function(){

  // //Have a large array which consists of 6 arrays for each of its elements. Each element corresponds to a possible roll of the dice
  // dice = [[0, 0, 0, 0, 1, 0, 0, 0, 0],
  //            [1, 0, 0, 0, 0, 0, 0, 0, 1],
  //            [1, 0, 0, 0, 1, 0, 0, 0, 1],
  //            [1, 0, 1, 0, 0, 0, 1, 0, 1],
  //            [1, 0, 1, 0, 1, 0, 1, 0, 1],
  //            [1, 0, 1, 1, 0, 1, 1, 0, 1]]

  // //Button to roll the dice
  // var button = document.getElementsByClassName("diceRoll");
  //
  // button.addEventListener("click", function() {
  //   diceClear();
  //   diceRoll();
  // });

  //declare variables globally
  
  //The variable, "squares" targets all the "innerSquare" elements as the class of these must be targeted when we want to display the correct dice-face
  var squares = document.getElementsByClassName("innerSquare");
  var roll;
  var diceFace;
  var dice;

  // jQuery Click
  // $("#diceBtn").click(diceRoll)

  //JS Click
  var button = document.getElementById("diceBtn");
  button.addEventListener("click", function(){
    diceClear();
    diceRoll();
  });

  // diceRoll();


  // ------------ FUNCTIONS -------------

  //This function rolls the dice
  function diceRoll() {

    //Have a large array which consists of 6 arrays for each of its elements. Each element corresponds to a possible roll of the dice
    dice = [[0, 0, 0, 0, 1, 0, 0, 0, 0],
    [1, 0, 0, 0, 0, 0, 0, 0, 1],
    [1, 0, 0, 0, 1, 0, 0, 0, 1],
    [1, 0, 1, 0, 0, 0, 1, 0, 1],
    [1, 0, 1, 0, 1, 0, 1, 0, 1],
    [1, 0, 1, 1, 0, 1, 1, 0, 1]]


    //Generates the number rolled on the dice
    roll = diceThrow();
    console.log("Random number generated is " + roll);

    //Selects the dice face based on the number rolled. It targets the correct element of the dice array which corresponds to the correct dice-face
    diceFace = dice[roll];
    console.log("The face of the dice picked is " + diceFace);

    diceDisplay();
  }

  //Goes through the array and adds the class "dot" to each relevant square
  function diceDisplay() {
    for (var i = 0; i < squares.length; i++) {
      if (diceFace[i] == 1) {
        squares[i].classList.add("dot");
      }
    }
  }

  //Generate a random number between 0 and 5
  function diceThrow() {
    var roll_value = Math.floor((Math.random() * 6));
    return roll_value;
  }

  //Clear the board for the next roll
  function diceClear() {
    for (var i = 0; i < squares.length; i++) {
        squares[i].classList.remove("dot");
    }
  }
});
