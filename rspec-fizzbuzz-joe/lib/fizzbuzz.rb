class Fizzbuzz

  def divisible_by?(number1, number2)
    number1 % number2 == 0 ? true : false
  end

  def fizzbuzz(range)
    return range.map do |number|
      if divisible_by?(number, 15)
        "FizzBuzz"
      elsif divisible_by?(number, 3)
        "Fizz"
      elsif divisible_by?(number, 5)
        "Buzz"
      else
        number
      end
    end
  end

end
