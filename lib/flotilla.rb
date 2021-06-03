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

  def add_personnel(employee)
    @personnel << employee
  end

  def recommend_personnel(spacecraft)
    # recommend persons that match the ships requirents
    # a match has a specialty AND experience >= requirement
    recommended_for_spacecraft = []

    person_specialties = { @personnel.map { |person, specialties| }

    ship_specialties = @ships.map { |ship| ship.requirements }
require 'pry'; binding.pry
    # @personnel.each do |person|
    #   if person.specialties.include?(@ships.requirements)
    #   end
    #   recommended_for_spacecraft << person
    #
    # end

  end
end
