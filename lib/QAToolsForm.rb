require 'selenium-webdriver'

class QaToolsForm
  #page objects
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  DATE_FIELD_NAME = 'datepicker'
  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_date_field(date)
    @chrome_driver.find_element(:id, DATE_FIELD_NAME).send_keys(date)
  end

  def input_date_field_value
    @chrome_driver.find_element(:id, DATE_FIELD_NAME)['value']
  end


  def current_url
    @chrome_driver.current_url
  end
end