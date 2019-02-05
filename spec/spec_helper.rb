require 'selenium-webdriver'
require_relative '../lib/QAToolsForm'
require_relative '../lib/generator/Generator'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end