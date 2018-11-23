$(document).ready(function(){

  var interval;
  var timeRunning = false;

  var $ball = $("#ball");
  var $board = $("#container");

  var xpos = 0;
  var ypos = 0;

  var xdirection = "+";
  var ydirection = "+";

  var gravity = 0.1;
  var gravityspeed = 0;

  $("#btn").click(ballGame);

  function ballGame(){

    if (timeRunning) {
      clearInterval(interval);
      $("#btn").html("Start")
      timeRunning = !timeRunning; //= false;
    } else {
      interval = setInterval(function(){

        //Find left and top edge of the ball
        var ballLeft = $ball.offset().left;
        var ballTop = $ball.offset().top;

        //Find right and bottom edge of the ball
        var ballRight = ballLeft + $ball.width();
        var ballBottom = ballTop + $ball.height();

        //Find left and top edge of the board
        var boardLeft = $board.offset().left;
        var boardTop = $board.offset().top;

        //Find right and bottom edge of the board
        var boardRight = boardLeft + $board.width();
        var boardBottom = boardTop + $board.height();

        //Moves the ball left and down
        $ball.css({
          "left": xpos + "px",
          "top": ypos + "px"
        })

        // Adjust position for positive and negative movement
        if (xdirection === "+") {
          xpos += 1;
        } else if (xdirection === "-") {
          xpos -= 1;
        }

        if (ydirection === "+") {
          gravityspeed += gravity;
          ypos += gravityspeed;
        } else if (ydirection === "-") {
          gravityspeed += gravity;
          ypos += gravityspeed;
        }

        //boundary collisions - flip ball direction
        //horizontal collisions
        if (ballRight >= boardRight) {
          xdirection = "-";
        } else if (ballLeft <= boardLeft) {
          xdirection = "+";
        }

        //vertical collisions
        if (ballBottom >= boardBottom) {
          ydirection = "-";
          gravityspeed = -5;
        } else if (ballTop <= boardTop) {
          ydirection = "+";
          gravityspeed = 0;
        }
      }, 10);
      $("#btn").html("Stop")
      timeRunning = !timeRunning; //= true;
    }

  }


});
