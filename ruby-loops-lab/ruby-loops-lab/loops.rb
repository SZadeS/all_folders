# return an array of reversed words
def reverse_array_of_strings word
  array_of_strings = ['one' , 'two' , 'three']
  result = array_of_strings.map do |word|
    word.reverse
  end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  even_numbers_array = []
  i=0
while i<num do
  even_numbers_array.push(i)
  i+=2
end
  return even_numbers_array
end

# return the average of all numbers in an array
def average numbers
  total = 0
  for i in numbers do
    total+=i
  num_of_nums = numbers.length
  average1 = total.to_f/num_of_nums.to_f
end
  return average1
end
