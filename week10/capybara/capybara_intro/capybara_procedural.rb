require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# tell it what browser we would like to use it in, i.e. in this case, chrome
session = Capybara::Session.new(:chrome)

# @driver.get('http://bbc.co.uk')

session.visit('http://www.toolsqa.com/automation-practice-form/')

# @driver.find_element(:name, 'element_name').send_keys('information you wish to send')

# # target form input field within a certain div
# session.within(:css, '.form-horizontal') do
#   session.fill_in 'firstname', with: 'Rob'
#   sleep 1
# end
#
# # click radio button
# for i in 0..1
#   session.choose "sex-#{i}"
#   sleep 1
# end
#
# # click radio button
# for i in 0..6
#   session.find(:css, "#exp-#{i}").click
# end

# # from a select, choose a specific option from the list
# session.select 'North America', from: 'continents'
# sleep 2

# # click the button which has a specific id/class etc
# session.click_button 'submit'
# sleep 2

# session.find(:css, '#exp-3').click
# sleep 1

# session.choose 'sex-0'
# sleep 1

# session.fill_in 'firstname', with: 'Rob'
# sleep 1
