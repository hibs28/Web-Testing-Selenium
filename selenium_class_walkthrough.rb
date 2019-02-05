require 'selenium-webdriver'

class QaToolsForm
  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get('https://www.toolsqa.com/automation-practice-form/')
  end
end