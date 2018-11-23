require_relative 'living_organism'

# Inheret from the LivingOrganism class as a plant is a living organism
class Plant < LivingOrganism

  def self.traits
    puts "Plants have many traits such as having roots, leaves and will reproduce"
  end

  def roots
    puts "*Rooty noise*"
  end

  def leaves
    puts "Leaves often help with the photosynthesis process"
  end

  def reproduce
    puts "Plants reproduce asexualy"
  end

end
