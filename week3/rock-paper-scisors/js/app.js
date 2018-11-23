//Initialise that we want the game to start
var decide = 1;

//While the user wants to play the game, the game will continue to loop
while (decide == 1) {

  //Initialise Variables each time the game re-starts
  var user_score = 0;
  var computer_score = 0;
  var check = 0;

  //Runs the algorithm to play Rock, Paper, Scisors
  while(check !== "win" && check !== "lose") {
    //User input of Rock, Paper or Scisors
    var user_weapon = prompt("Choose your weapon: (1)Rock (2)Paper (3)Scisors");

    //Select the computer weapon
    var computer_weapon = randomWeapon();

    //Run the function to find the winner
    var winner = rockPaperScisorsResult(user_weapon, computer_weapon);

    //Based on the previous result, update the score
    var recent_score = pointScoring(winner);

    //Check whether anyone has won yet
    check = winCheck(winner, recent_score);
  }

  //Asks the user whether or not they want to play the game again
  decide = prompt("Do you want to play again? (1)Yes (2)No");

  playAgain(decide);

}

// //Runs the function to either start the game again or stop
// playAgain(decide);









// ----------- FUNCTIONS -----------

//Returns a random number between 1 and 3 which simulates the computers decision of Rock, Paper or Scisors
function randomWeapon() {
  randomNum = Math.floor((Math.random() * 3) + 1);
  return randomNum;
}

//Decides who has won
function rockPaperScisorsResult(user_input, computer_input) {
  //Draw condition
  if ((user_input == 1 && computer_input == 1) || (user_input == 2 && computer_input == 2) || (user_input == 3 && computer_input == 3)) {
    alert("It's a draw!")
    return "draw";
  }
  //User win condition
  if ((user_input == 1 && computer_input == 3) || (user_input == 2 && computer_input == 1) || (user_input == 3 && computer_input == 2)) {
    alert("You win!");
    return "win";
  }
  //Computer win Condition
  if ((computer_input == 1 && user_input == 3) || (computer_input == 2 && user_input == 1) || (computer_input == 3 && user_input == 2)) {
    alert("Computer wins!")
    return "lose";
  }
}

//Award point to winner
function pointScoring (result) {
  if (result == "draw") {
    alert("The score remains: You = " + user_score + " Computer = " + computer_score);
    return 0;
  }
  else if (result == "win") {
    user_score = user_score + 1;
    alert("The score is now: You = " + user_score + " Computer = " + computer_score);
    return user_score;
  }
  else if (result == "lose") {
    computer_score = computer_score + 1;
    alert("The score is now: You = " + user_score + " Computer = " + computer_score);
    return computer_score;
  }
}

//Checks whether either the user or the computer has weapon. If the user has just won and the score is 3 then he wins. Likewise, if the computer has just won and the score is 3 then the computer wins.
function winCheck (last_result, score) {
  if ((last_result == "win") && (score == 3)) {
    alert("Congratulations! You win!");
    return "win";
  }
  else if ((last_result == "lose") && (score == 3)) {
    alert("You lost!");
    return "lose";
  }
  else {
    return 0;
  }
}

//Asks the user whether they want to play again or not
function playAgain(ans) {
  if (ans == 2) {
    alert("Thanks for playing!");
  }
  else {
    return 0;
  }
}
