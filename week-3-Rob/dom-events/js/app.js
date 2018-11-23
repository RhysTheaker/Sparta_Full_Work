document.addEventListener('DOMContentLoaded',function(){
  console.log(document.body);

  var buttons = document.getElementsByClassName("myButtons");

  for (var i = 0; i < buttons.length; i++) {
    button = buttons[i];

    button.addEventListener("click",function(){
      console.log(this.value + ' was clicked');
    });
  }









});
