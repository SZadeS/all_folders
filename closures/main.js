function sayHello(){
  console.log("HEllo");
}

function functionCaller(functionToRun){
  functionToRun();
}

functionCaller(sayHello);

var message = "Timer finished"
function onTimerComplete(){
  console.log(message);
}

//setTimeout(onTimerComplete, 3000);

function createCounter(){
  var total=0;
  return function(){
    total++;
    return total
  }
}

var counter = createCounter();
counter();
counter();
counter();
var total = counter();

for (var i = 0;i<10; i++){
  setTimeout(function(){
    console.log(i)
  },(i*1000));
}
