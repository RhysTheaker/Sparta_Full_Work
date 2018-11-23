require_relative '../animal.rb'
require_relative '../animal_types/mammals.rb'

class Dog < Animal
  include Mammal

  def speak
    puts "Woof!"
  end

  def number_of_legs
    Quadruped.legs
  end

  def super_dooper(arg1, arg2)
    puts "This is my super_dooper instance method in Dog.rb"
    def super_dooper(arg1, arg2)
      puts "This is my super_dooper instance method in Dog.rb"
      super
    end
  end

end

# Dog.alive
# Dog.traits

# Dog::Mammal.common_mammal_traits

fido = Dog.new
# fido.speak
# fido.number_of_legs
fido.super_dooper "First arg", "Second arg"
