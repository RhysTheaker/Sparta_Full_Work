require 'selenium-webdriver'

class BBCRegistrationPage

  attr_accessor :driver

  REGISTER_BTN_TEXT = 'Register now'
  SUBMIT_BTN = 'submit-button'
  DAY_MONTH_YEAR_MESSAGE = 'form-message__text'
  THIRTEEN_OR_OVER = '13 or over'
  DAY_INPUT = 'day-input'
  MONTH_INPUT = 'month-input'
  YEAR_INPUT = 'year-input'
  EMAIL_INPUT = 'user-identifier-input'
  PASSWORD_INPUT = 'password-input'
  POSTCODE_INPUT = 'postcode-input'
  GENDER_SELECT = 'gender-input'
  GENDER_TAG = 'option'
  EMAIL_UPDATE = 'button__text-wrapper'
  EMAIL_ERROR_TEXT = 'form-message-email'
  PASSWORD_ERROR_TEXT = 'form-message-password'
  POSTCODE_ERROR_TEXT = 'form-message-postcode'
  GENDER_ERROR_TEXT = 'form-message-gender'
  EMAIL_UPDATE_ERROR_TEXT = 'form-message-marketingOptIn'
  FINAL_REG_SUBMIT = 'button--full-width'

  def initialize driver
    @driver = driver
  end

  def click_register
    @driver.find_element(:link_text, REGISTER_BTN_TEXT).click
  end

  def thirteen_or_over_button
    @driver.find_element(:link_text, THIRTEEN_OR_OVER).click
  end

  def submit_button
    @driver.find_element(:id, SUBMIT_BTN).click
  end

  def day_month_year_error_text
    @driver.find_element(:class, DAY_MONTH_YEAR_MESSAGE).text
  end

  def day_input num
    @driver.find_element(:id, DAY_INPUT).send_keys(num)
  end

  def month_input num
    @driver.find_element(:id, MONTH_INPUT).send_keys(num)
  end

  def year_input num
    @driver.find_element(:id, YEAR_INPUT).send_keys(num)
  end

  def email_input string
    @driver.find_element(:id, EMAIL_INPUT).send_keys(string)
  end

  def password_input string
    @driver.find_element(:id, PASSWORD_INPUT).send_keys(string)
  end

  def postcode_input string
    @driver.find_element(:id, POSTCODE_INPUT).send_keys(string)
  end

  def gender_select
    s = @driver.find_element(:id, GENDER_SELECT)
    options = s.find_elements(:tag_name, GENDER_TAG)
    options.each do |option|
      puts option[:value]
    end
  end

  def gender_selector_click array_num
    s = @driver.find_element(:id, GENDER_SELECT)
    s.click
    options = s.find_elements(:tag_name, GENDER_TAG)
    options[array_num].click
  end

  def email_update_click array_num
    @driver.find_elements(:class, EMAIL_UPDATE)[array_num].click
  end

  def email_update_selected array_num
    @driver.find_elements(:class, EMAIL_UPDATE)[array_num].selected?
  end

  def password_error_text
    @driver.find_element(:id, PASSWORD_ERROR_TEXT).text
  end

  def postcode_error_text
    @driver.find_element(:id, POSTCODE_ERROR_TEXT).text
  end

  def gender_error_text
    @driver.find_element(:id, GENDER_ERROR_TEXT).text
  end

  def email_update_error_text
    @driver.find_element(:id, EMAIL_UPDATE_ERROR_TEXT).text
  end

  def submit_registration
    @driver.find_element(:class, FINAL_REG_SUBMIT).click
  end

end
