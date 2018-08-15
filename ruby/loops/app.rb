i=0
while i<10 do
  # puts "i is #{i}"
  i+=1
end

j=11
begin
  # puts "j is #{j}"
end while j<10

k=0
until k>10 do
  # puts "k is #{k}"
  k+=1
end

for i in 0..5
  # puts i
end

some_words = ["This","is","an","array","of","strings"]

some_words.each do |word|
  # puts word
end

more_words = ["one","two","three"]
more_words.map do |word|
  word.reverse
end
# puts more_words

some_numbers = [1,4,5,2,3,1,2,4]
sum = some_numbers.reduce 0 do |total,number|
  total + number
end
puts sum

quick_sum = some_numbers.reduce(0,:+)
puts quick_sum
