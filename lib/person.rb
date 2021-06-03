class Person
  attr_reader :name,
              :experience,
              :specialties

  def initialize(name, experience)
    @name        = name
    @experience  = experience
    @specialties = []
  end

  def add_specialty(specialty_field)
    @specialties << specialty_field
  end

end
