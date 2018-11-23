class Square

  # attr_accessor :side_length, :scale
  #
  # def initialize side_length, scale
  #   self.side_length = side_length
  #   self.scale = scale
  # end
  #
  # def perimeter
  #   "The perimeter is #{(self.side_length*4).to_f}"
  #   return (self.side_length*4).to_f
  # end
  #
  # def area
  #   "The area is #{(self.side_length**2).to_f}"
  #   return (self.side_length**2).to_f
  # end
  #
  # def scale_factor
  #   "Your new perimeter is #{perimeter*self.scale}, and your new area is #{area*(self.scale**2)}"
  # end

  attr_accessor :side_length

  def initialize side_length
    @side_length = side_length
  end

  def perimeter
    puts "The perimeter of the square is #{@side_length*4}"
  end

  def area
    puts "The area of the square is #{@side_length**2}"
  end

  def scale_factor(scale_val)
    @side_length *= scale_val
    area
    perimeter
  end

end
