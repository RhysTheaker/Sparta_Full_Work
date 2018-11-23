require_relative '../lib/bbc_site.rb'

require 'spec_helper'

describe "testing the bbc site" do

  missing_details_error = "Something's missing. Please check and try again."
  password_incorrect_error = 'Uh oh, that password doesn’t match that account. Please try again.'
  password_short_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
  username_incorrect_error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
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
  invalid_password = 'Notmypassword'

  short_password = '1234'

  valid_postcode = 'S366BQ'

  before(:each) do
    @driver = BBCSite.new
    @driver.ten_min_mail.visit_homepage
    TEMP_EMAIL = @driver.ten_min_mail.get_email
    @driver.bbc_homepage.visit_homepage
  end

  context 'testing the bbc log in functionality' do

    # it "should allow the user to navigate to the log-in page" do
    #   @driver.bbc_homepage.click_sign_in
    #   expect(@driver.current_url).to eq 'https://account.bbc.com/signin'
    # end

    # it "should allow the user to log-in with correct details" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_login_page.input_username(valid_username)
    #   @driver.bbc_login_page.input_password(valid_password)
    #   @driver.bbc_login_page.click_log_in
    #   expect(@driver.bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'
    #   expect(@driver.bbc_homepage.sign_in_text).to eq 'Your account'
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_account_page.sign_out
    # end

    # it "should display an error for blank password and username" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_login_page.click_log_in
    #   expect(@driver.bbc_login_page.username_error_text).to eq missing_details_error
    #   expect(@driver.bbc_login_page.password_error_text).to eq missing_details_error
    # end

    # it "should display an error message for an incorrect password" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_login_page.input_username(valid_username)
    #   @driver.bbc_login_page.input_password(valid_password)
    #   @driver.bbc_login_page.click_log_in
    #   expect(@driver.bbc_login_page.password_error_text).to eq password_incorrect_error
    # end

    # it "should display an error message for a short password" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_login_page.input_username(valid_username)
    #   @driver.bbc_login_page.input_password(short_password)
    #   @driver.bbc_login_page.click_log_in
    #   expect(@driver.bbc_login_page.password_error_text).to eq password_short_error
    # end

    # it "should display an error for incorrect username" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_login_page.input_username(valid_username)
    #   @driver.bbc_login_page.input_password(valid_password)
    #   @driver.bbc_login_page.click_log_in
    #   expect(@driver.bbc_login_page.username_error_text).to eq username_incorrect_error
    # end

  end

  context 'testing the bbc registration functionality' do

    # it "should allow the user to navigate to the registration page" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 2
    # end

    # it "should display an error message for blank: day, month and year" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.day_month_year_error_text).to eq day_month_year_error
    #   sleep 2
    # end

    # it "should display an error message for blank: month and year, and valid: day" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.day_month_year_error_text).to eq month_year_error
    #   sleep 2
    # end

    # it "should display an error message for blank: year, and valid: month and day" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.day_month_year_error_text).to eq year_error
    #   sleep 2
    # end

    # it "should display an error for the invalid day, month and year" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(99)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(99)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.day_month_year_error_text).to eq day_month_year_error
    #   sleep 2
    # end

    # it "should display all the required error messages if a user attempts to register will all input fields left blank" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.email_error_text).to eq register_general_error
    #   expect(@driver.bbc_registration_page.password_error_text).to eq register_general_error
    #   expect(@driver.bbc_registration_page.postcode_error_text).to eq register_general_error
    #   expect(@driver.bbc_registration_page.gender_error_text).to eq register_general_error
    #   expect(@driver.bbc_registration_page.email_update_error_text).to eq register_general_error
    # end

    # it "should display an error message if the email isn't a valid email" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.email_input("l")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.email_error_text).to eq invalid_email
    # end

    # it "should display an error message if the password is too short" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.password_input("l")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.password_error_text).to eq password_short
    # end

    # it "should display an error message if the password consists of only letters" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.password_input("qwertyuiop")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.password_error_text).to eq password_only_letters
    # end

    # it "should display an error message if the password consists of only numbers" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.password_input("123456789")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.password_error_text).to eq password_only_numbers
    # end

    # it "should return an error message if the postcode is too short" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.postcode_input("l")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.postcode_error_text).to eq postcode_short_error
    # end

    # it "should return an error message if the postcode is too short" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   sleep 2
    #   @driver.bbc_registration_page.month_input(1)
    #   sleep 2
    #   @driver.bbc_registration_page.year_input(1996)
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.postcode_input("lllllllllll")
    #   sleep 2
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   expect(@driver.bbc_registration_page.postcode_error_text).to eq postcode_long_error
    # end

    # it "should allow you to recieve updates via email" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   @driver.bbc_registration_page.month_input(1)
    #   @driver.bbc_registration_page.year_input(1996)
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.email_update_click(0)
    #   sleep 2
    #   expect(@driver.bbc_registration_page.email_update_selected(0)).to be true
    #   sleep 1
    # end

    # it "should allow you to not opt out of recieving updated via email. Also should not allow both to recieve and not to recieve boxes to be clicked" do
    #   @driver.bbc_homepage.click_sign_in
    #   @driver.bbc_registration_page.click_register
    #   sleep 1
    #   @driver.bbc_registration_page.thirteen_or_over_button
    #   sleep 2
    #   @driver.bbc_registration_page.day_input(19)
    #   @driver.bbc_registration_page.month_input(1)
    #   @driver.bbc_registration_page.year_input(1996)
    #   @driver.bbc_registration_page.submit_button
    #   sleep 2
    #   @driver.bbc_registration_page.email_update_click(0)
    #   @driver.bbc_registration_page.email_update_click(1)
    #   expect(@driver.bbc_registration_page.email_update_selected(0)).to be false
    #   expect(@driver.bbc_registration_page.email_update_selected(1)).to be true
    # end

    it "should allow a user to register a new account" do
      @driver.bbc_homepage.click_sign_in
      @driver.bbc_registration_page.click_register
      sleep 1
      @driver.bbc_registration_page.thirteen_or_over_button
      sleep 2
      @driver.bbc_registration_page.day_input(19)
      @driver.bbc_registration_page.month_input(1)
      @driver.bbc_registration_page.year_input(1996)
      @driver.bbc_registration_page.submit_button
      sleep 2
      @driver.bbc_registration_page.email_input(TEMP_EMAIL)
      sleep 1
      @driver.bbc_registration_page.password_input(valid_password)
      sleep 1
      @driver.bbc_registration_page.postcode_input(valid_postcode)
      sleep 1
      @driver.bbc_registration_page.gender_selector_click(2)
      sleep 1
      @driver.bbc_registration_page.email_update_click(1)
      sleep 1
      @driver.bbc_registration_page.submit_button
      sleep 1
      @driver.bbc_registration_page.submit_registration
      sleep 1
      expect(@driver.bbc_homepage.sign_in_text).to eq 'Your account'
      sleep 1
    end

  end

end
