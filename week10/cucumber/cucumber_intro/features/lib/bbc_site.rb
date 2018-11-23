require_relative 'services/bbc_homepage.rb'
require_relative 'services/bbc_login_page.rb'

module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_login_page
    BBCLoginPage.new
  end

end
