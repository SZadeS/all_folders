require "nokogiri"

class GiuseppesMenu
  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open("xml_menu.xml")) # :: means nokogiri is a module and xml is a class inside the module
  end
  def xpath_get_prices_number
    ar = Array.new
    @menu.search("//price"). each do |node|
      ar.push(node.text.delete("£").to_f)
    end
    return ar
  end

  # def xpath_get_prices
  #   @menu.xpath("/breakfast_menu/food/prices")
  # end

  def xpath_no_calories_1000
    ar2 = Array.new
    @menu.search("//calories").each do |node|
      if node.to_i <= 1000
        ar2.push(node)
      else
        continue

    end
    return ar2
  end



end
x = GiuseppesMenu.new
puts x.xpath_no_calories_1000
