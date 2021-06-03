require 'rspec'
require './lib/person'

describe Person do
  it 'exists and has attributes' do
    kathy = Person.new('Kathy Chan', 10)

    expect(kathy).to be_an(Person)
    expect(kathy.name).to eq('Kathy Chan')
    expect(kathy.experience).to eq(10)
    expect(kathy.specialties).to eq([])
  end
end
