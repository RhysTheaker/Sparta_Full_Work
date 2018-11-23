Feature: cucumber expressions
  As a user I want to see how cucumber expressions work
  So that I can learn things

  @numbers
  Scenario: I am able to use integers
  Given I provide an integer of 14
  Then I will be able to test the integer

  @numbers
  Scenario: I am able to use a float
  Given I provide a float of 7.2
  Then I will be able to test the float

  Scenario: I am able to capture and use words
  Given I provide specific word "bird"
  Then I will be able to test the word

  @numbers
  Scenario: I am able to use integers
  Given I have 150 pencils
  Given I have 1 pen
  Then I will be able to test how many pens and pencils I have

  @regex
  Scenario: I am able to capture words and numbers using regular expressions
  Given I provide something specific like abc123@bbc.com I can capture it using a regex
  Then I will be able to test the captured word

  @startdata
  Scenario: Check for input hook data
  Given I have data from a before hook
