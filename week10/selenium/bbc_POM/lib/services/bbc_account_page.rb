require 'selenium-webdriver'

class BBCAccountPage

  attr_accessor :driver

  def initialize driver
    @driver = driver
  end

  def sign_out
    @driver.find_element(:link_text, 'Sign out').click
  end

end
