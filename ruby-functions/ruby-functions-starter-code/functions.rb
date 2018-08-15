# Write a function that multiplies two numbers and returns the result
# multiply
def multiply(num1,num2)
  answer = num1*num2
  return answer
end



# Write a function that three numbers and returns the result
# add_three
def add_three(num1,num2,num3)
  answer = num1+num2+num3
  return answer
end

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number(a,b)
  if a>b
    return b
  elsif a<b
    return a
  else
    return a
end

# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three(a,b,c)
  answer = [a,b,c].max
  return answer
end


# Write a function that returns the reverse a string
# reverse_string
def reverse_string(string)
  answer = string.reverse
  return answer
end

# write a function that returns the year of birth from an age
# disemvowel
def disemvowel(a_string)
  answer = a_string.delete("aeiou")
  return answer
end

# write a fucntion that removes all ODD number from an array
# remove_odd
def remove_odd(an_array)
  odd = array.to_h.keys
  even = array.to_h.values.compact
  return even
end

# write a fucntion that removes all EVEN number from an array
# remove_even
def remove_odd(an_array)
    odd = array.to_h.keys
    even = array.to_h.values.compact
    return odd
end


# write a function that takes an array of strings and returns the string with the longest char langth
# longest_string
def longest_string(array_of_strings)
  answer=array_of_strings.max_by(&:length)
  return answer
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash
end

# Write a functino that takes any number and returns a value based on these rules

# But for multiples of three print "Fizz" instead of the number
# For the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".

def fizz_buzz number
end
