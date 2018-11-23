$(document).ready(function(){

  console.log("DOM content loaded");

  listCount();
  markAsDone();

  $("#newitem").click(function(){
    var item = randomitem();
    addListItem(item);
  });

  $("#removeitem").click(function(){
    removeLastItem();
  });

  function randomitem(){
    var items = ["feed the fish", "make a cup of tea", "learn jQuery"]
    var random = Math.floor(Math.random()*(items.length));
    var item = items[random];
    return item;
  };

  function addListItem(itemtext){
    $("#list").append("<li class=\"todo\">"+ itemtext + "<button type=\"button\" name=\"button\" class=\"markdone\">Mark as Done</button></li>")
    listCount();
    markAsDone();
  }

  function removeLastItem(){
    $("li").last().remove();
    listCount();
  }

  function listCount(){
    var count = $(".todo").length;
    $("#count").html(count);
  }

  function markAsDone(){
    $(".markdone").click(function(){
      $(this).hide();
      $(this).parent().addClass("done");
      $(this).parent().removeClass("todo");
      listCount();
    })
  }

});
