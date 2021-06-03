require 'rspec'
require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

describe Flotilla do
  it 'exists and has attributes' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_an(Flotilla)
    expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    expect(seventh_flotilla.personnel).to eq([])
    expect(seventh_flotilla.ships).to eq([])
  end

  it 'adds ship to designation' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    craft_daed = {
      name: 'Daedalus',
      fuel: 400
    }

    daedalus = Spacecraft.new(craft_daed)

    seventh_flotilla.add_ship(daedalus)

    expect(seventh_flotilla.ships).to eq([daedalus])
  end

  it 'adds personnel to designation' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    kathy = Person.new('Kathy Chan', 10)
    kathy.add_specialty(:astrophysics)
    kathy.add_specialty(:quantum_mechanics)

    polly = Person.new('Polly Parker', 8)
    polly.add_specialty(:operations)
    polly.add_specialty(:maintenance)

    rover = Person.new('Rover Henriette', 1)
    rover.add_specialty(:operations)
    rover.add_specialty(:maintenance)

    sampson = Person.new('Sampson Edwards', 7)
    sampson.add_specialty(:astrophysics)
    sampson.add_specialty(:quantum_mechanics)

    seventh_flotilla.add_personnel(kathy)
    seventh_flotilla.add_personnel(polly)
    seventh_flotilla.add_personnel(rover)
    seventh_flotilla.add_personnel(sampson)

    employees = [kathy, polly, rover, sampson]

    expect(seventh_flotilla.personnel).to eq(employees)
  end

  it 'recommends personnel for specific spacecrafts' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    kathy = Person.new('Kathy Chan', 10)
    kathy.add_specialty(:astrophysics)
    kathy.add_specialty(:quantum_mechanics)

    polly = Person.new('Polly Parker', 8)
    polly.add_specialty(:operations)
    polly.add_specialty(:maintenance)

    rover = Person.new('Rover Henriette', 1)
    rover.add_specialty(:operations)
    rover.add_specialty(:maintenance)

    sampson = Person.new('Sampson Edwards', 7)
    sampson.add_specialty(:astrophysics)
    sampson.add_specialty(:quantum_mechanics)

    seventh_flotilla.add_personnel(kathy)
    seventh_flotilla.add_personnel(polly)
    seventh_flotilla.add_personnel(rover)
    seventh_flotilla.add_personnel(sampson)

    craft_daed = {
      name: 'Daedalus',
      fuel: 400
    }

    daedalus = Spacecraft.new(craft_daed)

    req_1 = {astrophysics: 6}
    req_2 = {quantum_mechanics: 3}

    daedalus.add_requirement(req_1)
    daedalus.add_requirement(req_2)

    recommend_daedalus = [kathy, sampson]

    expect(seventh_flotilla.recommend_personnel(daedalus)).to eq(recommend_daedalus)

    odyssey = Spacecraft.new({name: 'Odyssey', fuel: 300})
    odyssey.add_requirement({operations: 6})
    odyssey.add_requirement({maintenance: 3})

    recommend_odyssey = [polly]

    expect(seventh_flotilla.recommend_personnel(odyssey)).to eq(recommend_odyssey)
  end
end
