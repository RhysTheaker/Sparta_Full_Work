require 'capybara/dsl'

class BBCLoginPage
  include Capybara::DSL

  USERNAME_ERROR_MESSAGE = '#form-message-username'
  PASSWORD_ERROR_MESSAGE = '#form-message-password'

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SIGN_IN_BTN_ID = 'submit-button'

  def input_user user
    fill_in('user-identifier-input', with: user)
  end

  def input_password password
    fill_in('password-input', with: password)
  end

  def click_log_in
    click_button('submit-button')
  end

  def username_error_text
    find(USERNAME_ERROR_MESSAGE).text
  end

  def password_error_text
    find(PASSWORD_ERROR_MESSAGE).text
  end

end
