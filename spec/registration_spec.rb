require 'spec_helper'

describe 'testing the demoqa automation form' do 
  before(:all) do
  @driver = QaToolsForm.new
  @driver.visit_practice_form
  @url = 'https://www.toolsqa.com/automation-practice-form/'
  end

  context 'testing the postive pass for the form' do

    it 'should land on the registrationg demo form page' do
      expect(@driver.current_url).to eq @url
    end 
  end
end