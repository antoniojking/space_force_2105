require 'rspec'
require './lib/spacecraft'

describe Spacecraft do
  it 'exists and has attributes' do
    craft_daed = {
      name: 'Daedalus',
      fuel: 400
    }

    daedalus = Spacecraft.new(craft_daed)

    expect(daedalus).to be_an(Spacecraft)
    expect(daedalus.name).to eq('Daedalus')
    expect(daedalus.fuel).to eq(400)
    expect(daedalus.requirements).to eq([])
  end

  it 'adds requirements to spacecraft' do
    craft_daed = {
      name: 'Daedalus',
      fuel: 400
    }

    daedalus = Spacecraft.new(craft_daed)

    req_1 = {astrophysics: 6}
    req_2 = {quantum_mechanics: 3}

    daedalus.add_requirement(req_1)
    daedalus.add_requirement(req_2)

    expect(daedalus.requirements).to eq([req_1, req_2])
  end
end
