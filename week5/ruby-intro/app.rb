# Tell Ruby that was want to use the gems
require 'pp'
require 'mac/say'
require 'faker'

puts "hello"

print "This comment "
print "will be on one line\n"

puts "hello again"

p "this is some text"

variable = 12

print variable

talker = Mac::Say.new(voice: :alex, rate: 300)
quote = Faker::Lorem.word #=> "repellendus"
talker.say string: quote

# This is  a comment
