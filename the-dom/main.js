document.body.children[0]= "I have changed";

var wrapperDiv = document.getElementById("wrapper");
wrapperDiv.style.backgroundcolor = "blue";
var listItems = document.getElementsByTagName("li");
listItems[0].innerHTML = "Im an LI and I've changed";
var selectedItems = document.getElementsByClassName("selected");
for (var i=0;i<selectedItems.length;i++){
  selectedItems[i].style.color = "red";
}
//create a new blank element
var ptag=document.createElement("p")
//add content and styling if needed
ptag.innerHTML = "A brand new tag";
//add it to the dom
document.body.appendChild(ptag);
var listItemsArray = ["item four","item five","item six"]


function addListItem(){
  for (i = 0;i<listItemsArray.length;i++){
    var newli = document.createElement("li");
    newli.innerHTML = listItemsArray[i];
    document.getElementById("li").appendChild[newli]
    document.body.children[1].children[0].children[(i*2)+1].className.add("")
  }
}
addListItem();


var listItems = ["Go out","Come back" , "Buy food" , "Eat food"];


 	function addListItem(value) {

 	// get the list ul
 	var ul = document.getElementById("list");

 	// create the new element
 	var li = document.createElement("li");

 	// set the value of the li to the one passed in to the function
 	li.innerHTML = value;

 	// append the li to the list ul
 	ul.appendChild(li);


 	}

 	// write append loop here

 	for (var i = 0 ; i < listItems.length ; i++) {

 	// get the array value
 	var value = listItems[i];

 	// pass the value to the function
 	addListItem(value);

 	}

 	// write the class loop here

 	var lis = document.querySelectorAll("li");

 	for (var i = 0 ; i < lis.length ; i++) {

 	// decide on the class name
 	var className = i % 2 ? "even" : "";

 	// get a single li
 	var li = lis[i];

 	// set the class;
 	li.className = className;

 	}

 	// set the class count here
 	var countSpan = document.getElementById("count");

 	// set the html of the span
 	countSpan.innerHTML = lis.length;







// anArray1= [1,2,3,4,5]
// addListItem(anArray1)
//
// function addListItem(){
//   var listOfLi= document.getElementsByTagName("li");
//   listOfLi.appendChild
//
// }
