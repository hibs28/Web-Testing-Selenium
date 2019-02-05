require 'spec_helper'

describe 'testing the demoqa automation form' do 
  before(:all) do
  @driver = QaToolsForm.new
  @driver.visit_practice_form
  @name = Faker::HarryPotter.character
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
  end
end