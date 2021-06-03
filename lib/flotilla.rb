class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(designation)
    @name      = designation[:designation]
    @personnel = []
    @ships     = []
  end

  def add_ship(spacecraft)
    @ships << spacecraft
  end 
end
