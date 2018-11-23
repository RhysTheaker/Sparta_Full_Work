class Snowman

  @@accessories = []

  attr_accessor :name, :age

  def initialize name, age

    @name = name
    @age = age
    puts "Created a new snowman"

  end

  def say_name
    puts @name
  end

  def self.add_accessory(accessory)
    @@accessories.push accessory
  end

  def description
    puts "I am a snowman called #{@name} who is #{@age} hours old. I am wearing #{@@accessories}"
  end
end
