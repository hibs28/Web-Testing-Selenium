require 'selenium-webdriver'
require 'faker'
require_relative '../selenium_class_walkthrough'
require_relative '../lib/generator/generator'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end