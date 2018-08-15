# This is the Mammals module that should be included for all mammals
module Mammals

  def self.common_mammal_traits
    puts "mammals are warm-blooded and have vertebrae"
  end

  class CommonTraits

    def feed_young
      puts "all mammals feed their young with milk"
    end
  end

  class Quadraped < CommonTraits

    def legs
      puts "I have four legs"
    end
  end

  class Biped < CommonTraits

    def legs
      puts "I have two legs"
    end
  end

end

# Mammals.common_mammal_traits
# dolphin = Mammals::CommonTraits.new #here, the module is called then a new instantiation of the CommonTraits class is called
# #this is then put into a variable
# dolphin.feed_young

dog = Mammals::Quadraped.new
man = Mammals::Biped.new
# dog.legs
# man.legs
# dog.feed_young
# man.feed_young
