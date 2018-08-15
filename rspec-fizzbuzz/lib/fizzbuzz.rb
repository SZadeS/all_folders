class Fizzbuzz
  def divisible_by(num1,num2)

  def checker(a)
    if a%3 == 0
      return "fizz"
    elsif a%5 == 0
      return "buzz"
    elsif a%15 == 0
      return "Fizzbuzz"
    else
      return a
  end
  def range_checker(b,c)
    an_array=Array.new
    for i in b..c
      def checker(a)
        if a%3 == 0
          an_array.push("fizz")
        elsif a%5 == 0
          an_array.push("buzz")
        elsif a%15 == 0
          an_array.push("fizzbuzz")
        else
          an_array.push(i)
  end

#this is incomplete- look for joe's solution to this
end
