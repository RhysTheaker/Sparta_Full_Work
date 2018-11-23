require 'selenium-webdriver'

class TenMinMail

  attr_accessor :driver

  EMAIL_ADDRESS = 'email-widget'
  HOMEPAGE_URL = 'https://www.guerrillamail.com/inbox'

  def initialize driver
    @driver = driver
  end

  def visit_homepage
    @driver.get(HOMEPAGE_URL)
  end

  def get_email
    @driver.find_element(:id, EMAIL_ADDRESS).text
  end

end
