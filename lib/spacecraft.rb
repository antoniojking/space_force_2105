class Spacecraft
  attr_reader :name,
              :fuel
              
  def initialize(spacecraft_data)
    @name = spacecraft_data[:name]
    @fuel = spacecraft_data[:fuel]
  end
end
