require_relative '../lib/place.rb'

describe 'place' do

  let(:x_coord) { 0 }
  let(:y_coord) { 0 }
  let(:initial_direction) { 'NORTH' }

  subject { Place.new(x_coord, y_coord, initial_direction) }

  it 'should take coordinates and direction' do
    expect(subject).to be_an_instance_of(Place)
  end

end