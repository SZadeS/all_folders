require 'rspec'

# RSpec is a tool for both Behavioural Driven Development as well as Test Driven Development
# RSpec focuses on providing a framework that makes your test easy to understand and uses written english
# it has a very rich library of methods to help you test your code and is one of the most widely used test frameworks in ruby

# It's generally structure is set out as below:

describe 'This is the description of the product you are going to test' do
  # The describe() method is used to describe a class, method or an example group.

  context 'context is merely another way to break out your code and description' do
    # Context is a recent(ish) addition to the framework to help break down more complex objects.It helps to venture out different outcomes in different scenarios.

    it 'the it block is where your tests begin and get run' do
      # the 'it' function is the actual test to be run and is often described as below
      # it 'should do something' do.....
    end

  end

end

=begin

to run this file in the command line access the folder and run `rspec <filename>`

After you hve run the file you should see
<----------->
.

Finished in 0.01068 seconds (files took 0.17055 seconds to load)
1 example, 0 failures
<----------->

There is little to no feedback as at the moment we do not have anything in the tests themselves

=end

describe 'a simple test' do

  it 'should be able to check values' do

    # in this example we will use manually input variables to write tests for
    a = 1
    b = 2
    c = true

=begin
RSpec supports a one-liner syntax for setting an expectation on the subject.
RSpec will give the examples a doc string that is auto-generated from the matcher used in the example.
This is designed specifically to help avoid duplication in situations where the doc string and the matcher
used in the example mirror each other exactly. When used excessively, it can
produce documentation output that does not read well or contribute to understanding the object you are describing.

This comes in two flavors:

is_expected is defined simply as expect(subject) and is designed for when you are using rspec-expectations with its newer expect-based syntax.

=end

    # Below is the example of an expect

    expect(a + b).to eq 3
    expect(c).to be true

  end

  d = 1
  e = 1
  f = 1.0

  expect(d).to eq(e)
  expect(d).to eql(e)
  expect(d).to equal(e)

  expect(d).to equal(f)
  expect(d).to be(e)
  expect(d).not_to_equal(f)


end
