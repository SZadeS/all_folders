# def say_hello
#   puts "hello world!"
# end

# def add_numbers(num1,num2)
#   puts num1+num2
# end
# add_numbers(4,5)
#
# def create_user(name,course="SDET")
#   puts "#{name} is on #{course}"
# end
# create_user("Zaid")
#
# def create_user(name,course="SDET")
#   puts "#{name} is on #{course}"
# end
# create_user("Zaid", "Maths")

def say_some_words(*words)
  puts words
end
say_some_words("hello","hi","hey")

def say(what,*people)
  people.each do |person|
  puts "Hey #{person}, #{what}!"
  end
end
say_some_words("hello","a","b","c")

def say_what_when(what,*people,time)
  people.each do |person|
  puts "#{what} #{person}, #{time}!"
  end
end
say_what_when("come here","steve","bob","mike","right now")
