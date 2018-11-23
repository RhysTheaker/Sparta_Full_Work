require_relative 'services/bbc_homepage'
require_relative 'services/bbc_login_page'
require_relative 'services/bbc_registration_page'

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_login_page
    BBCLoginPage.new
  end

  def bbc_registration_page
    BBCRegistrationPage.new
  end

end
