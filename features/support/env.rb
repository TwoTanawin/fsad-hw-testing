require 'cucumber/rails'
require 'factory_bot'
require 'database_cleaner/active_record'
require 'devise'
require 'selenium-webdriver'


World(FactoryBot::Syntax::Methods)

ActionController::Base.allow_rescue = false

# Database Cleaner setup
DatabaseCleaner.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
Capybara.default_driver = :selenium_chrome_headless

