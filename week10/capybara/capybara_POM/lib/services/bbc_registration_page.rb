require 'capybara/dsl'

class BBCRegistrationPage
  include Capybara::DSL

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

  def select_register
    click_link(REGISTER_BTN_TEXT)
  end

  def select_over_thirteen
    click_button(THIRTEEN_OR_OVER)
  end


end
