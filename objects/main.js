var person = new Object();
person.name = "Joe";
person.age = 26;
person.employed = true;
person.friends = ["Richard","Jack"]
person.sayHello = function(){
  console.log("hello");
}
console.log(person);
person.sayHello();
//Constructors
//Person is a class
var Person=function(name,age,employed,friends){
  this.name = name;
  this.age = age;
  this.employed = employed;
  this.friends = friends;
  this.sayHello = function(){
    console.log(this.name+" goes to Mc Donalds");
  }
}
var person1 = new Person("Joe",26,true);
var person2 = new Person("James",26,false);
console.log(person1.name);
console.log(person2.name);
person1.sayHello();
person2.sayHello();
var person3 = {
  name:"Theresa",
  age:1000,
  employed:true,
  sayHello:function(){
    console.log("AJDJDJFDJDFJD");
  }
}

var data = {
    class_name: "Sparta Class",
    teacher: {
        name: "Steve",
        age: 32,
        employed: true
    },
    lessons: [
        {
            name: "Lesson 1",
            info: "This is the first lesson."
        },
        {
            name: "Lesson 2",
            info: "This is the second lesson."
        },
        {
            name: "Lesson 3",
            info: "This is the third lesson."
        },
        {
            name: "Lesson 4",
            info: "This is the fourth lesson."
        },
        {
            name: "Lesson 5",
            info: "This is the fifth lesson."
        }
    ]
}

console.log(data.lessons[2].info);
