require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog <Animal
  include Mammals
  

  def speak
    puts "woof woof"
  end

  def number_of_legs
    Quadraped.new.legs
  end


end

fido = Dog.new
fido.speak
