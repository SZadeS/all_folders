// $(function(){
//   var request = new XMLHttpRequest();
//
//   request.open("GET","http://api.icndb.com/jokes/random");
//
//   request.addEventListener("load",function(){
//     var data=(JSON.parse(this.responseText.));
//     console.log(data.value.joke);
//   });
//   request.send();
// });

$(function(){

  // var request = new XMLHttpRequest();
  //
  // request.open("GET", "http://api.icndb.com/jokes/random");
  //
  // request.addEventListener("load", function(){
  //   var data = JSON.parse(this.responseText);
  //
  //   console.log(data.value.joke);
  // });
  //
  // request.send();
  setInterval(function(){
    $.get("http://api.icndb.com/jokes/random", function(data){
      $("#joke").html(data.value.joke);
    });
  }, 3000);


  $.ajax({
    method: "POST",
    url: "http://api.icndb.com/jokes/random",
    data: { data: "My data"}
  });


});

 
