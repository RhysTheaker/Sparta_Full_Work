Given("I have a datatable") do |table|
  # .rows sets the table up in an array form
  @table = table.rows
  # puts @table
end

Then("I am able to print out name and role to the command line") do
  @table.each do |i|
    puts "#{i[0]} has the role of #{i[1]}"
  end
end
