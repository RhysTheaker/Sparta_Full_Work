require_relative 'services/bbc_homepage'
require_relative 'services/bbc_login_page'
require_relative 'services/bbc_account_page'
require_relative 'services/bbc_registration_page'
require_relative 'services/ten_min_mail'
require 'selenium-webdriver'

class BBCSite

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def bbc_homepage
    BBCHomepage.new @driver
  end

  def bbc_login_page
    BBCLoginPage.new @driver
  end

  def bbc_account_page
    BBCAccountPage.new @driver
  end

  def bbc_registration_page
    BBCRegistrationPage.new @driver
  end

  def ten_min_mail
    TenMinMail.new @driver
  end

end
