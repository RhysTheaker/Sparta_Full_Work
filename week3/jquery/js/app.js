//Wait until the page has loaded, then run it
$(document).ready(function() {

  // //target all the list items and add the class "done"
  // $("li").addClass("done");
  //
  // //target the ID="count" and replace the innerHTML with "5"
  // $("#count").html("5");
  //
  // //the .eq allows you to select a specific element. In this case the 4th list item
  // $("li").eq(3).addClass("done");
  //
  // $("#list").append("<li class='done'>Feed the fish</li>");

  listcount();
  workDoneListener();

  //Target the ID="newitem". When you click, run the function "addListItem.
  $("#newitem").click(addListItem);

  $("#removeitem").click(removeListItem)


  //function to add an item. Target the ID="list" and add a new list item with text = "New Item"
  function addListItem(){
    $("#list").append("<li class=\"todo\">New Item<button type=\"button\" name=\"button\" class=\"markdone\">Mark as Done</button></li>");
    workDoneListener();
    listcount();
  }

  function removeListItem(){
    $("li").last().remove();
    workDoneListener();
    listcount();
  }

  function listcount(){
    //gets the length of the "todo" array
    var count = $(".todo").length;
    $("#count").html(count);
  }

  function workDoneListener(){
    $(".markdone").click(function() {
      $(this).parent().addClass("done");
      $(this).parent().removeClass("todo");
      $(this).remove();
      listcount();
    });
  }


});
