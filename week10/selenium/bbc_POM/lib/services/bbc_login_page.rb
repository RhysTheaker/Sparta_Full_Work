require 'selenium-webdriver'

class BBCLoginPage

  attr_accessor :driver

  USERNAME_ERROR_MESSAGE = 'form-message-username'
  PASSWORD_ERROR_MESSAGE = 'form-message-password'

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BTN_ID = 'submit-button'

  def initialize driver
    @driver = driver
  end

  def input_username username
    @driver.find_element(:id, USERNAME_FIELD).send_keys(username)
  end

  def input_password password
    @driver.find_element(:id, PASSWORD_FIELD).send_keys(password)
  end

  def click_log_in
    @driver.find_element(:id, SIGN_IN_BTN_ID).click
  end

  def username_error_text
    @driver.find_element(:id, USERNAME_ERROR_MESSAGE).text
  end

  def password_error_text
    @driver.find_element(:id, PASSWORD_ERROR_MESSAGE).text
  end

end
