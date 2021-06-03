require 'rspec'
require './lib/spacecraft'

descibe Spacecraft do
  it 'exists and has attributes' do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    expect(daedalus).to be_an(Spacecraft)
    expect(daedalus.name).to eq('Daedalus')
    expect(daedalus.fuel).to eq(400)
  end
end
