require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GiuseppesMenu.new
  end

  it "no price should be more than £10" do
    expect(@xml_menu.xpath_get_prices_number).to all be <= 10
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    expect(@xml_menu.xpath_no_calories_1000).to all be <= 1000

    # Consider children element methods - Remember to step through the data and print out to the command line if you need it

  end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it

  end

end
