# hash_method_1 = {
#   :name => 'Jack',
#   :age => 29
# }
#
# hash_method_2 = {
#   name: 'Jack',
#   age: 29
# }
#
# hash_method_3 = Hash.new
# hash_method_4 = Hash[name: 'Jack', age: 29]
# hash_method_5 = Hash[:name => 'Jack', :age => 29]
#
# p hash_method_1
# p hash_method_2
# p hash_method_3
# p hash_method_4
# p hash_method_5

zoo = {
  mammals: [
    {
      name: 'Elepehant',
      origin: 'Africa / Asia',
      legs: 4
    },
    {
      name: 'Polar Bear',
      origin: 'Arctic',
      legs: 4
    },
    {
      name: 'Sloth',
      origin: 'Central America',
      legs: 2
    }
  ]
}

# zoo.each do |key, value|
#   # p key
#   value.each do |mammal|
#     mammal.each do |k, v|
#       p k
#       p v
#     end
#   end
# end

# zoo[:mammals].first.each do |k, v|
#   p k
#   p v
# end

elephant = zoo[:mammals].first.map do |k|
  k
end

p elephant

# zoo[:mammals].first.each_key do |v|
#   p v
# end
#
# zoo[:mammals].first.each_value do |k|
#   p k
# end

# p zoo[:mammals].first[:legs]
# p zoo[:mammals][1][:origin]
# p zoo[:mammals].length
