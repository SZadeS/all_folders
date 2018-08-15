#this is to link it to the other file in this folder
require relative "person.rb"

person1 = Person.new("Bob","Male",50,1.86,85)
person2 = Person.new("Joe","Male",26,1.75,68)
person1.printInfo
person2.printInfo

# def calculate_bmi height,weight
#   (weight / (height  ** 2)).to_i
# end
#
# def calculate_calories sex, height, weight, age
#   if sex == "Male"
#     bmr = 66.47 + (13.7 * weight) + (5 * height * 100) - (6.8 * age)
#   else
#     bmr = 655.1 + (9.6 * weight) + (1.8 * height * 100) - (4.7 * age)
#   end
#
#   bmr.to_i
# end
#
# # Person one
#
# person1.name= "Bob"
# person1.sex= "Male"
# person1.age= 50
# person1.height=1.86
# person1.weight= 85
# person_one_name = "Bob"
# person_one_sex = "Male"
# person_one_age = 50
# person_one_height = 1.86
# person_one_weight = 85

# calculate BMI
# person_one_bmi = calculate_bmi person_one_height, person_one_weight
# person_one_bmi = calculate_bmi( person1.height, person1.weight)
# # calculate required calories
# person_one_calories = calculate_calories(person_one_sex, person_one_height, person_one_weight, person_one_age)

puts "#{person1.name} has a BMI of #{person1.calculate_bmi}. Recommend calorie intake is #{person1.calculate_calories} calories"
