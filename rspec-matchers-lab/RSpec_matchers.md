# RSpec - Matchers_Lab

## Timings

20 - 40 Mins

## This lesson includes

* Working Through practical examples in RSpec 
* working through the fundamental matchers that will be used throughout testing

In this lesson we will be building a simple calculator

## RSpec Matchers

Essentially RSpec is a library of methods that allow you to run and apply validation methods to test your code. 

A lot of RSpec information can be found at the site - https://relishapp.com/rspec

In this instance we will be using the below url to look at matchers specifically: - https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

_**Note to tutor**_ - Provide the starter code and briefly describe the below: -
```ruby
    it 'should test that equality matchers are different' do
          a = 1
          b = 1
          c = 1.0

      expect(a).to eq(b) # eq is the equivalent of == - a & b have the same value and is the generic equality operator
      expect(a).to eql(b) # object equivalence - a and b have the same value
      expect(a).to equal(b) # object identity - a and b refer to the same object

      expect(b).to eql(c) # this will fail as c (float) is not an equivalent object to b (int)

      expect(b).not_to equal() # which variable will make this test pass?
      expect(b).not_to eql() # which variable will make this test pass?
      expect(b).to eq() # which variable will make this test pass?
    end

```

The importance points regarding the above sections is about explaining the difference between the `eq` `eql` and `equal` RSpec matchers.

After this allow the students to head to the RSpec matchers section and find the correct matchers for the starter code.

