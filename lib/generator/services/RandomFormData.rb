require 'faker'

class RandomFormData
  include Faker
  def first_name
    Name.first_name
  end

  def last_name
    Name.last_name
  end
end