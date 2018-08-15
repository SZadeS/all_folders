require 'fizzbuzz'

describe Fizzbuzz do

  before(:each) do
    @range = (1..15).to_a
    @fizzbuzz = Fizzbuzz.new
  end

  it "should return true if the number is divisible by 3" do
    expect(@fizzbuzz.divisible_by?(@range[2], 3)).to be(true)
  end

  it "should return true if the number is divisible by 5" do
    expect(@fizzbuzz.divisible_by?(@range[4], 5)).to be(true)
  end

  it "should return true if the number is divisible by 3 and 5" do
    expect(@fizzbuzz.divisible_by?(@range[14], 15)).to be(true)
  end

  it "should correctly apply fizzbuzz to a given range" do
    # expect(@fizzbuzz.fizzbuzz(@range)).to eq([1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"])
    expect(@fizzbuzz.fizzbuzz(@range)[0]).to eq(1)
    expect(@fizzbuzz.fizzbuzz(@range)[2]).to eq("Fizz")
    expect(@fizzbuzz.fizzbuzz(@range)[4]).to eq("Buzz")
    expect(@fizzbuzz.fizzbuzz(@range)[15]).to eq("FizzBuzz")
  end
end
