=begin
Write a module which helps you calculate the perimeter of rectangles and squares.
=end

module Perimeter
  def perimeter
    sides.inject(0){|sum, number| sum += number}
  end
end

class Rectangle
  include Perimeter
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  include Perimeter
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end

puts Rectangle.new(2,3).perimeter
puts Square.new(5).perimeter