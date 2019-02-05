require_relative './service/random_form_generator'

class Generator
  def random_details
    RandomFormDataGenerator.new
  end
end