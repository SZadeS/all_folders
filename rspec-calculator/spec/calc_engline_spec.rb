describe CalcEngine do
  before(:each) do #this is called a 'before hook'
    @calc = CalcEngine.new
  end
  it "should be able to add two numbers" do
    expect(@calc.add(1,1)).to eq(2)
  end
  it "should be able to subtract one number from another" do

    expect(@calc.subtract(2,1)).to eq(1)
  end
  it "should be able to multiply one number with another" do

    expect(@calc.multiply(2,5)).to eq(10)
  end
  it "should be able to divide one number with another" do

    expect(@calc.add(1,1)).to eq(2)
  end

end
