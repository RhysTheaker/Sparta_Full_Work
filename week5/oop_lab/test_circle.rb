class Rec
  attr_accessor :height, :width

  def initialize height, width
    @height = height
    @width = width
  end

  def perimeter
    puts "Perimeter = #{@height*2 + @width*2}"
  end

  def area
    puts "Area = #{@height*@width}"
  end

  def scale_factor(scale1, scale2)
    @height *= scale1
    @width *= scale2
    perimeter
    area
  end
end
