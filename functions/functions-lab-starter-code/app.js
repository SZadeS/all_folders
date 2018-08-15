// 1. Write a function called 'multiply' that multiplies two numbers and returns the result

function multiply (a,b) {
  answer = a*b
return answer
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result
function addThree(a,b,c){
  answer=a+b+c
  return answer
}
// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers
function smallestNumber(a,b){
  if (a<b){
    answer = a
    return answer
  } else {
    return b
  }
}

// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers
function maxOfThree(a,b,c){
  if ((a>b) && (a>c)){
    return a
  }
  else if ((b>a) && (b>c)){
    return b
  }
  else {
    return c
  }
}
// 5. Write a function called 'reverseString' that returns the reverse a string
function reverseString(aString){
  var splitted = aString.split("");
  var reversed= splitted.reverse();
  var joined = reversed.join("");
  return joined
}
// 6. Write a function called 'disemvowel' that returns the vowels from the string parameter
function disemvowel(aString){
  var consonants = [];
  var splitted = aString.split("")
  var vowels = ["a","e","i","o","u"]
  for (x in splitted){
    if (!vowels.includes(splitted[x])){
      consonants.push(splitted[x]);
    }
  }
  return consonants.join("");
}
disemvowel("markson")
// 7. Write a function called 'removeOdd' that removes all ODD number from an array
function removeOdd(ovalues){
  return ovalues[::2]

}
// 8. Write a function called 'removeEven' that removes all EVEN number from an array
function removeOdd(evalues){
  return evalues.filter(function(num){
    return num%2-1==0;
});

}
// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length
function LongestString(anArray){
  longestword = anArray[0]
  for (i=0;i<anArray.length;i++){
    word = anArray[i]
    if (word.length >longestword.length){
      longestword = word
    }
  }
  return longestword
}
// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".
