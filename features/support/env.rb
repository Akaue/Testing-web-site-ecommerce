require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 10)
end


Capybara.configure do |config|
  config.default_driver =   :selenium_chrome_headless
  config.app_host =  "http://automationpractice.com"
  # config.default_max_wait_time = 10
end
