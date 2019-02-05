require 'spec_helper'

describe 'testing random form data' do 
  before(:all) do
    @random_form_data = Generator.new.form_data
  end

  it 'should return a string for the first name' do 
    expect(@random_form_data.first_name).to be_kind_of(String)
  end
  
  it 'should return a string for the last name' do 
    expect(@random_form_data.last_name).to be_kind_of(String)
  end

  it 'should return a string for the date' do 
    expect(@random_form_data.date).to be_kind_of(Date)
  end 
end