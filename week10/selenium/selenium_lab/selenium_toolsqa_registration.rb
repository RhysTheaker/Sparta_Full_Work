require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'
  # Page field
  FIRST_NAME_FIELD =  'firstname'
  LAST_NAME_FIELD =  'lastname'
  GENDER_RADIO_BTN_NAME = 'sex'
  YEARS_EXP_BTN_NAME = 'exp'
  SET_DATE_FIELD = 'datepicker'
  PROFESSION_BTN_NAME = 'profession'
  AUTOMATION_BTN_NAME = 'tool'
  CONTINENTS_BTN_NAME = 'continents'
  CONTINENTS_TAG_NAME = 'option'
  COMMANDS_BTN_NAME = 'selenium_commands'
  COMMANDS_TAG_NAME = 'option'

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD)[:value]
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).displayed?
  end

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD)[:value]
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).displayed?
  end

  # registration confirmation - Difficulty Easy

  def gender_btn_click array_num
    @chrome_driver.find_elements(:name, GENDER_RADIO_BTN_NAME)[array_num].click
  end

  def gender_btn_check array_num
    @chrome_driver.find_elements(:name, GENDER_RADIO_BTN_NAME)[array_num].selected?
  end

  def years_exp_btn_click array_num
    @chrome_driver.find_elements(:name, YEARS_EXP_BTN_NAME)[array_num].click
  end

  def years_exp_btn_check array_num
    @chrome_driver.find_elements(:name, YEARS_EXP_BTN_NAME)[array_num].selected?
  end

  def set_date_field date
    @chrome_driver.find_element(:id, SET_DATE_FIELD).send_keys(date)
  end

  def get_date_field_value
    @chrome_driver.find_element(:id, SET_DATE_FIELD)[:value]
  end

  def date_field_displayed
    @chrome_driver.find_element(:id, SET_DATE_FIELD).displayed?
  end

  def profession_btn_click array_num
    @chrome_driver.find_elements(:name, PROFESSION_BTN_NAME)[array_num].click
  end

  def profession_btn_check array_num
    @chrome_driver.find_elements(:name, PROFESSION_BTN_NAME)[array_num].selected?
  end

  def automation_tool_btn_click array_num
    @chrome_driver.find_elements(:name, AUTOMATION_BTN_NAME)[array_num].click
  end

  def automation_tool_btn_check array_num
    @chrome_driver.find_elements(:name, AUTOMATION_BTN_NAME)[array_num].selected?
  end

  def continent_btn_click array_num
    # get select element
    btn_select = @chrome_driver.find_element(:id, CONTINENTS_BTN_NAME)
    # click individual option for the select element
    each = btn_select.find_elements(:tag_name, CONTINENTS_TAG_NAME)[array_num].click
  end

  def continent_btn_check array_num
    # get select element
    btn_select = @chrome_driver.find_element(:id, CONTINENTS_BTN_NAME)
    # check if the individual option has been selected from the element
    each = btn_select.find_elements(:tag_name, CONTINENTS_TAG_NAME)[array_num].selected?
  end

  def command_btn_click array_num
    # get select element
    btn_select = @chrome_driver.find_element(:id, COMMANDS_BTN_NAME)
    # click individual option for the select element
    each = btn_select.find_elements(:tag_name, COMMANDS_TAG_NAME)[array_num].click
  end

  def command_btn_check array_num
    # get select element
    btn_select = @chrome_driver.find_element(:id, COMMANDS_BTN_NAME)
    # check if the individual option has been selected from the element
    each = btn_select.find_elements(:tag_name, COMMANDS_TAG_NAME)[array_num].selected?
  end
end
