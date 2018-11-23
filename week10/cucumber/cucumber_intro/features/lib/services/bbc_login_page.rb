require 'capybara/dsl'

class BBCLoginPage
  include Capybara::DSL

  attr_reader :matching_error_message, :missing_details_error

  USERNAME_ERROR_MESSAGE = '#form-message-username'
  PASSWORD_ERROR_MESSAGE = '#form-message-password'

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BTN_ID = 'submit-button'

  def initialize
    @matching_error_message = "Sorry, those details don't match. Check you've typed them correctly."

    @missing_details_error = "Something's missing. Please check and try again."
  end

  def input_user user
    fill_in(USERNAME_FIELD, with: user)
  end

  def input_password password
    fill_in(PASSWORD_FIELD, with: password)
  end

  def click_log_in
    click_button(SIGN_IN_BTN_ID)
  end

  def username_error_text
    find(USERNAME_ERROR_MESSAGE).text
  end

  def password_error_text
    find(PASSWORD_ERROR_MESSAGE).text
  end

end
