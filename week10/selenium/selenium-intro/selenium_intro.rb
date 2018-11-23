require 'selenium-webdriver'

chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://www.toolsqa.com/automation-practice-form/')

sleep 2

chrome_driver.find_elements(:partial_link_text, 'Link Test')[0].click

sleep 2

if chrome_driver.find_element(:name, 'firstname').displayed?
  chrome_driver.find_element(:name, 'firstname').send_keys('Rob')
  sleep 2
end
