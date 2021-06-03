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
  end
end
