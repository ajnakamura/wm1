require 'rails'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_driver = :selenium
Capybara.default_wait_time = 5

Capybara.configure do |capybara|
  Capybara.register_driver :selenium_ff do |app|
     Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  capybara.default_driver= :selenium_ff
  capybara.run_server = false
end


