console.log("Yellow World");
var moneyremaining=8;
if (moneyremaining>10) {
console.log("buy a drink")
}
else if (moneyremaining>5) {
console.log("just buy crisps")
}
else{
console.log("go home")
};
//If I have more than 10 pounds in my pocket AND I've had fewer than three drinks I'll buy another drink. If I have more than 5 pounds OR the crisps are free I'll buy some crisps. Otherwise I'll go home. HINT: You may need to create some new variables.

var moneyremaining = 25
var drinksconsumed=2
var crisps="free"
if (moneyremaining>10 && drinksconsumed<3){
  console.log("buy another drink")
}
else if (moneyremaining>5  || crisps=="free"){
  console.log("have some crisps")
}
else {
console.log("go home")
};

var name=prompt("what's your name?")
//alert() is the opposite of prompt (an output)
var hello =3;
switch(hello)
{
  case 3:
  console.log("3");
  break;
  case 5:
  console.log("5");
  break;
  case 7:
  console.log("7");
  break;
}
var number1=8
var number2=10
console.log(number1 && number2)
