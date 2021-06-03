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
end
