require 'spec_helper'

describe 'testing the demoqa automation form' do 
  before(:all) do
  @driver = QaToolsForm.new
  @driver.visit_practice_form
  @first_name = Generator.new.form_data.first_name
  @last_name = Generator.new.form_data.last_name
  @date = Generator.new.form_data.date.to_s
  @url = 'https://www.toolsqa.com/automation-practice-form/'
  end

  context 'testing the postive pass for the form' do

    it 'should land on the registrationg demo form page' do
      expect(@driver.current_url).to eq @url
    end 

    it 'should accept a first name' do
      @driver.input_firstname_field(@first_name)
      expect(@driver.input_firstname_field_value).to eql @first_name
    end

    it 'should accept a last name' do
      @driver.input_lastname_field(@last_name)
      expect(@driver.input_lastname_field_value).to eql @last_name
    end

    it 'should accept a date' do
      @driver.input_date_field(@date)
      expect(@driver.input_date_field_value).to eql @date
    end

    it 'should select a sex' do
      number = rand(0..1)
      @driver.input_sex(number)
      expect(@driver.input_sex_checked(number)).to be_truthy
    end

    it 'should select a year of experience' do
      number = rand(0..6)
      @driver.input_year_experience(number)
      expect(@driver.input_year_experience_checked(number)).to be_truthy
    end
  end
end