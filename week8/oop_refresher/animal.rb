require_relative 'living_organism.rb'

# access the class via inheritence
class Animal < LivingOrganism

  def self.traits
    puts "Animals can breathe, eat, drink, speak and pro-create"
  end

  def breathe
    puts "Inhale and exhale"
  end

  def eat
    puts "Om nom nom"
  end

  def drink
    puts "*Drinking noise*"
  end

  def speak
    puts "Making noise"
  end

  def procreate
    puts "When nature calls"
  end

end

# Animal.alive
# Animal.traits

# animal = Animal.new
# animal.speak
# animal.breathe
# animal.eat
# animal.speak
# animal.procreate
