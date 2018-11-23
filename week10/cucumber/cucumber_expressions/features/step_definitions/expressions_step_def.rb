Given("I provide an integer of {int}") do |int|
  @input_int = int
end

Then("I will be able to test the integer") do
  expect(@input_int).to eq 14
end

Given("I provide a float of {float}") do |float|
  @input_float = float
end

Then("I will be able to test the float") do
  expect(@input_float).to be_kind_of(Float)
end

Given("I provide specific word {string}") do |string|
  @input_word = string
end

Then("I will be able to test the word") do
  expect(@input_word).to be_kind_of(String)
end

Given("I have {int} pencil(s)/pen(s)") do |int|
  @num = int
end

Then("I will be able to test how many pens and pencils I have") do
  puts @num
end

# \w* = any word character of any length
# [A-Z]* = selects any length of a thing made of any combination of the uppercase alphabet
Given(/^I provide something specific like (\w*@[A-Za-z]*\.[A-Za-z]*\.?[A-Za-z]*) I can capture it using a regex$/) do |text|
  @regex = text
end

Then("I will be able to test the captured word") do
  # expect(@regex).to eq "cheese"
  puts @regex
end

Given("I have data from a before hook") do
  @people.each do |person|
    puts person
  end
end
