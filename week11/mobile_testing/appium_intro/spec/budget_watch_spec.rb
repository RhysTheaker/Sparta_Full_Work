require 'spec_helper'

describe 'Testing budget watch app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it 'should open the app to the homepage' do
    expect(find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it 'should have the budget option on the main landing page' do
   pending
 end

 it 'should access the budget page' do
   pending
 end

 it 'should be able to add a budget' do
   pending
 end

end
