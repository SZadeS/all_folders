var myArray = ["Joe","is","the","greatest"]
for (var i = 0; i < myArray.length; i++) {
  console.log(myArray[i]);
}

var iterator = 0;
while (iterator<5){
  console.log("this loop has run " + iterator + " times");
iterator++;
}

myObject = {a:1,b:2,c:3,d:4}
for (var key in myObject){
  console.log(key);
  console.log(myObject[key]);
}


for (i=0;i<101;i++){
  if (i%3 == 0) {console.log("Fizz")}
  else if (i%5 == 0) {console.log("Buzz")}
  else if (i%15 == 0) {console.log("FizzBuzz")}
  else {console.log(i)}
}

function fizzbuzzfunc(startpoint, endpoint){
  for (i=isInteger(startpoint);i<isInteger(endpoint);i++){
    if (i%3 == 0) {console.log("Fizz")}
    else if (i%5 == 0) {console.log("Buzz")}
    else if (i%15 == 0) {console.log("FizzBuzz")}
    else {
      console.log(i)
    }
  }
}

fizzbuzzfunc(20, 40);
