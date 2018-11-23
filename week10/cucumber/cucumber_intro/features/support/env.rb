require 'capybara/cucumber'
require 'rspec'

# require the super class
require_relative '../lib/bbc_site'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  # max time in seconds for page load
  config.default_max_wait_time = 10
  # set chrome as default browser
  config.default_driver = :chrome
end

World(BBCSite)
