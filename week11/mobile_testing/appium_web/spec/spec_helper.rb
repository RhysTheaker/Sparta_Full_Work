require 'appium_lib'
require 'rspec'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.formatter = "documentation"
end


def opts
  {
  caps: {
    "platformName": "Android",
    "deviceName": "emulator-5554",
    "browserName": "Chrome"
  }
}
end
