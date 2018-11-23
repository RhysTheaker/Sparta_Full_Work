module Mammal

  def self.common_mammal_traits
    puts "Mammals are (mostly) warm-blooded and have vertabre"
  end

  class CommonTraits
    def self.feed_young
      puts "all mammals feed their young with milk"
    end
  end

  class Biped < CommonTraits
    def legs
      puts "I have two legs"
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts "I have four legs"
    end
  end

  def super_dooper(arg1, arg2)
    puts "This is my super_dooper instance method from Animal.rb"
    puts "Argument in super class: #{arg1} ---- #{arg2}"
  end

end

# Mammal::Biped.legs

# Have to instantiate, because def is not self
monkey = Mammal::Biped.new

# Don't have to instantiate as method is .self
tiger = Mammal::Quadruped.legs
monkey.legs
