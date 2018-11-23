require 'spec_helper'

missing_details_error = "Something's missing. Please check and try again."
password_incorrect_error = 'Uh oh, that password doesn’t match that account. Please try again.'
# password_incorrect_error = "That's not the right password for that account. Reset your password here."
password_short_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
# username_incorrect_error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
username_incorrect_error = "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
day_month_year_error = "Oops, that date doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009."
month_year_error = "Oops, that month and year don't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009."
year_error = "Oops, that year doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009."

register_general_error = "Something's missing. Please check and try again."
invalid_email = "Sorry, that email doesn’t look right. Please check it's a proper email."
password_short = "Sorry, that password is too short. It needs to be eight characters or more."
password_only_letters = "Sorry, that password isn't valid. Please include something that isn't a letter."
password_only_numbers = "Sorry, that password isn't valid. Please include a letter."
postcode_short_error = "Sorry, that postcode's too short. Please check it's a proper postcode."
postcode_long_error = "Sorry, that postcode's too long. Please check it's a proper postcode."
unselected_gender_error = "Something's missing. Please check and try again."

valid_username = 'rwhitehouse@spartaglobal.com'
valid_password = 'Password123'

invalid_username = 'hdquwhdiqwhiuqw'
invalid_password = 'Password1234'

short_password = '1234'

describe 'BBC website Login Errors' do

  before(:each) do
    @driver = BBCSite.new
  end

  # it "should allow the user to navigate to the login page" do
  #   @driver.bbc_homepage.visit_homepage
  #   expect(@driver.bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'
  #   @driver.bbc_homepage.click_sign_in
  #   expect(@driver.bbc_homepage.current_url).to eq 'https://account.bbc.com/signin'
  # end

  # it "should login with valid username and valid password" do
  #   @driver.bbc_homepage.visit_homepage
  #   @driver.bbc_homepage.click_sign_in
  #   sleep 1
  #   @driver.bbc_login_page.input_user(valid_username)
  #   @driver.bbc_login_page.input_password(valid_password)
  #   sleep 1
  #   @driver.bbc_login_page.click_log_in
  #   sleep 1
  #   expect(@driver.bbc_homepage.sign_in_text).to eq 'Your account'
  # end

  # it "should display an error for blank username and password" do
  #   @driver.bbc_homepage.visit_homepage
  #   @driver.bbc_homepage.click_sign_in
  #   sleep 1
  #   @driver.bbc_login_page.click_log_in
  #   sleep 1
  #   expect(@driver.bbc_login_page.username_error_text).to eq missing_details_error
  #   sleep 1
  #   expect(@driver.bbc_login_page.password_error_text).to eq missing_details_error
  # end

  # it "should display an error for incorrect username" do
  #   @driver.bbc_homepage.visit_homepage
  #   @driver.bbc_homepage.click_sign_in
  #   sleep 1
  #   @driver.bbc_login_page.input_user(invalid_username)
  #   @driver.bbc_login_page.input_password(valid_password)
  #   sleep 1
  #   @driver.bbc_login_page.click_log_in
  #   sleep 1
  #   expect(@driver.bbc_login_page.username_error_text).to eq username_incorrect_error
  # end

  # it "should display an error for incorrect password" do
  #   @driver.bbc_homepage.visit_homepage
  #   @driver.bbc_homepage.click_sign_in
  #   sleep 1
  #   @driver.bbc_login_page.input_user(valid_username)
  #   @driver.bbc_login_page.input_password(invalid_password)
  #   sleep 1
  #   @driver.bbc_login_page.click_log_in
  #   sleep 1
  #   expect(@driver.bbc_login_page.password_error_text).to eq password_incorrect_error
  # end

  # it "should display an error for a short password" do
  #   @driver.bbc_homepage.visit_homepage
  #   @driver.bbc_homepage.click_sign_in
  #   sleep 1
  #   @driver.bbc_login_page.input_user(valid_username)
  #   @driver.bbc_login_page.input_password(short_password)
  #   sleep 1
  #   @driver.bbc_login_page.click_log_in
  #   sleep 1
  #   expect(@driver.bbc_login_page.password_error_text).to eq password_short_error
  # end

  it "should allow the user to register an account" do
    @driver.bbc_homepage.visit_homepage
    @driver.bbc_homepage.click_sign_in
    sleep 1
    @driver.bbc_registration_page.select_register
    sleep 1
    @driver.bbc_registration_page.select_over_thirteen
    sleep 1
  end

end
