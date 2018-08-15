require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    expect(@xml_menu.get_prices).to all be < 10
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    expect(@xml_menu.get_calories_without_full_breakfast).to all be < 1000
  end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    @xml_menu.get_waffle_descriptions.each do |description|
      expect(description.include?("Two")).to be(true)
    end
  end

end
