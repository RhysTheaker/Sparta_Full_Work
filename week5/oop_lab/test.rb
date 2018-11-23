class Sq

  attr_accessor :side

  def initialize side
    @side = side
  end

  def perimeter
    puts "Perimeter = #{@side*4}"
  end

  def area
    puts "Area = #{@side**2}"
  end

  def scale_factor(scale)
    @side *= scale
    perimeter
    area
  end
end
