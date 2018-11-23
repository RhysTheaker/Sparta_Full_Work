require_relative 'square.rb'
require_relative 'rectangle.rb'
require_relative 'circle.rb'
require_relative 'test.rb'

# square1 = Square.new 5, 1
#
# rectangle1 = Rectangle.new 4, 2, 1
#
# circle1 = Circle.new 4, 2

# puts circle1.scale_factor
# circle1.scale = 2
# puts circle1.scale_factor

# square = Sq.new 2
# puts square.perimeter
# puts square.area
#
# puts square.scale_factor 2

rectangle = Rec.new 2, 4
puts rectangle.perimeter
puts rectangle.area

puts rectangle.scale_factor 2, 2
