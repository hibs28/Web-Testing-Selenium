require 'selenium-webdriver'

class QaToolsForm
  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end
  
end