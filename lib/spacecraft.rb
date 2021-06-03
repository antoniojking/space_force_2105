class Spacecraft
  attr_reader :name,
              :fuel,
              :requirements

  def initialize(spacecraft_data)
    @name         = spacecraft_data[:name]
    @fuel         = spacecraft_data[:fuel]
    @requirements = []
  end

  def add_requirement(expert_req)
    @requirements << expert_req
  end
end
