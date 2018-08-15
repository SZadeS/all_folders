require "nokogiri"

class GiuseppesMenu
  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open("xml_menu.xml")) # :: means nokogiri is a module and xml is a class inside the module
  end

  def get_menu_names
    @menu.search("name")
  end

  def xpath_get_calories
    @menu.xpath("/breakfast_menu/food/calories")
  end

  def xpath_get_names
    @menu.xpath("//name")
  end

end
x = GiuseppesMenu.new
puts x.xpath_get_names
