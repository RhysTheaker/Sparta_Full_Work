$(document).ready(function(){

  var interval;
  var timeRunning = false;

  var $ball = $("#ball");
  var $board = $("#container");

  var xpos = 0;
  var ypos = 0;

  var xdirection = "+";
  var ydirection = "+";

  $("#btn").click(ballGame);

  function ballGame(){

    if (timeRunning) {
      clearInterval(interval);
      $("#btn").html("Start")
      timeRunning = !timeRunning; //= false;
    } else {
      interval = setInterval(function(){

        ballPositions();
        boardPositions();

        //Moves the ball left and down
        $ball.css({
          "left": xpos + "px",
          "top": ypos + "px"
        })

        setVerticalDirection();
        setHorizontalDirection();
        horizontalCollision();
        verticalCollision();
      }, 10);
      $("#btn").html("Stop")
      timeRunning = !timeRunning; //= true;
    }

  }

  function ballPositions(){
    //Find left and top edge of the ball
    var ballLeft = $ball.offset().left;
    var ballTop = $ball.offset().top;

    //Find right and bottom edge of the ball
    var ballRight = ballLeft + $ball.width();
    var ballBottom = ballTop + $ball.height();
  }

  function boardPositions(){
    //Find left and top edge of the board
    var boardLeft = $board.offset().left;
    var boardTop = $board.offset().top;

    //Find right and bottom edge of the board
    var boardRight = boardLeft + $board.width();
    var boardBottom = boardTop + $board.height();
  }

  function setHorizontalDirection(){
    // Adjust position for positive and negative movement
    if (xdirection === "+") {
      xpos += 1;
    } else if (xdirection === "-") {
      xpos -= 10;
    }
  }

  function setVerticalDirection(){
    // Adjust position for positive and negative movement
    if (ydirection === "+") {
      ypos += 5;
    } else if (ydirection === "-") {
      ypos -= 1;
    }
  }

  //boundary collisions - flip ball direction
  function horizontalCollision(){
    //horizontal collisions
    if (ballRight >= boardRight) {
      xdirection = "-"
    } else if (ballLeft <= boardLeft) {
      xdirection = "+"
    }
  }

  function verticalCollision(){
    //vertical collisions
    if (ballBottom >= boardBottom) {
      ydirection = "-"
    } else if (ballTop <= boardTop) {
      ydirection = "+"
    }
  }



});
