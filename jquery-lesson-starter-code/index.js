// document.addEventListener("DOMContentLoaded", function(){
//
// });
$(function(){

  // var count = document.getElementById("count");
  var $count = $("#count");
 
  // var listItems = document.getElementsByTagName("li");
  var $listItems = $("li");

  // var doneItems = document.getElementsByClassName("done");
  var $doneItems = $(".done");

  // var list = document.getElementById("list");
  //
  // var newListItem = document.createElement("li");
  //
  // newListItem.innerHTML = "A new element";
  //
  // list.appendChild(newListItem);

  $("#list").append($("<li>HELLO</li>"));
  $("#list").prepend($("<li>I am the King</li>"));


  var toDoList = ["Food shop", "Wash clothes", "Pay bills"];

  // for (var i = 0; i < toDoList.length; i++) {
  //   console.log(toDoList[i]);
  // }

  $(toDoList).each(function(index, item){
    console.log(index + " " + item);
  });

  $("#count").html("5").css("color", "#BBCCAA");


  // var button = document.getElementById("myButton");
  //
  // button.addEventListener("click", function(){
  //   console.log("BUTTON WAS CLICKED");
  // });

  $("#myButton").click(function(){
    console.log("YEHHHHHH");
  });









});
