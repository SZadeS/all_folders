// lexical scope- the code can see out but it cant see in

// function doSomething(){
//   var = outsideVariable = 5;
// }
// function doAnotherThing(){
//   var localVariable = 10;
//   console.log(Variable)
// }
// doAnotherTthing();

function joinStringsAndPrint( string1 , string2 ) {

	var newString =  string1 + string2;

	function printString( string ) {

		console.log(string);

		// Q3
		console.log(newString);

		// Q4
		console.log(string1 + string2);

	}

	printString( newString );

	return newString;


}
var string1 = "hello, ";
var string2 = "world";
joinStringsAndPrint( string1 , string2 );

// Q1
// printString( "run from outside joinStrings" );

// Q2
// console.log(newString)

createGlobalVariable(){
  var globalVariable=5;
}
create globalVariable();
console.log(globalVariable);




1 file has been downloaded.Please reconnect so we can keep your conversations going.


var score = 0;
var weapon;
var weaponObject = {
  "1":"Rock",
  "2":"Paper",
  "3":"Scissors"
}
var compWeapon = {
  init: function() {
    this.store = Math.floor(Math.random()*3);
    this.text = readable(this.store);
  }
  store;
  text;
}
compWeapon.init();
console.log("computers weapon is ",compWeapon.store,compWeapon.text)
