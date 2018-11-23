Before('@numbers') do
  puts 'This test involves numbers'
end

After do
  puts "Look at these tests aren't they great"
end

# before the @startdata test, create this data so it can b passed in and used in the step_def
Before('@startdata') do
  @people = ["Kevin", "Keith", "Gary", "Brian"]
end
