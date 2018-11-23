require 'selenium-webdriver'

class BBCHomepage

  attr_accessor :driver

  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK = 'idcta-username'
  SIGN_IN_ID = 'idcta-link'

  def initialize driver
    @driver = driver
  end

  def visit_homepage
    @driver.get(HOMEPAGE_URL)
  end

  def sign_in_text
    @driver.find_element(:id, SIGN_IN_LINK).text
  end

  def click_sign_in
    @driver.find_element(:id, SIGN_IN_ID).click
  end

  def current_url
    @driver.current_url
  end

end
