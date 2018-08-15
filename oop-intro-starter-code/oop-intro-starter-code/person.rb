class Person
  #set up the class to 'listen' for properties
  attr_accessor(:name,:sex,:age,:weight,:height)
  #attr_reader- can get a value but cant change it

  def initialize (name,sex,age,weight,height)
    #an instance variable is available anywhere inside a class (has a @ in front of it)
    @name
    self.name=name
    self.sex=sex
    self.age=age
    self.weight=weight
    self.height=height
  end
  def name(name)
    @name=name
  end
  def calculate_bmi
    (self.weight / (self.height  ** 2)).to_i
  end

  def calculate_calories sex, height, weight, age
    if self.sex == "Male"
      bmr = 66.47 + (13.7 * self.weight) + (5 * self.height * 100) - (6.8 * self.age)
    else
      bmr = 655.1 + (9.6 * self.weight) + (1.8 * self.height * 100) - (4.7 * self.age)
    end

    bmr.to_i
  end
  def printInfo
    puts "#{self.name} has a BMI of #{self.calculate_bmi}. Recommend calorie intake is #{self.calculate_calories} calories"
  end



end
