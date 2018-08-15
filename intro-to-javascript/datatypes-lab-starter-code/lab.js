// create a variable called first_name that contains a string
var first_name = "Zaid is Dangerous";
// create an array that contains three names
var anArray=["Joe","Tom","Rizwan"];
// use your first_name variable for the third name
var anArray=["Joe","Tom",first_name];
// create a variable called number_of_names that contains the number of people in your names array
number_of_names=(anArray.length);
// create a variable called age and put an appropriate data type in it
var age=24;
// create a variable called younger that contains a third of this age
var younger=age/3;
// create a null variable called empty
var empty=null;
// create a variable called phone_number and store this number 07888777396
// ( think about what type of data would be best for this )
var phone_number="07888777396";
// create a variable called friend
var friend;
// extract the second value from your names_array and put it in friend
var friend = anArray[1];
// create a variable called quote that contains the following sentence
// I'm not a number, I'm fairly sure I'm a String

var sentence="I'm not a number, I'm fairly sure I'm a String";
// create a variable called sentence_length that contains the length of the sentence
var sentence_length=(quote.length);

// BONUS
// Research how to create a JSON object called person
var person = {
  name:"Michael",
  age:24,
  hometown:"Croydon",
  degree:"Aerospace Engineering"
};
// Use the person object tests to add the correct data
console.log(person.degree);
