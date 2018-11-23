require 'selenium-webdriver'

class SeleniumQAToolsForm

  PAGE_URL = 'http://www.toolsqa.com/automation-practice-form/'

  FIRST_NAME_FIELD = 'firstname'

  LAST_NAME_FIELD = 'lastname'

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def visit_page
    @driver.get(PAGE_URL)
  end

  def input_first_name
    @driver.find_element(:name, FIRST_NAME_FIELD).send_keys(name)
  end

  def input_last_name
    @driver.find_element(:name, LAST_NAME_FIELD).send_keys(name)
  end

  def find_text
    @driver.find_element(:class, 'bcd').text
  end

end

x = SeleniumQAToolsForm.new
x.visit_page
sleep 1
text = x.find_text
x.input_first_name text
x.input_last_name "test name"
