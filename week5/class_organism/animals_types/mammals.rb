module Mammals

  def self.common_traits
    puts "mammals are warm blooded vertebrates"
  end

  class CommonTraits
    def feed_young
      puts "all mammals feed their young"
    end
  end

  class Biped < CommonTraits
    def self.legs
      puts "I have 2 legs"
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts "I have 4 legs"
    end
  end

end

# Mammals.common_traits

# set up a new thing named human. Go into the Mammals then Biped class and create a new instance
human = Mammals::Biped.new
zebra = Mammals::Quadruped.new

# human.legs
# zebra.legs
#
# human.feed_young
