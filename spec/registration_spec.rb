require 'spec_helper'

describe 'testing the demoqa automation form' do 
  before(:all) do
  @driver = QaToolsForm.new
  @driver.visit_practice_form
  @first_name = Generator.new.form_data.first_name
  @last_name = Generator.new.form_data.last_name
  @url = 'https://www.toolsqa.com/automation-practice-form/'
  end

  context 'testing the postive pass for the form' do

    it 'should land on the registrationg demo form page' do
      expect(@driver.current_url).to eq @url
    end 

    it 'should accept a first name' do
      @driver.input_firstname_field(@name)
      expect(@driver.input_firstname_field_value).to eql @name
    end

    it 'should accept a last name' do
      @driver.input_firstname_field(@name)
      expect(@driver.input_lastname_field_value).to eql @name
    end
  end
end