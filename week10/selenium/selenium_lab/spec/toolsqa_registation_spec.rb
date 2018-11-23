require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field("Rhys")
      expect(@driver.get_first_name_field_value).to eq "Rhys"
      sleep 1
    end

    it "should display the first name field" do
      expect(@driver.first_name_field_displayed).to be true
      sleep 1
    end

    it 'should accept a last name' do
      @driver.set_last_name_field("Theaker")
      expect(@driver.get_last_name_field_value).to eq "Theaker"
      sleep 1
    end

    it "should display the last name field" do
      expect(@driver.last_name_field_displayed).to be true
      sleep 1
    end

    it "should have the male radio button clicked" do
      @driver.gender_btn_click(0)
      expect(@driver.gender_btn_check(0)).to be true
      sleep 1
    end

    it "should have the female radio button clicked" do
      @driver.gender_btn_click(1)
      expect(@driver.gender_btn_check(1)).to be true
      sleep 1
    end

    it "should have the one years experience button clicked" do
      @driver.years_exp_btn_click(0)
      expect(@driver.years_exp_btn_check(0)).to be true
      sleep 1
    end

    it "should have the two years experience button clicked" do
      @driver.years_exp_btn_click(1)
      expect(@driver.years_exp_btn_check(1)).to be true
      sleep 1
    end

    it "should have the three years experience button clicked" do
      @driver.years_exp_btn_click(2)
      expect(@driver.years_exp_btn_check(2)).to be true
      sleep 1
    end

    it "should have the four years experience button clicked" do
      @driver.years_exp_btn_click(3)
      expect(@driver.years_exp_btn_check(3)).to be true
      sleep 1
    end

    it "should have the five years experience button clicked" do
      @driver.years_exp_btn_click(4)
      expect(@driver.years_exp_btn_check(4)).to be true
      sleep 1
    end

    it "should have the six years experience button clicked" do
      @driver.years_exp_btn_click(5)
      expect(@driver.years_exp_btn_check(5)).to be true
      sleep 1
    end

    it "should have the seven years experience button clicked" do
      @driver.years_exp_btn_click(6)
      expect(@driver.years_exp_btn_check(6)).to be true
      sleep 1
    end

    it "should accept a date" do
      @driver.set_date_field("11/11/2018")
      expect(@driver.get_date_field_value).to eq "11/11/2018"
      sleep 1
    end

    it "should display the date field" do
      expect(@driver.date_field_displayed).to be true
      sleep 1
    end

    it "should have the manual tester profession button clicked" do
      @driver.profession_btn_click(0)
      expect(@driver.profession_btn_check(0)).to be true
      sleep 1
    end

    it "should have the automation tester profession button clicked" do
      @driver.profession_btn_click(1)
      expect(@driver.profession_btn_check(1)).to be true
      sleep 1
    end

    it "should have the QTP button clicked" do
      @driver.automation_tool_btn_click(0)
      expect(@driver.automation_tool_btn_check(0)).to be true
      sleep 1
    end

    it "should have the Selenium IDE button clicked" do
      @driver.automation_tool_btn_click(1)
      expect(@driver.automation_tool_btn_check(1)).to be true
      sleep 1
    end

    it "should have the Selenium Webdriver button clicked" do
      @driver.automation_tool_btn_click(2)
      expect(@driver.automation_tool_btn_check(2)).to be true
      sleep 1
    end

    it "should select the continent: Asia" do
      @driver.continent_btn_click(0)
      sleep 1
      expect(@driver.continent_btn_check(0)).to be true
    end

    it "should select the continent: Europe" do
      @driver.continent_btn_click(1)
      sleep 1
      expect(@driver.continent_btn_check(1)).to be true
    end

    it "should select the continent: Africa" do
      @driver.continent_btn_click(2)
      sleep 1
      expect(@driver.continent_btn_check(2)).to be true
    end

    it "should select the continent: Australia" do
      @driver.continent_btn_click(3)
      sleep 1
      expect(@driver.continent_btn_check(3)).to be true
    end

    it "should select the continent: South America" do
      @driver.continent_btn_click(4)
      sleep 1
      expect(@driver.continent_btn_check(4)).to be true
    end

    it "should select the continent: North America" do
      @driver.continent_btn_click(5)
      sleep 1
      expect(@driver.continent_btn_check(5)).to be true
    end

    it "should select the continent: Antartica" do
      @driver.continent_btn_click(6)
      sleep 1
      expect(@driver.continent_btn_check(6)).to be true
    end

    it "should select the selenium command: Browser Commands" do
      @driver.command_btn_click(0)
      sleep 1
      expect(@driver.command_btn_check(0)).to be true
    end

    it "should select the selenium command: Navigation Commands" do
      @driver.command_btn_click(1)
      sleep 1
      expect(@driver.command_btn_check(1)).to be true
    end

    it "should select the selenium command: Switch Commands" do
      @driver.command_btn_click(2)
      sleep 1
      expect(@driver.command_btn_check(2)).to be true
    end

    it "should select the selenium command: Wait Commands" do
      @driver.command_btn_click(3)
      sleep 1
      expect(@driver.command_btn_check(3)).to be true
    end

    it "should select the selenium command: WebElement Commands" do
      @driver.command_btn_click(4)
      sleep 1
      expect(@driver.command_btn_check(4)).to be true
    end

  end

end
