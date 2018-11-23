require_relative "functions.rb"

puts "Choose what type of calculator you wish to use? Choose from: (m)athematical calculator, (b)mi calcuator, (j)ourney calculator: "

calc_choice = gets.chomp

calc(calc_choice)
