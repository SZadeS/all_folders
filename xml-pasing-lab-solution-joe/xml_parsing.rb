require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_prices
    @menu.search("price").map do |price|
      price.text.gsub("£","").to_f
    end
  end

  def get_calories_without_full_breakfast
    return @menu.search("food").map do |item|
      if item.element_children.first.text != "Full Breakfast"
        item.element_children.last.text.to_i
      else
        0
      end
    end
  end

  def get_waffle_descriptions
    return @menu.search("name").map do |name|
      if name.text.downcase.include?("waffle")
        name.parent.search("description").text
      else
        "Two"
      end
    end
  end

end

x = GuiseppesMenu.new
# puts x.get_prices
# p x.get_calories_without_full_breakfast
# p x.get_waffle_descriptions
