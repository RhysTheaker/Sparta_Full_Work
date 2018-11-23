class Rectangle

  attr_accessor :height, :width, :scale

  def initialize height, width, scale
    self.height = height
    self.width = width
    self.scale = scale
  end

  def perimeter
    "The perimeter is #{((2*self.height) + (2*self.width)).to_f}"
    return ((2*self.height) + (2*self.width)).to_f
  end

  def area
    "the area is #{(self.height*self.width).to_f}"
    return (self.height*self.width).to_f
  end

  def scale_factor
    "Your new perimeter is #{perimeter*self.scale}, and your new area is #{area*(self.scale**2)}"
  end
end
