# def say_hello
#   puts "Hello world!"
# end
#
# say_hello

# word = "Hello, world!"
#
# def say_hello(word)
#   puts word
# end
#
# say_hello(word)
#
# num1 = 8
# num2 = 33.5
#
# def add(num1, num2)
#   puts num1 + num2
# end
# add(num1, num2)

# def create_user(name, course)
#   puts "#{name} is in #{course}"
# end
#
# create_user("Arun", "eng16")

def say_some_words(first, *words, second)
  words.each do |word|
    puts "Hey #{first} and #{words} and #{second}"
  end
end

say_some_words("These", "are", "some", "words")
