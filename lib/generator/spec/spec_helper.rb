require 'httparty'
require 'json'
require 'faker'
require_relative '../Generator'

RSpec.configure do |config|
  config.formatter = :documentation
  config.color = true
end