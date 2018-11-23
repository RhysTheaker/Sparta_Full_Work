require_relative "snowman.rb"

# name, age, accessory

snowman1 = Snowman.new "Jeff-Lloyd", 2

snowman1.description
# snowman1.add_accessory "scarf"
snowman1.description

snowman2 = Snowman.new "Chris", 0.5
snowman2.description
# snowman2.add_accessory "hat"
snowman2.description

Snowman.add_accessory("All snowmen can see this")
snowman2.description
snowman1.description
