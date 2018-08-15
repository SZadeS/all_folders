# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

  def self.traits
    puts "Animals can breathe, eat, drink, speak and pro-create"
  end

  def speak
    puts "Animals can speak, apparently"
  end


end

Animal.alive
