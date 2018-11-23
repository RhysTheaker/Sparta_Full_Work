Given("I have more than one data row in my tables") do

end

And(/^includes ([A-Za-z]*) and (\d*)$/) do |name, age|
  # @name = name
  # @age = age
end

Then(/^I can print the ([A-Za-z]*) and (\d*)$/) do |name, age|
    puts "#{name} is #{age} years old"
end
