require_relative "functions.rb"

# i = 0
#
# # Basic loop
# loop do
#   say_hello
#
#   i+=1
#
#   if(i > 5)
#     break
#   end
# end
#
# # While
# while (i < 10) do
#   say_hello
#   i+=1
# end
#
# # do while
# begin
#   say_hello
#   i+=1
# end while (i < 10)

# # for
# for i in 0..5
#   puts "this for loop has ran #{i} times"
# end

# for letter in "a".."z"
#   puts letter
# end

# # Each
# (0..5).each do |i|
#   puts "the value of #{i}"
# end

# some_words = ["word1", "word2", "word3", "word4"]
#
# reversed_words = some_words.map do |word|
#   word.reverse
# end
#
# some_words.map! do |word|
#   word.reverse
# end
#
# puts some_words

some_numbers = [1,5,3,5,7,8,3,2,4]

sum = some_numbers.reduce do |total, number|
  total + number
end

puts sum
