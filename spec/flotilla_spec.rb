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
end
