document.addEventListener("DOMContentLoaded",function(){

var myButton = document.getElementById("myButton");
myButton.addEventListener("click",handleClick);
function handleClick(){
  console.log("button was clicked");}
})

var myFrom = document.getElementById("myFrom");
myFrom.addEventListener("submit",function(){
  console.log("the form was submitted")
});

var myButtons=document.getElementbyClassName("myButtons");
for (var i = 0;i<myButtons.length;i++){
  myButtons[i].addEventListener("click",function(){
    console.log(this.value+"was clicked");
  })
}
var compScore = 1;
var playerScore = 1;
var computerMove = Math.random();

function roundUp() {
  round += 1
}

if (computerMove <0.33) {
  computerMove = "rock";
} else if(computerMove <= 0.66) {
  computerMove = "paper";
} else {
  computerMove = "scissors";
}


console.log("computer result: " + computerMove);

var UserInput = prompt('Your input');

var compare = function(choice1, choice2) {
  if (choice1 == choice2) {
    console.log("tie!");
  } else if (choice1 == "rock") {
    if (choice2 == "paper") {
      compScore += 1
      console.log("rock loses");
    } else {
      console.log("rock wins");
    }
  } else if (choice1 == "paper") {
    if (choice2 == "rock") {
      console.log("paper wins");
    } else {
      console.log("scissors wins");
    }
  } else if (choice1 == "scissors") {
    if (choice2 == "rock") {
      console.log("rock is the winner!");
    } else {
      console.log("scissors is the winner");
    }
  }
}

compare(UserInput, computerMove);
