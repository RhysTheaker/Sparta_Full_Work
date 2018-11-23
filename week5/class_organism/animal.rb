require_relative 'living_organism.rb'

class Animal < LivingOrganism

  def traits
    puts "animals can eat, drink, sleep, speak, procreate"
  end

  def breathe
    puts "inhale and exhale"
  end

  def eat
    puts "nom nom nom"
  end

  def reproduce
    puts "the fun one"
  end

  def speak
    puts "hello world"
  end
end

tiger = Animal.new

# tiger.alive

# Animal.alive
