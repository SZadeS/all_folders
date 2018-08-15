require 'fizzbuzz'


describe Fizzbuzz do
  before(:each) do #this is called a 'before hook'
    @range = (1..15).to_a
    @fizzbuzz = Fizzbuzz.new
  end
  it "should return true if the number is divisible by 3" do
    expect(@fizzbuzz.checker(3)).to eq "fizz"
  end
  it "should return true if the number is divisible by 5" do
    expect(@fizzbuzz.checker(5)).to eq "buzz"
  end
  it "should return true if the number is divisible by 3 and 5" do
    expect(@fizzbuzz.checker(15)).to eq "fizzbuzz"
  end
  it "should return true if the number is not divisible by 3 and 5" do
    expect(@fizzbuzz.checker(2)).not_to eq(0)
  end
  it "should correctly apply this test to a given range" do
    expect(@fizzbuzz.range_checker(2)).not_to eq(0)

  end


end
