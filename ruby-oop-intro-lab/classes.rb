class Square
  attr_accessor(:length)
  def initialize (length)
    self.length=length
    self.calculate_area = area
    self.calculate_perimeter=perimeter
  end
  def calculate_area length
      length ** 2
  end
  def calculate_perimeter length
    length * 4
  end
  def scaled_area
    length *=10
    scaled_area = self.calculate_area length
    scaled_perimeter=self.calculate_perimeter length
  def print_info
    puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"
  end
