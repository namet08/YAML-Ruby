require "capybara"
require "capybara/cucumber"
require "rspec"
require "rufo"
require 'allure-cucumber'
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.default_max_wait_time = 10
  config.app_host = "https://www.saucedemo.com"
end

AllureCucumber.configure do |config|
  config.results_directory = '/logs'
  config.clean_results_directory = true
end