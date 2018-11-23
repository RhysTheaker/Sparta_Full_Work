class Circle

  attr_accessor :radius, :scale

  def initialize radius, scale
    self.radius = radius
    self.scale = scale
  end

  def circumference
    "The circumference is #{(2 * Math::PI * self.radius).to_f}"
    return ((2 * Math::PI) * self.radius).to_f
  end

  def area
    "The area is #{(Math::PI * (self.radius**2)).to_f}"
    return (Math::PI * (self.radius**2)).to_f
  end

  def scale_factor
    "The new circumference is #{circumference*self.scale}, and the new area is #{area*(self.scale**2)}"
  end
end
